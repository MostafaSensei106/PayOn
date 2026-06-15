// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provider_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProviderEntity {

 String get providerid; String get providerName; double get lat; double get lng; String get providerPhone; String get providerAddress; String? get providerImage;
/// Create a copy of ProviderEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProviderEntityCopyWith<ProviderEntity> get copyWith => _$ProviderEntityCopyWithImpl<ProviderEntity>(this as ProviderEntity, _$identity);

  /// Serializes this ProviderEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProviderEntity&&(identical(other.providerid, providerid) || other.providerid == providerid)&&(identical(other.providerName, providerName) || other.providerName == providerName)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.providerPhone, providerPhone) || other.providerPhone == providerPhone)&&(identical(other.providerAddress, providerAddress) || other.providerAddress == providerAddress)&&(identical(other.providerImage, providerImage) || other.providerImage == providerImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,providerid,providerName,lat,lng,providerPhone,providerAddress,providerImage);

@override
String toString() {
  return 'ProviderEntity(providerid: $providerid, providerName: $providerName, lat: $lat, lng: $lng, providerPhone: $providerPhone, providerAddress: $providerAddress, providerImage: $providerImage)';
}


}

/// @nodoc
abstract mixin class $ProviderEntityCopyWith<$Res>  {
  factory $ProviderEntityCopyWith(ProviderEntity value, $Res Function(ProviderEntity) _then) = _$ProviderEntityCopyWithImpl;
@useResult
$Res call({
 String providerid, String providerName, double lat, double lng, String providerPhone, String providerAddress, String? providerImage
});




}
/// @nodoc
class _$ProviderEntityCopyWithImpl<$Res>
    implements $ProviderEntityCopyWith<$Res> {
  _$ProviderEntityCopyWithImpl(this._self, this._then);

  final ProviderEntity _self;
  final $Res Function(ProviderEntity) _then;

/// Create a copy of ProviderEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? providerid = null,Object? providerName = null,Object? lat = null,Object? lng = null,Object? providerPhone = null,Object? providerAddress = null,Object? providerImage = freezed,}) {
  return _then(_self.copyWith(
providerid: null == providerid ? _self.providerid : providerid // ignore: cast_nullable_to_non_nullable
as String,providerName: null == providerName ? _self.providerName : providerName // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,providerPhone: null == providerPhone ? _self.providerPhone : providerPhone // ignore: cast_nullable_to_non_nullable
as String,providerAddress: null == providerAddress ? _self.providerAddress : providerAddress // ignore: cast_nullable_to_non_nullable
as String,providerImage: freezed == providerImage ? _self.providerImage : providerImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProviderEntity].
extension ProviderEntityPatterns on ProviderEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProviderEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProviderEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProviderEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProviderEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProviderEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProviderEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String providerid,  String providerName,  double lat,  double lng,  String providerPhone,  String providerAddress,  String? providerImage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProviderEntity() when $default != null:
return $default(_that.providerid,_that.providerName,_that.lat,_that.lng,_that.providerPhone,_that.providerAddress,_that.providerImage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String providerid,  String providerName,  double lat,  double lng,  String providerPhone,  String providerAddress,  String? providerImage)  $default,) {final _that = this;
switch (_that) {
case _ProviderEntity():
return $default(_that.providerid,_that.providerName,_that.lat,_that.lng,_that.providerPhone,_that.providerAddress,_that.providerImage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String providerid,  String providerName,  double lat,  double lng,  String providerPhone,  String providerAddress,  String? providerImage)?  $default,) {final _that = this;
switch (_that) {
case _ProviderEntity() when $default != null:
return $default(_that.providerid,_that.providerName,_that.lat,_that.lng,_that.providerPhone,_that.providerAddress,_that.providerImage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProviderEntity implements ProviderEntity {
  const _ProviderEntity({required this.providerid, required this.providerName, required this.lat, required this.lng, required this.providerPhone, required this.providerAddress, this.providerImage});
  factory _ProviderEntity.fromJson(Map<String, dynamic> json) => _$ProviderEntityFromJson(json);

@override final  String providerid;
@override final  String providerName;
@override final  double lat;
@override final  double lng;
@override final  String providerPhone;
@override final  String providerAddress;
@override final  String? providerImage;

/// Create a copy of ProviderEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProviderEntityCopyWith<_ProviderEntity> get copyWith => __$ProviderEntityCopyWithImpl<_ProviderEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProviderEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProviderEntity&&(identical(other.providerid, providerid) || other.providerid == providerid)&&(identical(other.providerName, providerName) || other.providerName == providerName)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.providerPhone, providerPhone) || other.providerPhone == providerPhone)&&(identical(other.providerAddress, providerAddress) || other.providerAddress == providerAddress)&&(identical(other.providerImage, providerImage) || other.providerImage == providerImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,providerid,providerName,lat,lng,providerPhone,providerAddress,providerImage);

@override
String toString() {
  return 'ProviderEntity(providerid: $providerid, providerName: $providerName, lat: $lat, lng: $lng, providerPhone: $providerPhone, providerAddress: $providerAddress, providerImage: $providerImage)';
}


}

/// @nodoc
abstract mixin class _$ProviderEntityCopyWith<$Res> implements $ProviderEntityCopyWith<$Res> {
  factory _$ProviderEntityCopyWith(_ProviderEntity value, $Res Function(_ProviderEntity) _then) = __$ProviderEntityCopyWithImpl;
@override @useResult
$Res call({
 String providerid, String providerName, double lat, double lng, String providerPhone, String providerAddress, String? providerImage
});




}
/// @nodoc
class __$ProviderEntityCopyWithImpl<$Res>
    implements _$ProviderEntityCopyWith<$Res> {
  __$ProviderEntityCopyWithImpl(this._self, this._then);

  final _ProviderEntity _self;
  final $Res Function(_ProviderEntity) _then;

/// Create a copy of ProviderEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? providerid = null,Object? providerName = null,Object? lat = null,Object? lng = null,Object? providerPhone = null,Object? providerAddress = null,Object? providerImage = freezed,}) {
  return _then(_ProviderEntity(
providerid: null == providerid ? _self.providerid : providerid // ignore: cast_nullable_to_non_nullable
as String,providerName: null == providerName ? _self.providerName : providerName // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,providerPhone: null == providerPhone ? _self.providerPhone : providerPhone // ignore: cast_nullable_to_non_nullable
as String,providerAddress: null == providerAddress ? _self.providerAddress : providerAddress // ignore: cast_nullable_to_non_nullable
as String,providerImage: freezed == providerImage ? _self.providerImage : providerImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
