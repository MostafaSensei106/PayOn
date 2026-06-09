// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserProfileEntity {

 String get name; String get email; String get phone; String? get imageUrl; String get nationalId; String get birthData; String get ipa; String get gender; String get status; bool get phoneVerified; bool get emailVerified; List<String> get roles;
/// Create a copy of UserProfileEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileEntityCopyWith<UserProfileEntity> get copyWith => _$UserProfileEntityCopyWithImpl<UserProfileEntity>(this as UserProfileEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.nationalId, nationalId) || other.nationalId == nationalId)&&(identical(other.birthData, birthData) || other.birthData == birthData)&&(identical(other.ipa, ipa) || other.ipa == ipa)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.status, status) || other.status == status)&&(identical(other.phoneVerified, phoneVerified) || other.phoneVerified == phoneVerified)&&(identical(other.emailVerified, emailVerified) || other.emailVerified == emailVerified)&&const DeepCollectionEquality().equals(other.roles, roles));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,phone,imageUrl,nationalId,birthData,ipa,gender,status,phoneVerified,emailVerified,const DeepCollectionEquality().hash(roles));

@override
String toString() {
  return 'UserProfileEntity(name: $name, email: $email, phone: $phone, imageUrl: $imageUrl, nationalId: $nationalId, birthData: $birthData, ipa: $ipa, gender: $gender, status: $status, phoneVerified: $phoneVerified, emailVerified: $emailVerified, roles: $roles)';
}


}

