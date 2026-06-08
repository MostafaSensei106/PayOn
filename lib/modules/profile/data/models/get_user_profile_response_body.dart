import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../logic/entity/user_profile_entity.dart';

part 'get_user_profile_response_body.g.dart';

@JsonSerializable()
class GetUserProfileResponseBody {
  const GetUserProfileResponseBody({
    required this.code,
    required this.message,
    required this.data,
    required this.success,
    required this.errors,
  });

  factory GetUserProfileResponseBody.fromJson(Map<String, dynamic> json) =>
      _$GetUserProfileResponseBodyFromJson(json);

  final int code;
  final String message;
  final UserProfileDataModel data;
  final bool success;
  final List<String> errors;
}

@JsonSerializable()
class UserProfileDataModel {
  const UserProfileDataModel({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.imageUrl,
    required this.nationalId,
    required this.birthDate,
    required this.ipa,
    required this.gender,
    required this.phoneVerified,
    required this.emailVerified,
    required this.state,
    required this.roles,
    required this.category,
    required this.mobileCategory,
  });

  factory UserProfileDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDataModelFromJson(json);

  final String name;
  final String email;
  final String phoneNumber;
  final String? imageUrl;
  final String nationalId;
  final String birthDate;
  final String ipa;
  final String gender;
  final bool phoneVerified;
  final bool emailVerified;
  final String state;
  final List<String> roles;
  final String category;
  final String mobileCategory;
}

extension GetUserProfileResponseMapper on GetUserProfileResponseBody {
  UserProfileEntity toEntity() {
    return UserProfileEntity(
      name: data.name,
      email: data.email,
      phone: data.phoneNumber,
      imageUrl: data.imageUrl,
      nationalId: data.nationalId,
      birthData: data.birthDate,
      ipa: data.ipa,
      gender: data.gender,
      status: data.state,
      phoneVerified: data.phoneVerified,
      emailVerified: data.emailVerified,
      roles: data.roles,
    );
  }
}
