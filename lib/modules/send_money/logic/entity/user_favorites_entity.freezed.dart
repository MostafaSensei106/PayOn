// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_favorites_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserFavoritesEntity {

 int get totalItems; int get totalPages; List<FavoriteItemEntity> get items;
/// Create a copy of UserFavoritesEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserFavoritesEntityCopyWith<UserFavoritesEntity> get copyWith => _$UserFavoritesEntityCopyWithImpl<UserFavoritesEntity>(this as UserFavoritesEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserFavoritesEntity&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,totalItems,totalPages,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'UserFavoritesEntity(totalItems: $totalItems, totalPages: $totalPages, items: $items)';
}


}

/// @nodoc
abstract mixin class $UserFavoritesEntityCopyWith<$Res>  {
  factory $UserFavoritesEntityCopyWith(UserFavoritesEntity value, $Res Function(UserFavoritesEntity) _then) = _$UserFavoritesEntityCopyWithImpl;
@useResult
$Res call({
 int totalItems, int totalPages, List<FavoriteItemEntity> items
});




}
/// @nodoc
class _$UserFavoritesEntityCopyWithImpl<$Res>
    implements $UserFavoritesEntityCopyWith<$Res> {
  _$UserFavoritesEntityCopyWithImpl(this._self, this._then);

  final UserFavoritesEntity _self;
  final $Res Function(UserFavoritesEntity) _then;

/// Create a copy of UserFavoritesEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalItems = null,Object? totalPages = null,Object? items = null,}) {
  return _then(_self.copyWith(
totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<FavoriteItemEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserFavoritesEntity].
extension UserFavoritesEntityPatterns on UserFavoritesEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserFavoritesEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserFavoritesEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserFavoritesEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserFavoritesEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserFavoritesEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserFavoritesEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalItems,  int totalPages,  List<FavoriteItemEntity> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserFavoritesEntity() when $default != null:
return $default(_that.totalItems,_that.totalPages,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalItems,  int totalPages,  List<FavoriteItemEntity> items)  $default,) {final _that = this;
switch (_that) {
case _UserFavoritesEntity():
return $default(_that.totalItems,_that.totalPages,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalItems,  int totalPages,  List<FavoriteItemEntity> items)?  $default,) {final _that = this;
switch (_that) {
case _UserFavoritesEntity() when $default != null:
return $default(_that.totalItems,_that.totalPages,_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _UserFavoritesEntity implements UserFavoritesEntity {
  const _UserFavoritesEntity({this.totalItems = 0, this.totalPages = 0, final  List<FavoriteItemEntity> items = const []}): _items = items;
  

@override@JsonKey() final  int totalItems;
@override@JsonKey() final  int totalPages;
 final  List<FavoriteItemEntity> _items;
@override@JsonKey() List<FavoriteItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of UserFavoritesEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserFavoritesEntityCopyWith<_UserFavoritesEntity> get copyWith => __$UserFavoritesEntityCopyWithImpl<_UserFavoritesEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserFavoritesEntity&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,totalItems,totalPages,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'UserFavoritesEntity(totalItems: $totalItems, totalPages: $totalPages, items: $items)';
}


}

/// @nodoc
abstract mixin class _$UserFavoritesEntityCopyWith<$Res> implements $UserFavoritesEntityCopyWith<$Res> {
  factory _$UserFavoritesEntityCopyWith(_UserFavoritesEntity value, $Res Function(_UserFavoritesEntity) _then) = __$UserFavoritesEntityCopyWithImpl;
@override @useResult
$Res call({
 int totalItems, int totalPages, List<FavoriteItemEntity> items
});




}
/// @nodoc
class __$UserFavoritesEntityCopyWithImpl<$Res>
    implements _$UserFavoritesEntityCopyWith<$Res> {
  __$UserFavoritesEntityCopyWithImpl(this._self, this._then);

  final _UserFavoritesEntity _self;
  final $Res Function(_UserFavoritesEntity) _then;

/// Create a copy of UserFavoritesEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalItems = null,Object? totalPages = null,Object? items = null,}) {
  return _then(_UserFavoritesEntity(
totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<FavoriteItemEntity>,
  ));
}


}

/// @nodoc
mixin _$FavoriteItemEntity {

 String get id; String get name; String get image;
/// Create a copy of FavoriteItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteItemEntityCopyWith<FavoriteItemEntity> get copyWith => _$FavoriteItemEntityCopyWithImpl<FavoriteItemEntity>(this as FavoriteItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,image);

@override
String toString() {
  return 'FavoriteItemEntity(id: $id, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class $FavoriteItemEntityCopyWith<$Res>  {
  factory $FavoriteItemEntityCopyWith(FavoriteItemEntity value, $Res Function(FavoriteItemEntity) _then) = _$FavoriteItemEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String image
});




}
/// @nodoc
class _$FavoriteItemEntityCopyWithImpl<$Res>
    implements $FavoriteItemEntityCopyWith<$Res> {
  _$FavoriteItemEntityCopyWithImpl(this._self, this._then);

  final FavoriteItemEntity _self;
  final $Res Function(FavoriteItemEntity) _then;

/// Create a copy of FavoriteItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? image = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoriteItemEntity].
extension FavoriteItemEntityPatterns on FavoriteItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteItemEntity() when $default != null:
return $default(_that.id,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String image)  $default,) {final _that = this;
switch (_that) {
case _FavoriteItemEntity():
return $default(_that.id,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String image)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteItemEntity() when $default != null:
return $default(_that.id,_that.name,_that.image);case _:
  return null;

}
}

}

/// @nodoc


class _FavoriteItemEntity implements FavoriteItemEntity {
  const _FavoriteItemEntity({required this.id, required this.name, required this.image});
  

@override final  String id;
@override final  String name;
@override final  String image;

/// Create a copy of FavoriteItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteItemEntityCopyWith<_FavoriteItemEntity> get copyWith => __$FavoriteItemEntityCopyWithImpl<_FavoriteItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,image);

@override
String toString() {
  return 'FavoriteItemEntity(id: $id, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class _$FavoriteItemEntityCopyWith<$Res> implements $FavoriteItemEntityCopyWith<$Res> {
  factory _$FavoriteItemEntityCopyWith(_FavoriteItemEntity value, $Res Function(_FavoriteItemEntity) _then) = __$FavoriteItemEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String image
});




}
/// @nodoc
class __$FavoriteItemEntityCopyWithImpl<$Res>
    implements _$FavoriteItemEntityCopyWith<$Res> {
  __$FavoriteItemEntityCopyWithImpl(this._self, this._then);

  final _FavoriteItemEntity _self;
  final $Res Function(_FavoriteItemEntity) _then;

/// Create a copy of FavoriteItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? image = null,}) {
  return _then(_FavoriteItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
