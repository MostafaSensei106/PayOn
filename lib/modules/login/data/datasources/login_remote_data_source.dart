import '../models/user_model.dart';

abstract class LoginRemoteDataSource {
  Future<UserModel> login(final String email, final String password);
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  @override
  Future<UserModel> login(final String email, final String password) async {
    throw UnimplementedError();
  }
}
