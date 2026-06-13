// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterEntity {

 String get token; String get message; String? get accountId;
/// Create a copy of RegisterEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterEntityCopyWith<RegisterEntity> get copyWith => _$RegisterEntityCopyWithImpl<RegisterEntity>(this as RegisterEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterEntity&&(identical(other.token, token) || other.token == token)&&(identical(other.message, message) || other.message == message)&&(identical(other.accountId, accountId) || other.accountId == accountId));
}


@override
int get hashCode => Object.hash(runtimeType,token,message,accountId);

@override
String toString() {
  return 'RegisterEntity(token: $token, message: $message, accountId: $accountId)';
}


}

/// @nodoc
abstract mixin class $RegisterEntityCopyWith<$Res>  {
  factory $RegisterEntityCopyWith(RegisterEntity value, $Res Function(RegisterEntity) _then) = _$RegisterEntityCopyWithImpl;
@useResult
$Res call({
 String token, String message, String? accountId
});




}
/// @nodoc
class _$RegisterEntityCopyWithImpl<$Res>
    implements $RegisterEntityCopyWith<$Res> {
  _$RegisterEntityCopyWithImpl(this._self, this._then);

  final RegisterEntity _self;
  final $Res Function(RegisterEntity) _then;

/// Create a copy of RegisterEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? message = null,Object? accountId = freezed,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterEntity].
extension RegisterEntityPatterns on RegisterEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterEntity value)  $default,){
final _that = this;
switch (_that) {
case _RegisterEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token,  String message,  String? accountId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterEntity() when $default != null:
return $default(_that.token,_that.message,_that.accountId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token,  String message,  String? accountId)  $default,) {final _that = this;
switch (_that) {
case _RegisterEntity():
return $default(_that.token,_that.message,_that.accountId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token,  String message,  String? accountId)?  $default,) {final _that = this;
switch (_that) {
case _RegisterEntity() when $default != null:
return $default(_that.token,_that.message,_that.accountId);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterEntity implements RegisterEntity {
  const _RegisterEntity({required this.token, required this.message, this.accountId});
  

@override final  String token;
@override final  String message;
@override final  String? accountId;

/// Create a copy of RegisterEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterEntityCopyWith<_RegisterEntity> get copyWith => __$RegisterEntityCopyWithImpl<_RegisterEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterEntity&&(identical(other.token, token) || other.token == token)&&(identical(other.message, message) || other.message == message)&&(identical(other.accountId, accountId) || other.accountId == accountId));
}


@override
int get hashCode => Object.hash(runtimeType,token,message,accountId);

@override
String toString() {
  return 'RegisterEntity(token: $token, message: $message, accountId: $accountId)';
}


}

/// @nodoc
abstract mixin class _$RegisterEntityCopyWith<$Res> implements $RegisterEntityCopyWith<$Res> {
  factory _$RegisterEntityCopyWith(_RegisterEntity value, $Res Function(_RegisterEntity) _then) = __$RegisterEntityCopyWithImpl;
@override @useResult
$Res call({
 String token, String message, String? accountId
});




}
/// @nodoc
class __$RegisterEntityCopyWithImpl<$Res>
    implements _$RegisterEntityCopyWith<$Res> {
  __$RegisterEntityCopyWithImpl(this._self, this._then);

  final _RegisterEntity _self;
  final $Res Function(_RegisterEntity) _then;

/// Create a copy of RegisterEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? message = null,Object? accountId = freezed,}) {
  return _then(_RegisterEntity(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$CreateAccountEntity {

 String get message; String get accountId; dynamic get data;
/// Create a copy of CreateAccountEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAccountEntityCopyWith<CreateAccountEntity> get copyWith => _$CreateAccountEntityCopyWithImpl<CreateAccountEntity>(this as CreateAccountEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccountEntity&&(identical(other.message, message) || other.message == message)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,message,accountId,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CreateAccountEntity(message: $message, accountId: $accountId, data: $data)';
}


}

/// @nodoc
abstract mixin class $CreateAccountEntityCopyWith<$Res>  {
  factory $CreateAccountEntityCopyWith(CreateAccountEntity value, $Res Function(CreateAccountEntity) _then) = _$CreateAccountEntityCopyWithImpl;
@useResult
$Res call({
 String message, String accountId, dynamic data
});




}
/// @nodoc
class _$CreateAccountEntityCopyWithImpl<$Res>
    implements $CreateAccountEntityCopyWith<$Res> {
  _$CreateAccountEntityCopyWithImpl(this._self, this._then);

  final CreateAccountEntity _self;
  final $Res Function(CreateAccountEntity) _then;

/// Create a copy of CreateAccountEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? accountId = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateAccountEntity].
extension CreateAccountEntityPatterns on CreateAccountEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAccountEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAccountEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAccountEntity value)  $default,){
final _that = this;
switch (_that) {
case _CreateAccountEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAccountEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAccountEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  String accountId,  dynamic data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAccountEntity() when $default != null:
return $default(_that.message,_that.accountId,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  String accountId,  dynamic data)  $default,) {final _that = this;
switch (_that) {
case _CreateAccountEntity():
return $default(_that.message,_that.accountId,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  String accountId,  dynamic data)?  $default,) {final _that = this;
switch (_that) {
case _CreateAccountEntity() when $default != null:
return $default(_that.message,_that.accountId,_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _CreateAccountEntity implements CreateAccountEntity {
  const _CreateAccountEntity({required this.message, required this.accountId, this.data});
  

@override final  String message;
@override final  String accountId;
@override final  dynamic data;

/// Create a copy of CreateAccountEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAccountEntityCopyWith<_CreateAccountEntity> get copyWith => __$CreateAccountEntityCopyWithImpl<_CreateAccountEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAccountEntity&&(identical(other.message, message) || other.message == message)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,message,accountId,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CreateAccountEntity(message: $message, accountId: $accountId, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CreateAccountEntityCopyWith<$Res> implements $CreateAccountEntityCopyWith<$Res> {
  factory _$CreateAccountEntityCopyWith(_CreateAccountEntity value, $Res Function(_CreateAccountEntity) _then) = __$CreateAccountEntityCopyWithImpl;
@override @useResult
$Res call({
 String message, String accountId, dynamic data
});




}
/// @nodoc
class __$CreateAccountEntityCopyWithImpl<$Res>
    implements _$CreateAccountEntityCopyWith<$Res> {
  __$CreateAccountEntityCopyWithImpl(this._self, this._then);

  final _CreateAccountEntity _self;
  final $Res Function(_CreateAccountEntity) _then;

/// Create a copy of CreateAccountEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? accountId = null,Object? data = freezed,}) {
  return _then(_CreateAccountEntity(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc
mixin _$RequiredFileEntity {

 int get id; String get name; bool get isRequired; String? get description;
/// Create a copy of RequiredFileEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequiredFileEntityCopyWith<RequiredFileEntity> get copyWith => _$RequiredFileEntityCopyWithImpl<RequiredFileEntity>(this as RequiredFileEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequiredFileEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,isRequired,description);

@override
String toString() {
  return 'RequiredFileEntity(id: $id, name: $name, isRequired: $isRequired, description: $description)';
}


}

/// @nodoc
abstract mixin class $RequiredFileEntityCopyWith<$Res>  {
  factory $RequiredFileEntityCopyWith(RequiredFileEntity value, $Res Function(RequiredFileEntity) _then) = _$RequiredFileEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, bool isRequired, String? description
});




}
/// @nodoc
class _$RequiredFileEntityCopyWithImpl<$Res>
    implements $RequiredFileEntityCopyWith<$Res> {
  _$RequiredFileEntityCopyWithImpl(this._self, this._then);

  final RequiredFileEntity _self;
  final $Res Function(RequiredFileEntity) _then;

/// Create a copy of RequiredFileEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? isRequired = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequiredFileEntity].
extension RequiredFileEntityPatterns on RequiredFileEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequiredFileEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequiredFileEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequiredFileEntity value)  $default,){
final _that = this;
switch (_that) {
case _RequiredFileEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequiredFileEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RequiredFileEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  bool isRequired,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequiredFileEntity() when $default != null:
return $default(_that.id,_that.name,_that.isRequired,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  bool isRequired,  String? description)  $default,) {final _that = this;
switch (_that) {
case _RequiredFileEntity():
return $default(_that.id,_that.name,_that.isRequired,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  bool isRequired,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _RequiredFileEntity() when $default != null:
return $default(_that.id,_that.name,_that.isRequired,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _RequiredFileEntity implements RequiredFileEntity {
  const _RequiredFileEntity({required this.id, required this.name, required this.isRequired, this.description});
  

@override final  int id;
@override final  String name;
@override final  bool isRequired;
@override final  String? description;

/// Create a copy of RequiredFileEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequiredFileEntityCopyWith<_RequiredFileEntity> get copyWith => __$RequiredFileEntityCopyWithImpl<_RequiredFileEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequiredFileEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,isRequired,description);

@override
String toString() {
  return 'RequiredFileEntity(id: $id, name: $name, isRequired: $isRequired, description: $description)';
}


}

/// @nodoc
abstract mixin class _$RequiredFileEntityCopyWith<$Res> implements $RequiredFileEntityCopyWith<$Res> {
  factory _$RequiredFileEntityCopyWith(_RequiredFileEntity value, $Res Function(_RequiredFileEntity) _then) = __$RequiredFileEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, bool isRequired, String? description
});




}
/// @nodoc
class __$RequiredFileEntityCopyWithImpl<$Res>
    implements _$RequiredFileEntityCopyWith<$Res> {
  __$RequiredFileEntityCopyWithImpl(this._self, this._then);

  final _RequiredFileEntity _self;
  final $Res Function(_RequiredFileEntity) _then;

/// Create a copy of RequiredFileEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? isRequired = null,Object? description = freezed,}) {
  return _then(_RequiredFileEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
