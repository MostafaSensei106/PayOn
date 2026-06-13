import '../../../logic/entities/register_entities.dart';
import 'create_account_response_body.dart';
import 'register_response_body.dart';

extension RegisterResponseBodyMapper on RegisterResponseBody {
  RegisterEntity toEntity() {
    return RegisterEntity(
      token: userData.token,
      accountId: userData.accountID,
      message: message,
    );
  }
}

extension CreateAccountResponseBodyMapper on CreateAccountResponseBody {
  CreateAccountEntity toEntity() {
    return CreateAccountEntity(message: message, data: data);
  }
}
