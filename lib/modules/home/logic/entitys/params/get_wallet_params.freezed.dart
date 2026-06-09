// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_wallet_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetWalletParams {

 int get page; int get size;
/// Create a copy of GetWalletParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetWalletParamsCopyWith<GetWalletParams> get copyWith => _$GetWalletParamsCopyWithImpl<GetWalletParams>(this as GetWalletParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWalletParams&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size));
}


@override
int get hashCode => Object.hash(runtimeType,page,size);

@override
String toString() {
  return 'GetWalletParams(page: $page, size: $size)';
}


}

/// @nodoc
abstract mixin class $GetWalletParamsCopyWith<$Res>  {
  factory $GetWalletParamsCopyWith(GetWalletParams value, $Res Function(GetWalletParams) _then) = _$GetWalletParamsCopyWithImpl;
@useResult
$Res call({
 int page, int size
});




}
/// @nodoc
class _$GetWalletParamsCopyWithImpl<$Res>
    implements $GetWalletParamsCopyWith<$Res> {
  _$GetWalletParamsCopyWithImpl(this._self, this._then);

  final GetWalletParams _self;
  final $Res Function(GetWalletParams) _then;

/// Create a copy of GetWalletParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? size = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetWalletParams].
extension GetWalletParamsPatterns on GetWalletParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetWalletParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetWalletParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetWalletParams value)  $default,){
final _that = this;
switch (_that) {
case _GetWalletParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetWalletParams value)?  $default,){
final _that = this;
switch (_that) {
case _GetWalletParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int size)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetWalletParams() when $default != null:
return $default(_that.page,_that.size);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int size)  $default,) {final _that = this;
switch (_that) {
case _GetWalletParams():
return $default(_that.page,_that.size);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int size)?  $default,) {final _that = this;
switch (_that) {
case _GetWalletParams() when $default != null:
return $default(_that.page,_that.size);case _:
  return null;

}
}

}

/// @nodoc


class _GetWalletParams implements GetWalletParams {
  const _GetWalletParams({this.page = 1, this.size = 20});
  

@override@JsonKey() final  int page;
@override@JsonKey() final  int size;

/// Create a copy of GetWalletParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetWalletParamsCopyWith<_GetWalletParams> get copyWith => __$GetWalletParamsCopyWithImpl<_GetWalletParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetWalletParams&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size));
}


@override
int get hashCode => Object.hash(runtimeType,page,size);

@override
String toString() {
  return 'GetWalletParams(page: $page, size: $size)';
}


}

/// @nodoc
abstract mixin class _$GetWalletParamsCopyWith<$Res> implements $GetWalletParamsCopyWith<$Res> {
  factory _$GetWalletParamsCopyWith(_GetWalletParams value, $Res Function(_GetWalletParams) _then) = __$GetWalletParamsCopyWithImpl;
@override @useResult
$Res call({
 int page, int size
});




}
/// @nodoc
class __$GetWalletParamsCopyWithImpl<$Res>
    implements _$GetWalletParamsCopyWith<$Res> {
  __$GetWalletParamsCopyWithImpl(this._self, this._then);

  final _GetWalletParams _self;
  final $Res Function(_GetWalletParams) _then;

/// Create a copy of GetWalletParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? size = null,}) {
  return _then(_GetWalletParams(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
