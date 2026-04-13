import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../modules/get_started/data/models/account_type_response_body.dart';
import '../../../modules/login/data/models/login_request_body.dart';
import '../../../modules/login/data/models/login_response_body.dart';
import '../../constants/api_routes.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiRoutes.apiBaseURL)
abstract class APIService {
  factory APIService(Dio dio, {String? baseUrl}) = _APIService;

  @POST(ApiRoutes.authLogin)
  Future<LoginResponseBody> login(@Body() LoginRequestBody body);

  @GET(ApiRoutes.accountGetAccountTypes)
  Future<AccountTypeResponseBody> getAccountTypes();
}
