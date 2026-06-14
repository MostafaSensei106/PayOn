// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_transaction_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateTransactionParams {

 String get senderId; String get receiverId; String? get paymentId; double get amount; String get description; int get transactionTypeId; bool get isTransactionByPhone;
/// Create a copy of CreateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTransactionParamsCopyWith<CreateTransactionParams> get copyWith => _$CreateTransactionParamsCopyWithImpl<CreateTransactionParams>(this as CreateTransactionParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTransactionParams&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.transactionTypeId, transactionTypeId) || other.transactionTypeId == transactionTypeId)&&(identical(other.isTransactionByPhone, isTransactionByPhone) || other.isTransactionByPhone == isTransactionByPhone));
}


@override
int get hashCode => Object.hash(runtimeType,senderId,receiverId,paymentId,amount,description,transactionTypeId,isTransactionByPhone);

@override
String toString() {
  return 'CreateTransactionParams(senderId: $senderId, receiverId: $receiverId, paymentId: $paymentId, amount: $amount, description: $description, transactionTypeId: $transactionTypeId, isTransactionByPhone: $isTransactionByPhone)';
}


}

/// @nodoc
abstract mixin class $CreateTransactionParamsCopyWith<$Res>  {
  factory $CreateTransactionParamsCopyWith(CreateTransactionParams value, $Res Function(CreateTransactionParams) _then) = _$CreateTransactionParamsCopyWithImpl;
@useResult
$Res call({
 String senderId, String receiverId, String? paymentId, double amount, String description, int transactionTypeId, bool isTransactionByPhone
});




}
/// @nodoc
class _$CreateTransactionParamsCopyWithImpl<$Res>
    implements $CreateTransactionParamsCopyWith<$Res> {
  _$CreateTransactionParamsCopyWithImpl(this._self, this._then);

  final CreateTransactionParams _self;
  final $Res Function(CreateTransactionParams) _then;

/// Create a copy of CreateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? senderId = null,Object? receiverId = null,Object? paymentId = freezed,Object? amount = null,Object? description = null,Object? transactionTypeId = null,Object? isTransactionByPhone = null,}) {
  return _then(_self.copyWith(
senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,receiverId: null == receiverId ? _self.receiverId : receiverId // ignore: cast_nullable_to_non_nullable
as String,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,transactionTypeId: null == transactionTypeId ? _self.transactionTypeId : transactionTypeId // ignore: cast_nullable_to_non_nullable
as int,isTransactionByPhone: null == isTransactionByPhone ? _self.isTransactionByPhone : isTransactionByPhone // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateTransactionParams].
extension CreateTransactionParamsPatterns on CreateTransactionParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTransactionParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTransactionParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTransactionParams value)  $default,){
final _that = this;
switch (_that) {
case _CreateTransactionParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTransactionParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTransactionParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String senderId,  String receiverId,  String? paymentId,  double amount,  String description,  int transactionTypeId,  bool isTransactionByPhone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTransactionParams() when $default != null:
return $default(_that.senderId,_that.receiverId,_that.paymentId,_that.amount,_that.description,_that.transactionTypeId,_that.isTransactionByPhone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String senderId,  String receiverId,  String? paymentId,  double amount,  String description,  int transactionTypeId,  bool isTransactionByPhone)  $default,) {final _that = this;
switch (_that) {
case _CreateTransactionParams():
return $default(_that.senderId,_that.receiverId,_that.paymentId,_that.amount,_that.description,_that.transactionTypeId,_that.isTransactionByPhone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String senderId,  String receiverId,  String? paymentId,  double amount,  String description,  int transactionTypeId,  bool isTransactionByPhone)?  $default,) {final _that = this;
switch (_that) {
case _CreateTransactionParams() when $default != null:
return $default(_that.senderId,_that.receiverId,_that.paymentId,_that.amount,_that.description,_that.transactionTypeId,_that.isTransactionByPhone);case _:
  return null;

}
}

}

/// @nodoc


class _CreateTransactionParams implements CreateTransactionParams {
  const _CreateTransactionParams({required this.senderId, required this.receiverId, this.paymentId, required this.amount, required this.description, this.transactionTypeId = 6, this.isTransactionByPhone = true});
  

@override final  String senderId;
@override final  String receiverId;
@override final  String? paymentId;
@override final  double amount;
@override final  String description;
@override@JsonKey() final  int transactionTypeId;
@override@JsonKey() final  bool isTransactionByPhone;

/// Create a copy of CreateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTransactionParamsCopyWith<_CreateTransactionParams> get copyWith => __$CreateTransactionParamsCopyWithImpl<_CreateTransactionParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTransactionParams&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.transactionTypeId, transactionTypeId) || other.transactionTypeId == transactionTypeId)&&(identical(other.isTransactionByPhone, isTransactionByPhone) || other.isTransactionByPhone == isTransactionByPhone));
}


@override
int get hashCode => Object.hash(runtimeType,senderId,receiverId,paymentId,amount,description,transactionTypeId,isTransactionByPhone);

@override
String toString() {
  return 'CreateTransactionParams(senderId: $senderId, receiverId: $receiverId, paymentId: $paymentId, amount: $amount, description: $description, transactionTypeId: $transactionTypeId, isTransactionByPhone: $isTransactionByPhone)';
}


}

/// @nodoc
abstract mixin class _$CreateTransactionParamsCopyWith<$Res> implements $CreateTransactionParamsCopyWith<$Res> {
  factory _$CreateTransactionParamsCopyWith(_CreateTransactionParams value, $Res Function(_CreateTransactionParams) _then) = __$CreateTransactionParamsCopyWithImpl;
@override @useResult
$Res call({
 String senderId, String receiverId, String? paymentId, double amount, String description, int transactionTypeId, bool isTransactionByPhone
});




}
/// @nodoc
class __$CreateTransactionParamsCopyWithImpl<$Res>
    implements _$CreateTransactionParamsCopyWith<$Res> {
  __$CreateTransactionParamsCopyWithImpl(this._self, this._then);

  final _CreateTransactionParams _self;
  final $Res Function(_CreateTransactionParams) _then;

/// Create a copy of CreateTransactionParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? senderId = null,Object? receiverId = null,Object? paymentId = freezed,Object? amount = null,Object? description = null,Object? transactionTypeId = null,Object? isTransactionByPhone = null,}) {
  return _then(_CreateTransactionParams(
senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,receiverId: null == receiverId ? _self.receiverId : receiverId // ignore: cast_nullable_to_non_nullable
as String,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,transactionTypeId: null == transactionTypeId ? _self.transactionTypeId : transactionTypeId // ignore: cast_nullable_to_non_nullable
as int,isTransactionByPhone: null == isTransactionByPhone ? _self.isTransactionByPhone : isTransactionByPhone // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
