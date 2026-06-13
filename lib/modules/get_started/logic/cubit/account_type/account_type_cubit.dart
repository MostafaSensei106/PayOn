import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/utils/result/result.dart';
import '../../../../../core/utils/use_case/base_use_case.dart';
import '../../entities/account_type_entity.dart';
import '../../use_cases/get_account_types_use_case.dart';
import 'account_type_state.dart';

@injectable
class AccountTypeCubit extends Cubit<AccountTypeState<AccountTypeEntity>> {
  AccountTypeCubit(this._getAccountTypesUseCase)
    : super(const AccountTypeState.initial());

  final GetAccountTypesUseCase _getAccountTypesUseCase;

  Future<void> getAccountTypes() async {
    emit(const AccountTypeState.loading());
    final result = await _getAccountTypesUseCase(const NoParams());
    result.fold(
      onSuccess: (data) => emit(AccountTypeState.success(data: data)),
      onFailure: (error) => emit(AccountTypeState.failure(error: error.message)),
    );
  }
}

