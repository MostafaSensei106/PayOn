import 'dart:async';
import 'dart:io';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/types/type_def.dart' hide Success;
import '../../../get_started/data/models/register/create_account_request_body.dart';
import '../../../get_started/logic/use_cases/create_account_use_case.dart';
import '../../../get_started/logic/use_cases/get_required_files_use_case.dart';
import '../../../get_started/logic/use_cases/params/get_required_files_params.dart';
import '../../../get_started/logic/use_cases/upload_kyc_files_use_case.dart';
import '../../../profile/logic/entity/user_profile_entity.dart';
import '../entity/params/get_transactions_params.dart';
import '../entitys/params/get_wallet_params.dart';
import '../usecase/get_transactions_usecase.dart';
import '../usecase/get_wallets_usecase.dart';
import 'home_state.dart';

@lazySingleton
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this._getWalletsU,
    this._getTransactionsU,
    this._createAccountUseCase,
    this._getRequiredFilesUseCase,
    this._uploadKycFilesUseCase,
  ) : super(const HomeState.initial());

  final GetWalletsUsecase _getWalletsU;
  final GetTransactionsUsecase _getTransactionsU;
  final CreateAccountUseCase _createAccountUseCase;
  final GetRequiredFilesUseCase _getRequiredFilesUseCase;
  final UploadKycFilesUseCase _uploadKycFilesUseCase;

  Future<void> getWallets() async {
    emit(const HomeState.loading());
    final response = await _getWalletsU.call(const GetWalletParams());

    response.when(
      success: (t) {
        emit(HomeState.success(wallets: t, isTransactionsLoading: true));
        unawaited(getLatestTransactions());
      },
      failure: (e) => emit(HomeState.failure(message: e.message)),
    );
  }

  Future<void> getLatestTransactions() async {
    final currentState = state;
    if (currentState is! Success) return;

    emit(currentState.copyWith(isTransactionsLoading: true));

    final response = await _getTransactionsU.call(
      currentState.transactionFilters,
    );

    if (state is! Success) return;

    response.when(
      success: (t) => emit(
        (state as Success).copyWith(
          isTransactionsLoading: false,
          transactions: t.data.items,
        ),
      ),
      failure: (e) =>
          emit((state as Success).copyWith(isTransactionsLoading: false)),
    );
  }

  void applyTransactionFilters(GetTransactionsParams filters) {
    final currentState = state;
    if (currentState is! Success) return;

    emit(currentState.copyWith(transactionFilters: filters));
    unawaited(getLatestTransactions());
  }

  Future<String?> createAccount({
    required int accountTypeId,
    required String address,
    required UserProfileEntity profile,
  }) async {
    final body = CreateAccountRequestBody(
      accountTypeId: accountTypeId,
      address: address,
      email: profile.email,
      name: profile.name,
      phoneNumber: profile.phone,
      nationalId: profile.nationalId,
      birthDate: profile.birthData,
    );

    final result = await _createAccountUseCase(body);

    return result.fold(
      onSuccess: (data) async {
        final currentState = state;
        if (currentState is Success) {
          emit(currentState.copyWith(newAccountId: data.accountId));
        }
        await getRequiredFiles(accountTypeId);
        return data.accountId;
      },
      onFailure: (error) {
        emit(HomeState.failure(message: error.message));
        return null;
      },
    );
  }

  Future<void> getRequiredFiles(int accountTypeId) async {
    final currentState = state;
    if (currentState is! Success) return;

    emit(currentState.copyWith(isTransactionsLoading: true));
    final result = await _getRequiredFilesUseCase(
      GetRequiredFilesParams(accountTypeId: accountTypeId),
    );

    result.fold(
      onSuccess: (data) {
        emit(
          (state as Success).copyWith(
            requiredFiles: data,
            isTransactionsLoading: false,
          ),
        );
      },
      onFailure: (error) {
        emit(HomeState.failure(message: error.message));
      },
    );
  }

  void updateKycFile(int docId, File file) {
    final currentState = state;
    if (currentState is! Success) return;

    final updatedFiles = Map<int, File>.from(currentState.kycFiles)
      ..[docId] = file;
    emit(currentState.copyWith(kycFiles: updatedFiles));
  }

  Future<bool> uploadKYCFiles() async {
    final currentState = state;
    if (currentState is! Success || currentState.newAccountId == null) {
      return false;
    }

    emit(currentState.copyWith(isUploading: true));

    final result = await _uploadKycFilesUseCase(
      UploadKycFilesParams(
        accId: currentState.newAccountId!,
        files: currentState.kycFiles,
      ),
    );

    return result.fold(
      onSuccess: (_) {
        emit(
          (state as Success).copyWith(
            isUploading: false,
            kycFiles: {},
            newAccountId: null,
          ),
        );
        return true;
      },
      onFailure: (error) {
        emit(HomeState.failure(message: error.message));
        return false;
      },
    );
  }
}
