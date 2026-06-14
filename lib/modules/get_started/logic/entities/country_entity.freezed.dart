// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CountryEntity {

 List<CountryItemEntity> get items; int get totalItems;
/// Create a copy of CountryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryEntityCopyWith<CountryEntity> get copyWith => _$CountryEntityCopyWithImpl<CountryEntity>(this as CountryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryEntity&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),totalItems);

@override
String toString() {
  return 'CountryEntity(items: $items, totalItems: $totalItems)';
}


}

/// @nodoc
abstract mixin class $CountryEntityCopyWith<$Res>  {
  factory $CountryEntityCopyWith(CountryEntity value, $Res Function(CountryEntity) _then) = _$CountryEntityCopyWithImpl;
@useResult
$Res call({
 List<CountryItemEntity> items, int totalItems
});




}
/// @nodoc
class _$CountryEntityCopyWithImpl<$Res>
    implements $CountryEntityCopyWith<$Res> {
  _$CountryEntityCopyWithImpl(this._self, this._then);

  final CountryEntity _self;
  final $Res Function(CountryEntity) _then;

/// Create a copy of CountryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? totalItems = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CountryItemEntity>,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CountryEntity].
extension CountryEntityPatterns on CountryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryEntity value)  $default,){
final _that = this;
switch (_that) {
case _CountryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CountryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CountryItemEntity> items,  int totalItems)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CountryItemEntity> items,  int totalItems)  $default,) {final _that = this;
switch (_that) {
case _CountryEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CountryItemEntity> items,  int totalItems)?  $default,) {final _that = this;
switch (_that) {
case _CountryEntity() when $default != null:
return $default(_that.items,_that.totalItems);case _:
  return null;

}
}

}

/// @nodoc


class _CountryEntity implements CountryEntity {
  const _CountryEntity({required final  List<CountryItemEntity> items, required this.totalItems}): _items = items;
  

 final  List<CountryItemEntity> _items;
@override List<CountryItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int totalItems;

/// Create a copy of CountryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryEntityCopyWith<_CountryEntity> get copyWith => __$CountryEntityCopyWithImpl<_CountryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryEntity&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),totalItems);

@override
String toString() {
  return 'CountryEntity(items: $items, totalItems: $totalItems)';
}


}

/// @nodoc
abstract mixin class _$CountryEntityCopyWith<$Res> implements $CountryEntityCopyWith<$Res> {
  factory _$CountryEntityCopyWith(_CountryEntity value, $Res Function(_CountryEntity) _then) = __$CountryEntityCopyWithImpl;
@override @useResult
$Res call({
 List<CountryItemEntity> items, int totalItems
});




}
/// @nodoc
class __$CountryEntityCopyWithImpl<$Res>
    implements _$CountryEntityCopyWith<$Res> {
  __$CountryEntityCopyWithImpl(this._self, this._then);

  final _CountryEntity _self;
  final $Res Function(_CountryEntity) _then;

/// Create a copy of CountryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? totalItems = null,}) {
  return _then(_CountryEntity(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CountryItemEntity>,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CountryItemEntity {

 int get id; String get name; int get phoneCode; int get numCode; String get iso; String get code; bool get isActive;
/// Create a copy of CountryItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryItemEntityCopyWith<CountryItemEntity> get copyWith => _$CountryItemEntityCopyWithImpl<CountryItemEntity>(this as CountryItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneCode, phoneCode) || other.phoneCode == phoneCode)&&(identical(other.numCode, numCode) || other.numCode == numCode)&&(identical(other.iso, iso) || other.iso == iso)&&(identical(other.code, code) || other.code == code)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,phoneCode,numCode,iso,code,isActive);

@override
String toString() {
  return 'CountryItemEntity(id: $id, name: $name, phoneCode: $phoneCode, numCode: $numCode, iso: $iso, code: $code, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $CountryItemEntityCopyWith<$Res>  {
  factory $CountryItemEntityCopyWith(CountryItemEntity value, $Res Function(CountryItemEntity) _then) = _$CountryItemEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, int phoneCode, int numCode, String iso, String code, bool isActive
});




}
/// @nodoc
class _$CountryItemEntityCopyWithImpl<$Res>
    implements $CountryItemEntityCopyWith<$Res> {
  _$CountryItemEntityCopyWithImpl(this._self, this._then);

  final CountryItemEntity _self;
  final $Res Function(CountryItemEntity) _then;

/// Create a copy of CountryItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? phoneCode = null,Object? numCode = null,Object? iso = null,Object? code = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phoneCode: null == phoneCode ? _self.phoneCode : phoneCode // ignore: cast_nullable_to_non_nullable
as int,numCode: null == numCode ? _self.numCode : numCode // ignore: cast_nullable_to_non_nullable
as int,iso: null == iso ? _self.iso : iso // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CountryItemEntity].
extension CountryItemEntityPatterns on CountryItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _CountryItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CountryItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int phoneCode,  int numCode,  String iso,  String code,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryItemEntity() when $default != null:
return $default(_that.id,_that.name,_that.phoneCode,_that.numCode,_that.iso,_that.code,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int phoneCode,  int numCode,  String iso,  String code,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _CountryItemEntity():
return $default(_that.id,_that.name,_that.phoneCode,_that.numCode,_that.iso,_that.code,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int phoneCode,  int numCode,  String iso,  String code,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _CountryItemEntity() when $default != null:
return $default(_that.id,_that.name,_that.phoneCode,_that.numCode,_that.iso,_that.code,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc


class _CountryItemEntity implements CountryItemEntity {
  const _CountryItemEntity({required this.id, required this.name, required this.phoneCode, required this.numCode, required this.iso, required this.code, required this.isActive});
  

@override final  int id;
@override final  String name;
@override final  int phoneCode;
@override final  int numCode;
@override final  String iso;
@override final  String code;
@override final  bool isActive;

/// Create a copy of CountryItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryItemEntityCopyWith<_CountryItemEntity> get copyWith => __$CountryItemEntityCopyWithImpl<_CountryItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneCode, phoneCode) || other.phoneCode == phoneCode)&&(identical(other.numCode, numCode) || other.numCode == numCode)&&(identical(other.iso, iso) || other.iso == iso)&&(identical(other.code, code) || other.code == code)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,phoneCode,numCode,iso,code,isActive);

@override
String toString() {
  return 'CountryItemEntity(id: $id, name: $name, phoneCode: $phoneCode, numCode: $numCode, iso: $iso, code: $code, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$CountryItemEntityCopyWith<$Res> implements $CountryItemEntityCopyWith<$Res> {
  factory _$CountryItemEntityCopyWith(_CountryItemEntity value, $Res Function(_CountryItemEntity) _then) = __$CountryItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int phoneCode, int numCode, String iso, String code, bool isActive
});




}
/// @nodoc
class __$CountryItemEntityCopyWithImpl<$Res>
    implements _$CountryItemEntityCopyWith<$Res> {
  __$CountryItemEntityCopyWithImpl(this._self, this._then);

  final _CountryItemEntity _self;
  final $Res Function(_CountryItemEntity) _then;

/// Create a copy of CountryItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? phoneCode = null,Object? numCode = null,Object? iso = null,Object? code = null,Object? isActive = null,}) {
  return _then(_CountryItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phoneCode: null == phoneCode ? _self.phoneCode : phoneCode // ignore: cast_nullable_to_non_nullable
as int,numCode: null == numCode ? _self.numCode : numCode // ignore: cast_nullable_to_non_nullable
as int,iso: null == iso ? _self.iso : iso // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
