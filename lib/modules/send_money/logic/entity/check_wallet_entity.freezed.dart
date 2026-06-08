// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_wallet_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckWalletEntity {

 String get name; String get reciverId; int get currencyId; String get img; bool get founded;
/// Create a copy of CheckWalletEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckWalletEntityCopyWith<CheckWalletEntity> get copyWith => _$CheckWalletEntityCopyWithImpl<CheckWalletEntity>(this as CheckWalletEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckWalletEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.reciverId, reciverId) || other.reciverId == reciverId)&&(identical(other.currencyId, currencyId) || other.currencyId == currencyId)&&(identical(other.img, img) || other.img == img)&&(identical(other.founded, founded) || other.founded == founded));
}


@override
int get hashCode => Object.hash(runtimeType,name,reciverId,currencyId,img,founded);

@override
String toString() {
  return 'CheckWalletEntity(name: $name, reciverId: $reciverId, currencyId: $currencyId, img: $img, founded: $founded)';
}


}

/// @nodoc
abstract mixin class $CheckWalletEntityCopyWith<$Res>  {
  factory $CheckWalletEntityCopyWith(CheckWalletEntity value, $Res Function(CheckWalletEntity) _then) = _$CheckWalletEntityCopyWithImpl;
@useResult
$Res call({
 String name, String reciverId, int currencyId, String img, bool founded
});




}
/// @nodoc
class _$CheckWalletEntityCopyWithImpl<$Res>
    implements $CheckWalletEntityCopyWith<$Res> {
  _$CheckWalletEntityCopyWithImpl(this._self, this._then);

  final CheckWalletEntity _self;
  final $Res Function(CheckWalletEntity) _then;

/// Create a copy of CheckWalletEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? reciverId = null,Object? currencyId = null,Object? img = null,Object? founded = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,reciverId: null == reciverId ? _self.reciverId : reciverId // ignore: cast_nullable_to_non_nullable
as String,currencyId: null == currencyId ? _self.currencyId : currencyId // ignore: cast_nullable_to_non_nullable
as int,img: null == img ? _self.img : img // ignore: cast_nullable_to_non_nullable
as String,founded: null == founded ? _self.founded : founded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckWalletEntity].
extension CheckWalletEntityPatterns on CheckWalletEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckWalletEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckWalletEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckWalletEntity value)  $default,){
final _that = this;
switch (_that) {
case _CheckWalletEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckWalletEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CheckWalletEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String reciverId,  int currencyId,  String img,  bool founded)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckWalletEntity() when $default != null:
return $default(_that.name,_that.reciverId,_that.currencyId,_that.img,_that.founded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String reciverId,  int currencyId,  String img,  bool founded)  $default,) {final _that = this;
switch (_that) {
case _CheckWalletEntity():
return $default(_that.name,_that.reciverId,_that.currencyId,_that.img,_that.founded);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String reciverId,  int currencyId,  String img,  bool founded)?  $default,) {final _that = this;
switch (_that) {
case _CheckWalletEntity() when $default != null:
return $default(_that.name,_that.reciverId,_that.currencyId,_that.img,_that.founded);case _:
  return null;

}
}

}

/// @nodoc


class _CheckWalletEntity implements CheckWalletEntity {
  const _CheckWalletEntity({required this.name, required this.reciverId, required this.currencyId, required this.img, required this.founded});
  

@override final  String name;
@override final  String reciverId;
@override final  int currencyId;
@override final  String img;
@override final  bool founded;

/// Create a copy of CheckWalletEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckWalletEntityCopyWith<_CheckWalletEntity> get copyWith => __$CheckWalletEntityCopyWithImpl<_CheckWalletEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckWalletEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.reciverId, reciverId) || other.reciverId == reciverId)&&(identical(other.currencyId, currencyId) || other.currencyId == currencyId)&&(identical(other.img, img) || other.img == img)&&(identical(other.founded, founded) || other.founded == founded));
}


@override
int get hashCode => Object.hash(runtimeType,name,reciverId,currencyId,img,founded);

@override
String toString() {
  return 'CheckWalletEntity(name: $name, reciverId: $reciverId, currencyId: $currencyId, img: $img, founded: $founded)';
}


}

/// @nodoc
abstract mixin class _$CheckWalletEntityCopyWith<$Res> implements $CheckWalletEntityCopyWith<$Res> {
  factory _$CheckWalletEntityCopyWith(_CheckWalletEntity value, $Res Function(_CheckWalletEntity) _then) = __$CheckWalletEntityCopyWithImpl;
@override @useResult
$Res call({
 String name, String reciverId, int currencyId, String img, bool founded
});




}
/// @nodoc
class __$CheckWalletEntityCopyWithImpl<$Res>
    implements _$CheckWalletEntityCopyWith<$Res> {
  __$CheckWalletEntityCopyWithImpl(this._self, this._then);

  final _CheckWalletEntity _self;
  final $Res Function(_CheckWalletEntity) _then;

/// Create a copy of CheckWalletEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? reciverId = null,Object? currencyId = null,Object? img = null,Object? founded = null,}) {
  return _then(_CheckWalletEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,reciverId: null == reciverId ? _self.reciverId : reciverId // ignore: cast_nullable_to_non_nullable
as String,currencyId: null == currencyId ? _self.currencyId : currencyId // ignore: cast_nullable_to_non_nullable
as int,img: null == img ? _self.img : img // ignore: cast_nullable_to_non_nullable
as String,founded: null == founded ? _self.founded : founded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
