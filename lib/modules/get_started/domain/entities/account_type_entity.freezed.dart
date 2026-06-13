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

 int get id; String get type; int? get parentId;
/// Create a copy of AccountTypeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountTypeEntityCopyWith<AccountTypeEntity> get copyWith => _$AccountTypeEntityCopyWithImpl<AccountTypeEntity>(this as AccountTypeEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountTypeEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.parentId, parentId) || other.parentId == parentId));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,parentId);

@override
String toString() {
  return 'AccountTypeEntity(id: $id, type: $type, parentId: $parentId)';
}


}

/// @nodoc
abstract mixin class $AccountTypeEntityCopyWith<$Res>  {
  factory $AccountTypeEntityCopyWith(AccountTypeEntity value, $Res Function(AccountTypeEntity) _then) = _$AccountTypeEntityCopyWithImpl;
@useResult
$Res call({
 int id, String type, int? parentId
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? parentId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String type,  int? parentId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountTypeEntity() when $default != null:
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
case _AccountTypeEntity():
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
case _AccountTypeEntity() when $default != null:
return $default(_that.id,_that.type,_that.parentId);case _:
  return null;

}
}

}

/// @nodoc


class _AccountTypeEntity implements AccountTypeEntity {
  const _AccountTypeEntity({required this.id, required this.type, this.parentId});
  

@override final  int id;
@override final  String type;
@override final  int? parentId;

/// Create a copy of AccountTypeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountTypeEntityCopyWith<_AccountTypeEntity> get copyWith => __$AccountTypeEntityCopyWithImpl<_AccountTypeEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountTypeEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.parentId, parentId) || other.parentId == parentId));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,parentId);

@override
String toString() {
  return 'AccountTypeEntity(id: $id, type: $type, parentId: $parentId)';
}


}

/// @nodoc
abstract mixin class _$AccountTypeEntityCopyWith<$Res> implements $AccountTypeEntityCopyWith<$Res> {
  factory _$AccountTypeEntityCopyWith(_AccountTypeEntity value, $Res Function(_AccountTypeEntity) _then) = __$AccountTypeEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String type, int? parentId
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? parentId = freezed,}) {
  return _then(_AccountTypeEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$AccountTypeDataEntity {

 List<AccountTypeEntity> get items; int get totalItems; int get pageNumber; int get pageSize; int get totalPages;
/// Create a copy of AccountTypeDataEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountTypeDataEntityCopyWith<AccountTypeDataEntity> get copyWith => _$AccountTypeDataEntityCopyWithImpl<AccountTypeDataEntity>(this as AccountTypeDataEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountTypeDataEntity&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),totalItems,pageNumber,pageSize,totalPages);

@override
String toString() {
  return 'AccountTypeDataEntity(items: $items, totalItems: $totalItems, pageNumber: $pageNumber, pageSize: $pageSize, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $AccountTypeDataEntityCopyWith<$Res>  {
  factory $AccountTypeDataEntityCopyWith(AccountTypeDataEntity value, $Res Function(AccountTypeDataEntity) _then) = _$AccountTypeDataEntityCopyWithImpl;
@useResult
$Res call({
 List<AccountTypeEntity> items, int totalItems, int pageNumber, int pageSize, int totalPages
});




}
/// @nodoc
class _$AccountTypeDataEntityCopyWithImpl<$Res>
    implements $AccountTypeDataEntityCopyWith<$Res> {
  _$AccountTypeDataEntityCopyWithImpl(this._self, this._then);

  final AccountTypeDataEntity _self;
  final $Res Function(AccountTypeDataEntity) _then;

/// Create a copy of AccountTypeDataEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? totalItems = null,Object? pageNumber = null,Object? pageSize = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<AccountTypeEntity>,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountTypeDataEntity].
extension AccountTypeDataEntityPatterns on AccountTypeDataEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountTypeDataEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountTypeDataEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountTypeDataEntity value)  $default,){
final _that = this;
switch (_that) {
case _AccountTypeDataEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountTypeDataEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AccountTypeDataEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AccountTypeEntity> items,  int totalItems,  int pageNumber,  int pageSize,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountTypeDataEntity() when $default != null:
return $default(_that.items,_that.totalItems,_that.pageNumber,_that.pageSize,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AccountTypeEntity> items,  int totalItems,  int pageNumber,  int pageSize,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _AccountTypeDataEntity():
return $default(_that.items,_that.totalItems,_that.pageNumber,_that.pageSize,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AccountTypeEntity> items,  int totalItems,  int pageNumber,  int pageSize,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _AccountTypeDataEntity() when $default != null:
return $default(_that.items,_that.totalItems,_that.pageNumber,_that.pageSize,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc


class _AccountTypeDataEntity implements AccountTypeDataEntity {
  const _AccountTypeDataEntity({required final  List<AccountTypeEntity> items, required this.totalItems, required this.pageNumber, required this.pageSize, required this.totalPages}): _items = items;
  

 final  List<AccountTypeEntity> _items;
@override List<AccountTypeEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int totalItems;
@override final  int pageNumber;
@override final  int pageSize;
@override final  int totalPages;

/// Create a copy of AccountTypeDataEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountTypeDataEntityCopyWith<_AccountTypeDataEntity> get copyWith => __$AccountTypeDataEntityCopyWithImpl<_AccountTypeDataEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountTypeDataEntity&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),totalItems,pageNumber,pageSize,totalPages);

@override
String toString() {
  return 'AccountTypeDataEntity(items: $items, totalItems: $totalItems, pageNumber: $pageNumber, pageSize: $pageSize, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$AccountTypeDataEntityCopyWith<$Res> implements $AccountTypeDataEntityCopyWith<$Res> {
  factory _$AccountTypeDataEntityCopyWith(_AccountTypeDataEntity value, $Res Function(_AccountTypeDataEntity) _then) = __$AccountTypeDataEntityCopyWithImpl;
@override @useResult
$Res call({
 List<AccountTypeEntity> items, int totalItems, int pageNumber, int pageSize, int totalPages
});




}
/// @nodoc
class __$AccountTypeDataEntityCopyWithImpl<$Res>
    implements _$AccountTypeDataEntityCopyWith<$Res> {
  __$AccountTypeDataEntityCopyWithImpl(this._self, this._then);

  final _AccountTypeDataEntity _self;
  final $Res Function(_AccountTypeDataEntity) _then;

/// Create a copy of AccountTypeDataEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? totalItems = null,Object? pageNumber = null,Object? pageSize = null,Object? totalPages = null,}) {
  return _then(_AccountTypeDataEntity(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<AccountTypeEntity>,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
