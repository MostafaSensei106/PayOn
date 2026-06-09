import 'package:json_annotation/json_annotation.dart';

part 'get_notifications_reponse_body.g.dart';

@JsonSerializable()
class GetNotificationsReponseBody {
  GetNotificationsReponseBody({
    required this.code,
    required this.message,
    required this.errors,
    required this.success,
    this.data,
  });

  factory GetNotificationsReponseBody.fromJson(Map<String, dynamic> json) =>
      _$GetNotificationsReponseBodyFromJson(json);

  final int code;
  final String message;
  final dynamic data;
  final List<String> errors;
  final bool success;
}
