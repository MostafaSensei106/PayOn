// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_wallet_pin_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckWalletPinEntity {

 bool get isVerified; String get otp; DateTime get otpExpiresAt;
/// Create a copy of CheckWalletPinEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckWalletPinEntityCopyWith<CheckWalletPinEntity> get copyWith => _$CheckWalletPinEntityCopyWithImpl<CheckWalletPinEntity>(this as CheckWalletPinEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckWalletPinEntity&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.otpExpiresAt, otpExpiresAt) || other.otpExpiresAt == otpExpiresAt));
}


@override
int get hashCode => Object.hash(runtimeType,isVerified,otp,otpExpiresAt);

@override
String toString() {
  return 'CheckWalletPinEntity(isVerified: $isVerified, otp: $otp, otpExpiresAt: $otpExpiresAt)';
}


}

/// @nodoc
abstract mixin class $CheckWalletPinEntityCopyWith<$Res>  {
  factory $CheckWalletPinEntityCopyWith(CheckWalletPinEntity value, $Res Function(CheckWalletPinEntity) _then) = _$CheckWalletPinEntityCopyWithImpl;
@useResult
$Res call({
 bool isVerified, String otp, DateTime otpExpiresAt
});




}
/// @nodoc
class _$CheckWalletPinEntityCopyWithImpl<$Res>
    implements $CheckWalletPinEntityCopyWith<$Res> {
  _$CheckWalletPinEntityCopyWithImpl(this._self, this._then);

  final CheckWalletPinEntity _self;
  final $Res Function(CheckWalletPinEntity) _then;

/// Create a copy of CheckWalletPinEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isVerified = null,Object? otp = null,Object? otpExpiresAt = null,}) {
  return _then(_self.copyWith(
isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,otpExpiresAt: null == otpExpiresAt ? _self.otpExpiresAt : otpExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckWalletPinEntity].
extension CheckWalletPinEntityPatterns on CheckWalletPinEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckWalletPinEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckWalletPinEntity() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckWalletPinEntity value)  $default,){
final _that = this;
switch (_that) {
case _CheckWalletPinEntity():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckWalletPinEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CheckWalletPinEntity() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isVerified,  String otp,  DateTime otpExpiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckWalletPinEntity() when $default != null:
return $default(_that.isVerified,_that.otp,_that.otpExpiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isVerified,  String otp,  DateTime otpExpiresAt)  $default,) {final _that = this;
switch (_that) {
case _CheckWalletPinEntity():
return $default(_that.isVerified,_that.otp,_that.otpExpiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isVerified,  String otp,  DateTime otpExpiresAt)?  $default,) {final _that = this;
switch (_that) {
case _CheckWalletPinEntity() when $default != null:
return $default(_that.isVerified,_that.otp,_that.otpExpiresAt);case _:
  return null;

}
}

}

/// @nodoc


class _CheckWalletPinEntity implements CheckWalletPinEntity {
  const _CheckWalletPinEntity({required this.isVerified, required this.otp, required this.otpExpiresAt});
  

@override final  bool isVerified;
@override final  String otp;
@override final  DateTime otpExpiresAt;

/// Create a copy of CheckWalletPinEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckWalletPinEntityCopyWith<_CheckWalletPinEntity> get copyWith => __$CheckWalletPinEntityCopyWithImpl<_CheckWalletPinEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckWalletPinEntity&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.otpExpiresAt, otpExpiresAt) || other.otpExpiresAt == otpExpiresAt));
}


@override
int get hashCode => Object.hash(runtimeType,isVerified,otp,otpExpiresAt);

@override
String toString() {
  return 'CheckWalletPinEntity(isVerified: $isVerified, otp: $otp, otpExpiresAt: $otpExpiresAt)';
}


}

/// @nodoc
abstract mixin class _$CheckWalletPinEntityCopyWith<$Res> implements $CheckWalletPinEntityCopyWith<$Res> {
  factory _$CheckWalletPinEntityCopyWith(_CheckWalletPinEntity value, $Res Function(_CheckWalletPinEntity) _then) = __$CheckWalletPinEntityCopyWithImpl;
@override @useResult
$Res call({
 bool isVerified, String otp, DateTime otpExpiresAt
});




}
/// @nodoc
class __$CheckWalletPinEntityCopyWithImpl<$Res>
    implements _$CheckWalletPinEntityCopyWith<$Res> {
  __$CheckWalletPinEntityCopyWithImpl(this._self, this._then);

  final _CheckWalletPinEntity _self;
  final $Res Function(_CheckWalletPinEntity) _then;

/// Create a copy of CheckWalletPinEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isVerified = null,Object? otp = null,Object? otpExpiresAt = null,}) {
  return _then(_CheckWalletPinEntity(
isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,otpExpiresAt: null == otpExpiresAt ? _self.otpExpiresAt : otpExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
