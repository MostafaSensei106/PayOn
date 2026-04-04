// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    LoginResponseModel(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      userData: UserDataModel.fromJson(json['data'] as Map<String, dynamic>),
      success: json['success'] as bool,
    );

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.userData,
      'success': instance.success,
    };
