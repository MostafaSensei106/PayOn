import 'package:json_annotation/json_annotation.dart';

part 'create_account_response_body.g.dart';

@JsonSerializable()
class CreateAccountResponseBody {
  const CreateAccountResponseBody({
    required this.code,
    required this.message,
    required this.success,
    this.data,
  });

  factory CreateAccountResponseBody.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountResponseBodyFromJson(json);

  final int code;
  final String message;
  final bool success;
  final dynamic data;

  Map<String, dynamic> toJson() => _$CreateAccountResponseBodyToJson(this);
}
