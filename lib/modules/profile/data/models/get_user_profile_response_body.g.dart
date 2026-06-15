// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_profile_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserProfileResponseBody _$GetUserProfileResponseBodyFromJson(
  Map<String, dynamic> json,
) => GetUserProfileResponseBody(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: UserProfileDataModel.fromJson(json['data'] as Map<String, dynamic>),
  success: json['success'] as bool,
  errors: (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$GetUserProfileResponseBodyToJson(
  GetUserProfileResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'success': instance.success,
  'errors': instance.errors,
};

UserProfileDataModel _$UserProfileDataModelFromJson(
  Map<String, dynamic> json,
) => UserProfileDataModel(
  name: json['name'] as String,
  email: json['email'] as String,
  phoneNumber: json['phoneNumber'] as String,
  imageUrl: json['imageUrl'] as String?,
  nationalId: json['nationalId'] as String,
  birthDate: json['birthDate'] as String,
  ipa: json['ipa'] as String?,
  gender: json['gender'] as String,
  phoneVerified: json['phoneVerified'] as bool,
  emailVerified: json['emailVerified'] as bool,
  state: json['state'] as String,
  roles: (json['roles'] as List<dynamic>).map((e) => e as String).toList(),
  category: json['category'] as String,
  mobileCategory: json['mobileCategory'] as String,
);

Map<String, dynamic> _$UserProfileDataModelToJson(
  UserProfileDataModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'phoneNumber': instance.phoneNumber,
  'imageUrl': instance.imageUrl,
  'nationalId': instance.nationalId,
  'birthDate': instance.birthDate,
  'ipa': instance.ipa,
  'gender': instance.gender,
  'phoneVerified': instance.phoneVerified,
  'emailVerified': instance.emailVerified,
  'state': instance.state,
  'roles': instance.roles,
  'category': instance.category,
  'mobileCategory': instance.mobileCategory,
};
