import 'package:json_annotation/json_annotation.dart';

part 'create_account_request_body.g.dart';

@JsonSerializable()
class CreateAccountRequestBody {
  const CreateAccountRequestBody({
    required this.accountTypeId,
    this.latitude,
    this.longitude,
    this.categoryId,
  });

  factory CreateAccountRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountRequestBodyFromJson(json);

  final int accountTypeId;
  final double? latitude;
  final double? longitude;
  final int? categoryId;

  Map<String, dynamic> toJson() => _$CreateAccountRequestBodyToJson(this);
}