/// @nodoc
abstract mixin class $UserProfileEntityCopyWith<$Res>  {
  factory $UserProfileEntityCopyWith(UserProfileEntity value, $Res Function(UserProfileEntity) _then) = _$UserProfileEntityCopyWithImpl;
@useResult
$Res call({
 String name, String email, String phone, String? imageUrl, String nationalId, String birthData, String ipa, String gender, String status, bool phoneVerified, bool emailVerified, List<String> roles
});




}
/// @nodoc
class _$UserProfileEntityCopyWithImpl<$Res>
    implements $UserProfileEntityCopyWith<$Res> {
  _$UserProfileEntityCopyWithImpl(this._self, this._then);

  final UserProfileEntity _self;
  final $Res Function(UserProfileEntity) _then;

/// Create a copy of UserProfileEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? email = null,Object? phone = null,Object? imageUrl = freezed,Object? nationalId = null,Object? birthData = null,Object? ipa = null,Object? gender = null,Object? status = null,Object? phoneVerified = null,Object? emailVerified = null,Object? roles = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,nationalId: null == nationalId ? _self.nationalId : nationalId // ignore: cast_nullable_to_non_nullable
as String,birthData: null == birthData ? _self.birthData : birthData // ignore: cast_nullable_to_non_nullable
as String,ipa: null == ipa ? _self.ipa : ipa // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,phoneVerified: null == phoneVerified ? _self.phoneVerified : phoneVerified // ignore: cast_nullable_to_non_nullable
as bool,emailVerified: null == emailVerified ? _self.emailVerified : emailVerified // ignore: cast_nullable_to_non_nullable
as bool,roles: null == roles ? _self.roles : roles // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfileEntity].
extension UserProfileEntityPatterns on UserProfileEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfileEntity value)?  $default,{TResult Function( _Placeholder value)?  placeholder,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfileEntity() when $default != null:
return $default(_that);case _Placeholder() when placeholder != null:
return placeholder(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfileEntity value)  $default,{required TResult Function( _Placeholder value)  placeholder,}){
final _that = this;
switch (_that) {
case _UserProfileEntity():
return $default(_that);case _Placeholder():
return placeholder(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfileEntity value)?  $default,{TResult? Function( _Placeholder value)?  placeholder,}){
final _that = this;
switch (_that) {
case _UserProfileEntity() when $default != null:
return $default(_that);case _Placeholder() when placeholder != null:
return placeholder(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String email,  String phone,  String? imageUrl,  String nationalId,  String birthData,  String ipa,  String gender,  String status,  bool phoneVerified,  bool emailVerified,  List<String> roles)?  $default,{TResult Function( String name,  String email,  String phone,  String? imageUrl,  String nationalId,  String birthData,  String ipa,  String gender,  String status,  bool phoneVerified,  bool emailVerified,  List<String> roles)?  placeholder,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfileEntity() when $default != null:
return $default(_that.name,_that.email,_that.phone,_that.imageUrl,_that.nationalId,_that.birthData,_that.ipa,_that.gender,_that.status,_that.phoneVerified,_that.emailVerified,_that.roles);case _Placeholder() when placeholder != null:
return placeholder(_that.name,_that.email,_that.phone,_that.imageUrl,_that.nationalId,_that.birthData,_that.ipa,_that.gender,_that.status,_that.phoneVerified,_that.emailVerified,_that.roles);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String email,  String phone,  String? imageUrl,  String nationalId,  String birthData,  String ipa,  String gender,  String status,  bool phoneVerified,  bool emailVerified,  List<String> roles)  $default,{required TResult Function( String name,  String email,  String phone,  String? imageUrl,  String nationalId,  String birthData,  String ipa,  String gender,  String status,  bool phoneVerified,  bool emailVerified,  List<String> roles)  placeholder,}) {final _that = this;
switch (_that) {
case _UserProfileEntity():
return $default(_that.name,_that.email,_that.phone,_that.imageUrl,_that.nationalId,_that.birthData,_that.ipa,_that.gender,_that.status,_that.phoneVerified,_that.emailVerified,_that.roles);case _Placeholder():
return placeholder(_that.name,_that.email,_that.phone,_that.imageUrl,_that.nationalId,_that.birthData,_that.ipa,_that.gender,_that.status,_that.phoneVerified,_that.emailVerified,_that.roles);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String email,  String phone,  String? imageUrl,  String nationalId,  String birthData,  String ipa,  String gender,  String status,  bool phoneVerified,  bool emailVerified,  List<String> roles)?  $default,{TResult? Function( String name,  String email,  String phone,  String? imageUrl,  String nationalId,  String birthData,  String ipa,  String gender,  String status,  bool phoneVerified,  bool emailVerified,  List<String> roles)?  placeholder,}) {final _that = this;
switch (_that) {
case _UserProfileEntity() when $default != null:
return $default(_that.name,_that.email,_that.phone,_that.imageUrl,_that.nationalId,_that.birthData,_that.ipa,_that.gender,_that.status,_that.phoneVerified,_that.emailVerified,_that.roles);case _Placeholder() when placeholder != null:
return placeholder(_that.name,_that.email,_that.phone,_that.imageUrl,_that.nationalId,_that.birthData,_that.ipa,_that.gender,_that.status,_that.phoneVerified,_that.emailVerified,_that.roles);case _:
  return null;

}
}

}

/// @nodoc


class _UserProfileEntity implements UserProfileEntity {
  const _UserProfileEntity({required this.name, required this.email, required this.phone, required this.imageUrl, required this.nationalId, required this.birthData, required this.ipa, required this.gender, required this.status, required this.phoneVerified, required this.emailVerified, required final  List<String> roles}): _roles = roles;
  

@override final  String name;
@override final  String email;
@override final  String phone;
@override final  String? imageUrl;
@override final  String nationalId;
@override final  String birthData;
@override final  String ipa;
@override final  String gender;
@override final  String status;
@override final  bool phoneVerified;
@override final  bool emailVerified;
 final  List<String> _roles;
@override List<String> get roles {
  if (_roles is EqualUnmodifiableListView) return _roles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roles);
}


/// Create a copy of UserProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileEntityCopyWith<_UserProfileEntity> get copyWith => __$UserProfileEntityCopyWithImpl<_UserProfileEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfileEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.nationalId, nationalId) || other.nationalId == nationalId)&&(identical(other.birthData, birthData) || other.birthData == birthData)&&(identical(other.ipa, ipa) || other.ipa == ipa)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.status, status) || other.status == status)&&(identical(other.phoneVerified, phoneVerified) || other.phoneVerified == phoneVerified)&&(identical(other.emailVerified, emailVerified) || other.emailVerified == emailVerified)&&const DeepCollectionEquality().equals(other._roles, _roles));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,phone,imageUrl,nationalId,birthData,ipa,gender,status,phoneVerified,emailVerified,const DeepCollectionEquality().hash(_roles));

@override
String toString() {
  return 'UserProfileEntity(name: $name, email: $email, phone: $phone, imageUrl: $imageUrl, nationalId: $nationalId, birthData: $birthData, ipa: $ipa, gender: $gender, status: $status, phoneVerified: $phoneVerified, emailVerified: $emailVerified, roles: $roles)';
}


}

