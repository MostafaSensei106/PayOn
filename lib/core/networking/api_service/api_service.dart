import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../constants/api_routes.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiRoutes.apiBaseURL)
abstract class APIService {
  factory APIService(Dio dio, {String? baseUrl}) = _APIService;

  @POST(ApiRoutes.authLogin)
  Future<String> login();
}
