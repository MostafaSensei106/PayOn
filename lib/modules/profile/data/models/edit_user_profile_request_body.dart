import 'package:json_annotation/json_annotation.dart';

part 'edit_user_profile_request_body.g.dart';

@JsonSerializable()
class EditUserProfileRequestBody {
  EditUserProfileRequestBody({required this.name, required this.email});

  factory EditUserProfileRequestBody.fromJson(Map<String, dynamic> json) =>
      _$EditUserProfileRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$EditUserProfileRequestBodyToJson(this);

  final String name;
  final String email;
}
