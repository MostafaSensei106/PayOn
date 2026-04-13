import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_result/api_result.dart';
import '../../data/repositories/base_register_repository.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

final class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this._registerRepository)
    : super(const RegisterState.initial());

  final BaseRegisterRepository _registerRepository;

  Future<void> getAccountTypes() async {
    emit(const RegisterState.loading());
    final response = await _registerRepository.getAccountTypes();
    response.when(
      success: (r) async {
        emit(RegisterState.success(data: r));
      },
      failure: (err) => emit(
        RegisterState.failure(error: err.failure.message ?? 'Unknown Error'),
      ),
    );
  }
}
