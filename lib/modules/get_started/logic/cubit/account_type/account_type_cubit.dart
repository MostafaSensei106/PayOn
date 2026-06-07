import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/types/type_def.dart';
import '../../../data/models/account_type/account_type_response_body.dart';
import '../../../data/repositories/account_type/base_account_type_repository.dart';
import 'account_type_state.dart';

class AccountTypeCubit
    extends Cubit<AccountTypeState<AccountTypeResponseBody>> {
  AccountTypeCubit(this._accountTypeRepository)
    : super(const AccountTypeState.initial());

  final BaseAccountTypeRepository _accountTypeRepository;

  Future<void> getAccountTypes() async {
    emit(const AccountTypeState.loading());
    final response = await _accountTypeRepository.getAccountTypes();
    response.when(
      success: (r) => emit(AccountTypeState.success(data: r)),
      failure: (e) => emit(AccountTypeState.failure(error: e.message)),
    );
  }
}
