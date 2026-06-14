// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CurrencyEntity {

 int get id; String get name; String get code; String get symbol; String get country;
/// Create a copy of CurrencyEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrencyEntityCopyWith<CurrencyEntity> get copyWith => _$CurrencyEntityCopyWithImpl<CurrencyEntity>(this as CurrencyEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrencyEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.country, country) || other.country == country));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,code,symbol,country);

@override
String toString() {
  return 'CurrencyEntity(id: $id, name: $name, code: $code, symbol: $symbol, country: $country)';
}


}

/// @nodoc
abstract mixin class $CurrencyEntityCopyWith<$Res>  {
  factory $CurrencyEntityCopyWith(CurrencyEntity value, $Res Function(CurrencyEntity) _then) = _$CurrencyEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String code, String symbol, String country
});




}
/// @nodoc
class _$CurrencyEntityCopyWithImpl<$Res>
    implements $CurrencyEntityCopyWith<$Res> {
  _$CurrencyEntityCopyWithImpl(this._self, this._then);

  final CurrencyEntity _self;
  final $Res Function(CurrencyEntity) _then;

/// Create a copy of CurrencyEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? code = null,Object? symbol = null,Object? country = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CurrencyEntity].
extension CurrencyEntityPatterns on CurrencyEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrencyEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrencyEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrencyEntity value)  $default,){
final _that = this;
switch (_that) {
case _CurrencyEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrencyEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CurrencyEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String code,  String symbol,  String country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrencyEntity() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.symbol,_that.country);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String code,  String symbol,  String country)  $default,) {final _that = this;
switch (_that) {
case _CurrencyEntity():
return $default(_that.id,_that.name,_that.code,_that.symbol,_that.country);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String code,  String symbol,  String country)?  $default,) {final _that = this;
switch (_that) {
case _CurrencyEntity() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.symbol,_that.country);case _:
  return null;

}
}

}

/// @nodoc


class _CurrencyEntity implements CurrencyEntity {
  const _CurrencyEntity({required this.id, required this.name, required this.code, required this.symbol, required this.country});
  

@override final  int id;
@override final  String name;
@override final  String code;
@override final  String symbol;
@override final  String country;

/// Create a copy of CurrencyEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrencyEntityCopyWith<_CurrencyEntity> get copyWith => __$CurrencyEntityCopyWithImpl<_CurrencyEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrencyEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.country, country) || other.country == country));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,code,symbol,country);

@override
String toString() {
  return 'CurrencyEntity(id: $id, name: $name, code: $code, symbol: $symbol, country: $country)';
}


}

/// @nodoc
abstract mixin class _$CurrencyEntityCopyWith<$Res> implements $CurrencyEntityCopyWith<$Res> {
  factory _$CurrencyEntityCopyWith(_CurrencyEntity value, $Res Function(_CurrencyEntity) _then) = __$CurrencyEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String code, String symbol, String country
});




}
/// @nodoc
class __$CurrencyEntityCopyWithImpl<$Res>
    implements _$CurrencyEntityCopyWith<$Res> {
  __$CurrencyEntityCopyWithImpl(this._self, this._then);

  final _CurrencyEntity _self;
  final $Res Function(_CurrencyEntity) _then;

/// Create a copy of CurrencyEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? code = null,Object? symbol = null,Object? country = null,}) {
  return _then(_CurrencyEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
