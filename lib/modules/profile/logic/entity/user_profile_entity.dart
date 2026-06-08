import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_entity.freezed.dart';

@freezed
abstract class UserProfileEntity with _$UserProfileEntity {
  const factory UserProfileEntity({
    required String name,
    required String email,
    required String phone,
    required String? imageUrl,
    required String nationalId,
    required String birthData,
    required String ipa,
    required String gender,
    required String status,
    required bool phoneVerified,
    required bool emailVerified,
    required List<String> roles,
  }) = _UserProfileEntity;

  const factory UserProfileEntity.placeholder({
    @Default('') String name,
    @Default('') String email,
    @Default('') String phone,
    @Default(null) String? imageUrl,
    @Default('') String nationalId,
    @Default('') String birthData,
    @Default('') String ipa,
    @Default('') String gender,
    @Default('') String status,
    @Default(false) bool phoneVerified,
    @Default(false) bool emailVerified,
    @Default([]) List<String> roles,
  }) = _Placeholder;
}
