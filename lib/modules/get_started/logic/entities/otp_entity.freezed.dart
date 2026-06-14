// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SendOtpEntity {

 String get state; String get timestamp;
/// Create a copy of SendOtpEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendOtpEntityCopyWith<SendOtpEntity> get copyWith => _$SendOtpEntityCopyWithImpl<SendOtpEntity>(this as SendOtpEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendOtpEntity&&(identical(other.state, state) || other.state == state)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,state,timestamp);

@override
String toString() {
  return 'SendOtpEntity(state: $state, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $SendOtpEntityCopyWith<$Res>  {
  factory $SendOtpEntityCopyWith(SendOtpEntity value, $Res Function(SendOtpEntity) _then) = _$SendOtpEntityCopyWithImpl;
@useResult
$Res call({
 String state, String timestamp
});




}
/// @nodoc
class _$SendOtpEntityCopyWithImpl<$Res>
    implements $SendOtpEntityCopyWith<$Res> {
  _$SendOtpEntityCopyWithImpl(this._self, this._then);

  final SendOtpEntity _self;
  final $Res Function(SendOtpEntity) _then;

/// Create a copy of SendOtpEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? state = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SendOtpEntity].
extension SendOtpEntityPatterns on SendOtpEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendOtpEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendOtpEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendOtpEntity value)  $default,){
final _that = this;
switch (_that) {
case _SendOtpEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendOtpEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SendOtpEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String state,  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendOtpEntity() when $default != null:
return $default(_that.state,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String state,  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _SendOtpEntity():
return $default(_that.state,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String state,  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _SendOtpEntity() when $default != null:
return $default(_that.state,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc


class _SendOtpEntity implements SendOtpEntity {
  const _SendOtpEntity({required this.state, required this.timestamp});
  

@override final  String state;
@override final  String timestamp;

/// Create a copy of SendOtpEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendOtpEntityCopyWith<_SendOtpEntity> get copyWith => __$SendOtpEntityCopyWithImpl<_SendOtpEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendOtpEntity&&(identical(other.state, state) || other.state == state)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode => Object.hash(runtimeType,state,timestamp);

@override
String toString() {
  return 'SendOtpEntity(state: $state, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$SendOtpEntityCopyWith<$Res> implements $SendOtpEntityCopyWith<$Res> {
  factory _$SendOtpEntityCopyWith(_SendOtpEntity value, $Res Function(_SendOtpEntity) _then) = __$SendOtpEntityCopyWithImpl;
@override @useResult
$Res call({
 String state, String timestamp
});




}
/// @nodoc
class __$SendOtpEntityCopyWithImpl<$Res>
    implements _$SendOtpEntityCopyWith<$Res> {
  __$SendOtpEntityCopyWithImpl(this._self, this._then);

  final _SendOtpEntity _self;
  final $Res Function(_SendOtpEntity) _then;

/// Create a copy of SendOtpEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? state = null,Object? timestamp = null,}) {
  return _then(_SendOtpEntity(
state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$VerifyOtpEntity {

 bool get result;
/// Create a copy of VerifyOtpEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyOtpEntityCopyWith<VerifyOtpEntity> get copyWith => _$VerifyOtpEntityCopyWithImpl<VerifyOtpEntity>(this as VerifyOtpEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOtpEntity&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'VerifyOtpEntity(result: $result)';
}


}

/// @nodoc
abstract mixin class $VerifyOtpEntityCopyWith<$Res>  {
  factory $VerifyOtpEntityCopyWith(VerifyOtpEntity value, $Res Function(VerifyOtpEntity) _then) = _$VerifyOtpEntityCopyWithImpl;
@useResult
$Res call({
 bool result
});




}
/// @nodoc
class _$VerifyOtpEntityCopyWithImpl<$Res>
    implements $VerifyOtpEntityCopyWith<$Res> {
  _$VerifyOtpEntityCopyWithImpl(this._self, this._then);

  final VerifyOtpEntity _self;
  final $Res Function(VerifyOtpEntity) _then;

/// Create a copy of VerifyOtpEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? result = null,}) {
  return _then(_self.copyWith(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyOtpEntity].
extension VerifyOtpEntityPatterns on VerifyOtpEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyOtpEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyOtpEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyOtpEntity value)  $default,){
final _that = this;
switch (_that) {
case _VerifyOtpEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyOtpEntity value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyOtpEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyOtpEntity() when $default != null:
return $default(_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool result)  $default,) {final _that = this;
switch (_that) {
case _VerifyOtpEntity():
return $default(_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool result)?  $default,) {final _that = this;
switch (_that) {
case _VerifyOtpEntity() when $default != null:
return $default(_that.result);case _:
  return null;

}
}

}

/// @nodoc


class _VerifyOtpEntity implements VerifyOtpEntity {
  const _VerifyOtpEntity({required this.result});
  

@override final  bool result;

/// Create a copy of VerifyOtpEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyOtpEntityCopyWith<_VerifyOtpEntity> get copyWith => __$VerifyOtpEntityCopyWithImpl<_VerifyOtpEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyOtpEntity&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'VerifyOtpEntity(result: $result)';
}


}

/// @nodoc
abstract mixin class _$VerifyOtpEntityCopyWith<$Res> implements $VerifyOtpEntityCopyWith<$Res> {
  factory _$VerifyOtpEntityCopyWith(_VerifyOtpEntity value, $Res Function(_VerifyOtpEntity) _then) = __$VerifyOtpEntityCopyWithImpl;
@override @useResult
$Res call({
 bool result
});




}
/// @nodoc
class __$VerifyOtpEntityCopyWithImpl<$Res>
    implements _$VerifyOtpEntityCopyWith<$Res> {
  __$VerifyOtpEntityCopyWithImpl(this._self, this._then);

  final _VerifyOtpEntity _self;
  final $Res Function(_VerifyOtpEntity) _then;

/// Create a copy of VerifyOtpEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(_VerifyOtpEntity(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
