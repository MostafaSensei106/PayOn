// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_type_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AccountTypeEntity {

 List<AccountTypeItemEntity> get items; int get totalItems;
/// Create a copy of AccountTypeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountTypeEntityCopyWith<AccountTypeEntity> get copyWith => _$AccountTypeEntityCopyWithImpl<AccountTypeEntity>(this as AccountTypeEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountTypeEntity&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),totalItems);

@override
String toString() {
  return 'AccountTypeEntity(items: $items, totalItems: $totalItems)';
}


}

/// @nodoc
abstract mixin class $AccountTypeEntityCopyWith<$Res>  {
  factory $AccountTypeEntityCopyWith(AccountTypeEntity value, $Res Function(AccountTypeEntity) _then) = _$AccountTypeEntityCopyWithImpl;
@useResult
$Res call({
 List<AccountTypeItemEntity> items, int totalItems
});




}
/// @nodoc
class _$AccountTypeEntityCopyWithImpl<$Res>
    implements $AccountTypeEntityCopyWith<$Res> {
  _$AccountTypeEntityCopyWithImpl(this._self, this._then);

  final AccountTypeEntity _self;
  final $Res Function(AccountTypeEntity) _then;

/// Create a copy of AccountTypeEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? totalItems = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<AccountTypeItemEntity>,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountTypeEntity].
extension AccountTypeEntityPatterns on AccountTypeEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountTypeEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountTypeEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountTypeEntity value)  $default,){
final _that = this;
switch (_that) {
case _AccountTypeEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountTypeEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AccountTypeEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AccountTypeItemEntity> items,  int totalItems)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountTypeEntity() when $default != null:
return $default(_that.items,_that.totalItems);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AccountTypeItemEntity> items,  int totalItems)  $default,) {final _that = this;
switch (_that) {
case _AccountTypeEntity():
return $default(_that.items,_that.totalItems);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AccountTypeItemEntity> items,  int totalItems)?  $default,) {final _that = this;
switch (_that) {
case _AccountTypeEntity() when $default != null:
return $default(_that.items,_that.totalItems);case _:
  return null;

}
}

}

/// @nodoc


class _AccountTypeEntity implements AccountTypeEntity {
  const _AccountTypeEntity({required final  List<AccountTypeItemEntity> items, required this.totalItems}): _items = items;
  

 final  List<AccountTypeItemEntity> _items;
@override List<AccountTypeItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int totalItems;

/// Create a copy of AccountTypeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountTypeEntityCopyWith<_AccountTypeEntity> get copyWith => __$AccountTypeEntityCopyWithImpl<_AccountTypeEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountTypeEntity&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),totalItems);

@override
String toString() {
  return 'AccountTypeEntity(items: $items, totalItems: $totalItems)';
}


}

/// @nodoc
abstract mixin class _$AccountTypeEntityCopyWith<$Res> implements $AccountTypeEntityCopyWith<$Res> {
  factory _$AccountTypeEntityCopyWith(_AccountTypeEntity value, $Res Function(_AccountTypeEntity) _then) = __$AccountTypeEntityCopyWithImpl;
@override @useResult
$Res call({
 List<AccountTypeItemEntity> items, int totalItems
});




}
/// @nodoc
class __$AccountTypeEntityCopyWithImpl<$Res>
    implements _$AccountTypeEntityCopyWith<$Res> {
  __$AccountTypeEntityCopyWithImpl(this._self, this._then);

  final _AccountTypeEntity _self;
  final $Res Function(_AccountTypeEntity) _then;

/// Create a copy of AccountTypeEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? totalItems = null,}) {
  return _then(_AccountTypeEntity(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<AccountTypeItemEntity>,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$AccountTypeItemEntity {

 int get id; String get type; int? get parentId;
/// Create a copy of AccountTypeItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountTypeItemEntityCopyWith<AccountTypeItemEntity> get copyWith => _$AccountTypeItemEntityCopyWithImpl<AccountTypeItemEntity>(this as AccountTypeItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountTypeItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.parentId, parentId) || other.parentId == parentId));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,parentId);

@override
String toString() {
  return 'AccountTypeItemEntity(id: $id, type: $type, parentId: $parentId)';
}


}

/// @nodoc
abstract mixin class $AccountTypeItemEntityCopyWith<$Res>  {
  factory $AccountTypeItemEntityCopyWith(AccountTypeItemEntity value, $Res Function(AccountTypeItemEntity) _then) = _$AccountTypeItemEntityCopyWithImpl;
@useResult
$Res call({
 int id, String type, int? parentId
});




}
/// @nodoc
class _$AccountTypeItemEntityCopyWithImpl<$Res>
    implements $AccountTypeItemEntityCopyWith<$Res> {
  _$AccountTypeItemEntityCopyWithImpl(this._self, this._then);

  final AccountTypeItemEntity _self;
  final $Res Function(AccountTypeItemEntity) _then;

/// Create a copy of AccountTypeItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? parentId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountTypeItemEntity].
extension AccountTypeItemEntityPatterns on AccountTypeItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountTypeItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountTypeItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountTypeItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _AccountTypeItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountTypeItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AccountTypeItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String type,  int? parentId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountTypeItemEntity() when $default != null:
return $default(_that.id,_that.type,_that.parentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String type,  int? parentId)  $default,) {final _that = this;
switch (_that) {
case _AccountTypeItemEntity():
return $default(_that.id,_that.type,_that.parentId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String type,  int? parentId)?  $default,) {final _that = this;
switch (_that) {
case _AccountTypeItemEntity() when $default != null:
return $default(_that.id,_that.type,_that.parentId);case _:
  return null;

}
}

}

/// @nodoc


class _AccountTypeItemEntity implements AccountTypeItemEntity {
  const _AccountTypeItemEntity({required this.id, required this.type, this.parentId});
  

@override final  int id;
@override final  String type;
@override final  int? parentId;

/// Create a copy of AccountTypeItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountTypeItemEntityCopyWith<_AccountTypeItemEntity> get copyWith => __$AccountTypeItemEntityCopyWithImpl<_AccountTypeItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountTypeItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.parentId, parentId) || other.parentId == parentId));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,parentId);

@override
String toString() {
  return 'AccountTypeItemEntity(id: $id, type: $type, parentId: $parentId)';
}


}

/// @nodoc
abstract mixin class _$AccountTypeItemEntityCopyWith<$Res> implements $AccountTypeItemEntityCopyWith<$Res> {
  factory _$AccountTypeItemEntityCopyWith(_AccountTypeItemEntity value, $Res Function(_AccountTypeItemEntity) _then) = __$AccountTypeItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String type, int? parentId
});




}
/// @nodoc
class __$AccountTypeItemEntityCopyWithImpl<$Res>
    implements _$AccountTypeItemEntityCopyWith<$Res> {
  __$AccountTypeItemEntityCopyWithImpl(this._self, this._then);

  final _AccountTypeItemEntity _self;
  final $Res Function(_AccountTypeItemEntity) _then;

/// Create a copy of AccountTypeItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? parentId = freezed,}) {
  return _then(_AccountTypeItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
