import 'package:json_annotation/json_annotation.dart';

part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  const RegisterRequestBody({
    required this.email,
    required this.phoneNumber,
    required this.name,
    required this.birthDate,
    required this.gender,
    required this.password,
    required this.isPhone,
    required this.nationalityCode,
    required this.country,
    required this.cityId,
    this.referralCode,
  });

  factory RegisterRequestBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestBodyFromJson(json);

  final String email;
  final String phoneNumber;
  final String name;
  final String birthDate;
  final String gender;
  final String password;
  final bool isPhone;
  final int nationalityCode;
  final int country;
  final int cityId;
  final String? referralCode;

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}
