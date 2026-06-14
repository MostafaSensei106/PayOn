import 'package:json_annotation/json_annotation.dart';

part 'create_account_request_body.g.dart';

@JsonSerializable()
class CreateAccountRequestBody {
  const CreateAccountRequestBody({
    required this.accountTypeId,
    required this.address,
    required this.email,
    required this.name,
    required this.phoneNumber,
    required this.nationalId,
    required this.birthDate,
    this.latitude,
    this.longitude,
  });

  factory CreateAccountRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountRequestBodyFromJson(json);

  final int accountTypeId;
  final String address;
  final String email;
  final String name;
  final String phoneNumber;
  final String nationalId;
  final String birthDate;
  final double? latitude;
  final double? longitude;

  Map<String, dynamic> toJson() => _$CreateAccountRequestBodyToJson(this);
}
