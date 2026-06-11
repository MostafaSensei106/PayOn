import 'package:json_annotation/json_annotation.dart';
import '../../../../login/data/models/user_data.dart';

part 'register_response_body.g.dart';

@JsonSerializable()
class RegisterResponseBody {
  const RegisterResponseBody({
    required this.code,
    required this.message,
    required this.userData,
    required this.success,
  });

  factory RegisterResponseBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseBodyFromJson(json);

  final int code;
  final String message;
  @JsonKey(name: 'data')
  final UserDataModel userData;
  final bool success;

  Map<String, dynamic> toJson() => _$RegisterResponseBodyToJson(this);
}