/// @nodoc
abstract mixin class _$UserProfileEntityCopyWith<$Res> implements $UserProfileEntityCopyWith<$Res> {
  factory _$UserProfileEntityCopyWith(_UserProfileEntity value, $Res Function(_UserProfileEntity) _then) = __$UserProfileEntityCopyWithImpl;
@override @useResult
$Res call({
 String name, String email, String phone, String? imageUrl, String nationalId, String birthData, String ipa, String gender, String status, bool phoneVerified, bool emailVerified, List<String> roles
});




}
/// @nodoc
class __$UserProfileEntityCopyWithImpl<$Res>
    implements _$UserProfileEntityCopyWith<$Res> {
  __$UserProfileEntityCopyWithImpl(this._self, this._then);

  final _UserProfileEntity _self;
  final $Res Function(_UserProfileEntity) _then;

/// Create a copy of UserProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? phone = null,Object? imageUrl = freezed,Object? nationalId = null,Object? birthData = null,Object? ipa = null,Object? gender = null,Object? status = null,Object? phoneVerified = null,Object? emailVerified = null,Object? roles = null,}) {
  return _then(_UserProfileEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,nationalId: null == nationalId ? _self.nationalId : nationalId // ignore: cast_nullable_to_non_nullable
as String,birthData: null == birthData ? _self.birthData : birthData // ignore: cast_nullable_to_non_nullable
as String,ipa: null == ipa ? _self.ipa : ipa // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,phoneVerified: null == phoneVerified ? _self.phoneVerified : phoneVerified // ignore: cast_nullable_to_non_nullable
as bool,emailVerified: null == emailVerified ? _self.emailVerified : emailVerified // ignore: cast_nullable_to_non_nullable
as bool,roles: null == roles ? _self._roles : roles // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class _Placeholder implements UserProfileEntity {
  const _Placeholder({this.name = '', this.email = '', this.phone = '', this.imageUrl = null, this.nationalId = '', this.birthData = '', this.ipa = '', this.gender = '', this.status = '', this.phoneVerified = false, this.emailVerified = false, final  List<String> roles = const []}): _roles = roles;
  

@override@JsonKey() final  String name;
@override@JsonKey() final  String email;
@override@JsonKey() final  String phone;
@override@JsonKey() final  String? imageUrl;
@override@JsonKey() final  String nationalId;
@override@JsonKey() final  String birthData;
@override@JsonKey() final  String ipa;
@override@JsonKey() final  String gender;
@override@JsonKey() final  String status;
@override@JsonKey() final  bool phoneVerified;
@override@JsonKey() final  bool emailVerified;
 final  List<String> _roles;
@override@JsonKey() List<String> get roles {
  if (_roles is EqualUnmodifiableListView) return _roles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roles);
}


/// Create a copy of UserProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceholderCopyWith<_Placeholder> get copyWith => __$PlaceholderCopyWithImpl<_Placeholder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Placeholder&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.nationalId, nationalId) || other.nationalId == nationalId)&&(identical(other.birthData, birthData) || other.birthData == birthData)&&(identical(other.ipa, ipa) || other.ipa == ipa)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.status, status) || other.status == status)&&(identical(other.phoneVerified, phoneVerified) || other.phoneVerified == phoneVerified)&&(identical(other.emailVerified, emailVerified) || other.emailVerified == emailVerified)&&const DeepCollectionEquality().equals(other._roles, _roles));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,phone,imageUrl,nationalId,birthData,ipa,gender,status,phoneVerified,emailVerified,const DeepCollectionEquality().hash(_roles));

@override
String toString() {
  return 'UserProfileEntity.placeholder(name: $name, email: $email, phone: $phone, imageUrl: $imageUrl, nationalId: $nationalId, birthData: $birthData, ipa: $ipa, gender: $gender, status: $status, phoneVerified: $phoneVerified, emailVerified: $emailVerified, roles: $roles)';
}


}

/// @nodoc
abstract mixin class _$PlaceholderCopyWith<$Res> implements $UserProfileEntityCopyWith<$Res> {
  factory _$PlaceholderCopyWith(_Placeholder value, $Res Function(_Placeholder) _then) = __$PlaceholderCopyWithImpl;
@override @useResult
$Res call({
 String name, String email, String phone, String? imageUrl, String nationalId, String birthData, String ipa, String gender, String status, bool phoneVerified, bool emailVerified, List<String> roles
});




}
/// @nodoc
class __$PlaceholderCopyWithImpl<$Res>
    implements _$PlaceholderCopyWith<$Res> {
  __$PlaceholderCopyWithImpl(this._self, this._then);

  final _Placeholder _self;
  final $Res Function(_Placeholder) _then;

/// Create a copy of UserProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? phone = null,Object? imageUrl = freezed,Object? nationalId = null,Object? birthData = null,Object? ipa = null,Object? gender = null,Object? status = null,Object? phoneVerified = null,Object? emailVerified = null,Object? roles = null,}) {
  return _then(_Placeholder(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,nationalId: null == nationalId ? _self.nationalId : nationalId // ignore: cast_nullable_to_non_nullable
as String,birthData: null == birthData ? _self.birthData : birthData // ignore: cast_nullable_to_non_nullable
as String,ipa: null == ipa ? _self.ipa : ipa // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,phoneVerified: null == phoneVerified ? _self.phoneVerified : phoneVerified // ignore: cast_nullable_to_non_nullable
as bool,emailVerified: null == emailVerified ? _self.emailVerified : emailVerified // ignore: cast_nullable_to_non_nullable
as bool,roles: null == roles ? _self._roles : roles // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
