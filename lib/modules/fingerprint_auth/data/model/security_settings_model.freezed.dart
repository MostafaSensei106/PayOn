// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'security_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SecuritySettingsModel {

 bool get isFingerprintEnabled; bool get isDeviceSupported;
/// Create a copy of SecuritySettingsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecuritySettingsModelCopyWith<SecuritySettingsModel> get copyWith => _$SecuritySettingsModelCopyWithImpl<SecuritySettingsModel>(this as SecuritySettingsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecuritySettingsModel&&(identical(other.isFingerprintEnabled, isFingerprintEnabled) || other.isFingerprintEnabled == isFingerprintEnabled)&&(identical(other.isDeviceSupported, isDeviceSupported) || other.isDeviceSupported == isDeviceSupported));
}


@override
int get hashCode => Object.hash(runtimeType,isFingerprintEnabled,isDeviceSupported);

@override
String toString() {
  return 'SecuritySettingsModel(isFingerprintEnabled: $isFingerprintEnabled, isDeviceSupported: $isDeviceSupported)';
}


}

/// @nodoc
abstract mixin class $SecuritySettingsModelCopyWith<$Res>  {
  factory $SecuritySettingsModelCopyWith(SecuritySettingsModel value, $Res Function(SecuritySettingsModel) _then) = _$SecuritySettingsModelCopyWithImpl;
@useResult
$Res call({
 bool isFingerprintEnabled, bool isDeviceSupported
});




}
/// @nodoc
class _$SecuritySettingsModelCopyWithImpl<$Res>
    implements $SecuritySettingsModelCopyWith<$Res> {
  _$SecuritySettingsModelCopyWithImpl(this._self, this._then);

  final SecuritySettingsModel _self;
  final $Res Function(SecuritySettingsModel) _then;

/// Create a copy of SecuritySettingsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isFingerprintEnabled = null,Object? isDeviceSupported = null,}) {
  return _then(_self.copyWith(
isFingerprintEnabled: null == isFingerprintEnabled ? _self.isFingerprintEnabled : isFingerprintEnabled // ignore: cast_nullable_to_non_nullable
as bool,isDeviceSupported: null == isDeviceSupported ? _self.isDeviceSupported : isDeviceSupported // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SecuritySettingsModel].
extension SecuritySettingsModelPatterns on SecuritySettingsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecuritySettingsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecuritySettingsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecuritySettingsModel value)  $default,){
final _that = this;
switch (_that) {
case _SecuritySettingsModel():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecuritySettingsModel value)?  $default,){
final _that = this;
switch (_that) {
case _SecuritySettingsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isFingerprintEnabled,  bool isDeviceSupported)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecuritySettingsModel() when $default != null:
return $default(_that.isFingerprintEnabled,_that.isDeviceSupported);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isFingerprintEnabled,  bool isDeviceSupported)  $default,) {final _that = this;
switch (_that) {
case _SecuritySettingsModel():
return $default(_that.isFingerprintEnabled,_that.isDeviceSupported);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isFingerprintEnabled,  bool isDeviceSupported)?  $default,) {final _that = this;
switch (_that) {
case _SecuritySettingsModel() when $default != null:
return $default(_that.isFingerprintEnabled,_that.isDeviceSupported);case _:
  return null;

}
}

}

/// @nodoc


class _SecuritySettingsModel implements SecuritySettingsModel {
  const _SecuritySettingsModel({this.isFingerprintEnabled = false, this.isDeviceSupported = false});
  

@override@JsonKey() final  bool isFingerprintEnabled;
@override@JsonKey() final  bool isDeviceSupported;

/// Create a copy of SecuritySettingsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecuritySettingsModelCopyWith<_SecuritySettingsModel> get copyWith => __$SecuritySettingsModelCopyWithImpl<_SecuritySettingsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecuritySettingsModel&&(identical(other.isFingerprintEnabled, isFingerprintEnabled) || other.isFingerprintEnabled == isFingerprintEnabled)&&(identical(other.isDeviceSupported, isDeviceSupported) || other.isDeviceSupported == isDeviceSupported));
}


@override
int get hashCode => Object.hash(runtimeType,isFingerprintEnabled,isDeviceSupported);

@override
String toString() {
  return 'SecuritySettingsModel(isFingerprintEnabled: $isFingerprintEnabled, isDeviceSupported: $isDeviceSupported)';
}


}

/// @nodoc
abstract mixin class _$SecuritySettingsModelCopyWith<$Res> implements $SecuritySettingsModelCopyWith<$Res> {
  factory _$SecuritySettingsModelCopyWith(_SecuritySettingsModel value, $Res Function(_SecuritySettingsModel) _then) = __$SecuritySettingsModelCopyWithImpl;
@override @useResult
$Res call({
 bool isFingerprintEnabled, bool isDeviceSupported
});




}
/// @nodoc
class __$SecuritySettingsModelCopyWithImpl<$Res>
    implements _$SecuritySettingsModelCopyWith<$Res> {
  __$SecuritySettingsModelCopyWithImpl(this._self, this._then);

  final _SecuritySettingsModel _self;
  final $Res Function(_SecuritySettingsModel) _then;

/// Create a copy of SecuritySettingsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isFingerprintEnabled = null,Object? isDeviceSupported = null,}) {
  return _then(_SecuritySettingsModel(
isFingerprintEnabled: null == isFingerprintEnabled ? _self.isFingerprintEnabled : isFingerprintEnabled // ignore: cast_nullable_to_non_nullable
as bool,isDeviceSupported: null == isDeviceSupported ? _self.isDeviceSupported : isDeviceSupported // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
