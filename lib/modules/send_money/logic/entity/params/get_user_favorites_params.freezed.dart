// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_favorites_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetUserFavoritesParams {

 int get page; int get size; String get search; bool get isAddedByIPA;
/// Create a copy of GetUserFavoritesParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUserFavoritesParamsCopyWith<GetUserFavoritesParams> get copyWith => _$GetUserFavoritesParamsCopyWithImpl<GetUserFavoritesParams>(this as GetUserFavoritesParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserFavoritesParams&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size)&&(identical(other.search, search) || other.search == search)&&(identical(other.isAddedByIPA, isAddedByIPA) || other.isAddedByIPA == isAddedByIPA));
}


@override
int get hashCode => Object.hash(runtimeType,page,size,search,isAddedByIPA);

@override
String toString() {
  return 'GetUserFavoritesParams(page: $page, size: $size, search: $search, isAddedByIPA: $isAddedByIPA)';
}


}

/// @nodoc
abstract mixin class $GetUserFavoritesParamsCopyWith<$Res>  {
  factory $GetUserFavoritesParamsCopyWith(GetUserFavoritesParams value, $Res Function(GetUserFavoritesParams) _then) = _$GetUserFavoritesParamsCopyWithImpl;
@useResult
$Res call({
 int page, int size, String search, bool isAddedByIPA
});




}
/// @nodoc
class _$GetUserFavoritesParamsCopyWithImpl<$Res>
    implements $GetUserFavoritesParamsCopyWith<$Res> {
  _$GetUserFavoritesParamsCopyWithImpl(this._self, this._then);

  final GetUserFavoritesParams _self;
  final $Res Function(GetUserFavoritesParams) _then;

/// Create a copy of GetUserFavoritesParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? size = null,Object? search = null,Object? isAddedByIPA = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,search: null == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String,isAddedByIPA: null == isAddedByIPA ? _self.isAddedByIPA : isAddedByIPA // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GetUserFavoritesParams].
extension GetUserFavoritesParamsPatterns on GetUserFavoritesParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetUserFavoritesParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetUserFavoritesParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetUserFavoritesParams value)  $default,){
final _that = this;
switch (_that) {
case _GetUserFavoritesParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetUserFavoritesParams value)?  $default,){
final _that = this;
switch (_that) {
case _GetUserFavoritesParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int size,  String search,  bool isAddedByIPA)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetUserFavoritesParams() when $default != null:
return $default(_that.page,_that.size,_that.search,_that.isAddedByIPA);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int size,  String search,  bool isAddedByIPA)  $default,) {final _that = this;
switch (_that) {
case _GetUserFavoritesParams():
return $default(_that.page,_that.size,_that.search,_that.isAddedByIPA);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int size,  String search,  bool isAddedByIPA)?  $default,) {final _that = this;
switch (_that) {
case _GetUserFavoritesParams() when $default != null:
return $default(_that.page,_that.size,_that.search,_that.isAddedByIPA);case _:
  return null;

}
}

}

/// @nodoc


class _GetUserFavoritesParams implements GetUserFavoritesParams {
  const _GetUserFavoritesParams({this.page = 1, this.size = 20, this.search = '', this.isAddedByIPA = false});
  

@override@JsonKey() final  int page;
@override@JsonKey() final  int size;
@override@JsonKey() final  String search;
@override@JsonKey() final  bool isAddedByIPA;

/// Create a copy of GetUserFavoritesParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetUserFavoritesParamsCopyWith<_GetUserFavoritesParams> get copyWith => __$GetUserFavoritesParamsCopyWithImpl<_GetUserFavoritesParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUserFavoritesParams&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size)&&(identical(other.search, search) || other.search == search)&&(identical(other.isAddedByIPA, isAddedByIPA) || other.isAddedByIPA == isAddedByIPA));
}


@override
int get hashCode => Object.hash(runtimeType,page,size,search,isAddedByIPA);

@override
String toString() {
  return 'GetUserFavoritesParams(page: $page, size: $size, search: $search, isAddedByIPA: $isAddedByIPA)';
}


}

/// @nodoc
abstract mixin class _$GetUserFavoritesParamsCopyWith<$Res> implements $GetUserFavoritesParamsCopyWith<$Res> {
  factory _$GetUserFavoritesParamsCopyWith(_GetUserFavoritesParams value, $Res Function(_GetUserFavoritesParams) _then) = __$GetUserFavoritesParamsCopyWithImpl;
@override @useResult
$Res call({
 int page, int size, String search, bool isAddedByIPA
});




}
/// @nodoc
class __$GetUserFavoritesParamsCopyWithImpl<$Res>
    implements _$GetUserFavoritesParamsCopyWith<$Res> {
  __$GetUserFavoritesParamsCopyWithImpl(this._self, this._then);

  final _GetUserFavoritesParams _self;
  final $Res Function(_GetUserFavoritesParams) _then;

/// Create a copy of GetUserFavoritesParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? size = null,Object? search = null,Object? isAddedByIPA = null,}) {
  return _then(_GetUserFavoritesParams(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,search: null == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String,isAddedByIPA: null == isAddedByIPA ? _self.isAddedByIPA : isAddedByIPA // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
