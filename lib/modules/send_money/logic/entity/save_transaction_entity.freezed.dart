// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_transaction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SaveTransactionEntity {

 List<int> get transactionIds; int get statusCode; bool get isMultiCurrency; double get originalAmount; double get totalAmount; String? get originalCurrency; String? get targetCurrency; double? get convertedAmount; double? get exchangeRate; String? get backLink;
/// Create a copy of SaveTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveTransactionEntityCopyWith<SaveTransactionEntity> get copyWith => _$SaveTransactionEntityCopyWithImpl<SaveTransactionEntity>(this as SaveTransactionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveTransactionEntity&&const DeepCollectionEquality().equals(other.transactionIds, transactionIds)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.isMultiCurrency, isMultiCurrency) || other.isMultiCurrency == isMultiCurrency)&&(identical(other.originalAmount, originalAmount) || other.originalAmount == originalAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.originalCurrency, originalCurrency) || other.originalCurrency == originalCurrency)&&(identical(other.targetCurrency, targetCurrency) || other.targetCurrency == targetCurrency)&&(identical(other.convertedAmount, convertedAmount) || other.convertedAmount == convertedAmount)&&(identical(other.exchangeRate, exchangeRate) || other.exchangeRate == exchangeRate)&&(identical(other.backLink, backLink) || other.backLink == backLink));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(transactionIds),statusCode,isMultiCurrency,originalAmount,totalAmount,originalCurrency,targetCurrency,convertedAmount,exchangeRate,backLink);

@override
String toString() {
  return 'SaveTransactionEntity(transactionIds: $transactionIds, statusCode: $statusCode, isMultiCurrency: $isMultiCurrency, originalAmount: $originalAmount, totalAmount: $totalAmount, originalCurrency: $originalCurrency, targetCurrency: $targetCurrency, convertedAmount: $convertedAmount, exchangeRate: $exchangeRate, backLink: $backLink)';
}


}

/// @nodoc
abstract mixin class $SaveTransactionEntityCopyWith<$Res>  {
  factory $SaveTransactionEntityCopyWith(SaveTransactionEntity value, $Res Function(SaveTransactionEntity) _then) = _$SaveTransactionEntityCopyWithImpl;
@useResult
$Res call({
 List<int> transactionIds, int statusCode, bool isMultiCurrency, double originalAmount, double totalAmount, String? originalCurrency, String? targetCurrency, double? convertedAmount, double? exchangeRate, String? backLink
});




}
/// @nodoc
class _$SaveTransactionEntityCopyWithImpl<$Res>
    implements $SaveTransactionEntityCopyWith<$Res> {
  _$SaveTransactionEntityCopyWithImpl(this._self, this._then);

  final SaveTransactionEntity _self;
  final $Res Function(SaveTransactionEntity) _then;

/// Create a copy of SaveTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionIds = null,Object? statusCode = null,Object? isMultiCurrency = null,Object? originalAmount = null,Object? totalAmount = null,Object? originalCurrency = freezed,Object? targetCurrency = freezed,Object? convertedAmount = freezed,Object? exchangeRate = freezed,Object? backLink = freezed,}) {
  return _then(_self.copyWith(
transactionIds: null == transactionIds ? _self.transactionIds : transactionIds // ignore: cast_nullable_to_non_nullable
as List<int>,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,isMultiCurrency: null == isMultiCurrency ? _self.isMultiCurrency : isMultiCurrency // ignore: cast_nullable_to_non_nullable
as bool,originalAmount: null == originalAmount ? _self.originalAmount : originalAmount // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,originalCurrency: freezed == originalCurrency ? _self.originalCurrency : originalCurrency // ignore: cast_nullable_to_non_nullable
as String?,targetCurrency: freezed == targetCurrency ? _self.targetCurrency : targetCurrency // ignore: cast_nullable_to_non_nullable
as String?,convertedAmount: freezed == convertedAmount ? _self.convertedAmount : convertedAmount // ignore: cast_nullable_to_non_nullable
as double?,exchangeRate: freezed == exchangeRate ? _self.exchangeRate : exchangeRate // ignore: cast_nullable_to_non_nullable
as double?,backLink: freezed == backLink ? _self.backLink : backLink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SaveTransactionEntity].
extension SaveTransactionEntityPatterns on SaveTransactionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaveTransactionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaveTransactionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaveTransactionEntity value)  $default,){
final _that = this;
switch (_that) {
case _SaveTransactionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaveTransactionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SaveTransactionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<int> transactionIds,  int statusCode,  bool isMultiCurrency,  double originalAmount,  double totalAmount,  String? originalCurrency,  String? targetCurrency,  double? convertedAmount,  double? exchangeRate,  String? backLink)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaveTransactionEntity() when $default != null:
return $default(_that.transactionIds,_that.statusCode,_that.isMultiCurrency,_that.originalAmount,_that.totalAmount,_that.originalCurrency,_that.targetCurrency,_that.convertedAmount,_that.exchangeRate,_that.backLink);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<int> transactionIds,  int statusCode,  bool isMultiCurrency,  double originalAmount,  double totalAmount,  String? originalCurrency,  String? targetCurrency,  double? convertedAmount,  double? exchangeRate,  String? backLink)  $default,) {final _that = this;
switch (_that) {
case _SaveTransactionEntity():
return $default(_that.transactionIds,_that.statusCode,_that.isMultiCurrency,_that.originalAmount,_that.totalAmount,_that.originalCurrency,_that.targetCurrency,_that.convertedAmount,_that.exchangeRate,_that.backLink);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<int> transactionIds,  int statusCode,  bool isMultiCurrency,  double originalAmount,  double totalAmount,  String? originalCurrency,  String? targetCurrency,  double? convertedAmount,  double? exchangeRate,  String? backLink)?  $default,) {final _that = this;
switch (_that) {
case _SaveTransactionEntity() when $default != null:
return $default(_that.transactionIds,_that.statusCode,_that.isMultiCurrency,_that.originalAmount,_that.totalAmount,_that.originalCurrency,_that.targetCurrency,_that.convertedAmount,_that.exchangeRate,_that.backLink);case _:
  return null;

}
}

}

/// @nodoc


class _SaveTransactionEntity implements SaveTransactionEntity {
  const _SaveTransactionEntity({required final  List<int> transactionIds, required this.statusCode, required this.isMultiCurrency, required this.originalAmount, required this.totalAmount, this.originalCurrency, this.targetCurrency, this.convertedAmount, this.exchangeRate, this.backLink}): _transactionIds = transactionIds;
  

 final  List<int> _transactionIds;
@override List<int> get transactionIds {
  if (_transactionIds is EqualUnmodifiableListView) return _transactionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactionIds);
}

@override final  int statusCode;
@override final  bool isMultiCurrency;
@override final  double originalAmount;
@override final  double totalAmount;
@override final  String? originalCurrency;
@override final  String? targetCurrency;
@override final  double? convertedAmount;
@override final  double? exchangeRate;
@override final  String? backLink;

/// Create a copy of SaveTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveTransactionEntityCopyWith<_SaveTransactionEntity> get copyWith => __$SaveTransactionEntityCopyWithImpl<_SaveTransactionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveTransactionEntity&&const DeepCollectionEquality().equals(other._transactionIds, _transactionIds)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.isMultiCurrency, isMultiCurrency) || other.isMultiCurrency == isMultiCurrency)&&(identical(other.originalAmount, originalAmount) || other.originalAmount == originalAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.originalCurrency, originalCurrency) || other.originalCurrency == originalCurrency)&&(identical(other.targetCurrency, targetCurrency) || other.targetCurrency == targetCurrency)&&(identical(other.convertedAmount, convertedAmount) || other.convertedAmount == convertedAmount)&&(identical(other.exchangeRate, exchangeRate) || other.exchangeRate == exchangeRate)&&(identical(other.backLink, backLink) || other.backLink == backLink));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_transactionIds),statusCode,isMultiCurrency,originalAmount,totalAmount,originalCurrency,targetCurrency,convertedAmount,exchangeRate,backLink);

@override
String toString() {
  return 'SaveTransactionEntity(transactionIds: $transactionIds, statusCode: $statusCode, isMultiCurrency: $isMultiCurrency, originalAmount: $originalAmount, totalAmount: $totalAmount, originalCurrency: $originalCurrency, targetCurrency: $targetCurrency, convertedAmount: $convertedAmount, exchangeRate: $exchangeRate, backLink: $backLink)';
}


}

/// @nodoc
abstract mixin class _$SaveTransactionEntityCopyWith<$Res> implements $SaveTransactionEntityCopyWith<$Res> {
  factory _$SaveTransactionEntityCopyWith(_SaveTransactionEntity value, $Res Function(_SaveTransactionEntity) _then) = __$SaveTransactionEntityCopyWithImpl;
@override @useResult
$Res call({
 List<int> transactionIds, int statusCode, bool isMultiCurrency, double originalAmount, double totalAmount, String? originalCurrency, String? targetCurrency, double? convertedAmount, double? exchangeRate, String? backLink
});




}
/// @nodoc
class __$SaveTransactionEntityCopyWithImpl<$Res>
    implements _$SaveTransactionEntityCopyWith<$Res> {
  __$SaveTransactionEntityCopyWithImpl(this._self, this._then);

  final _SaveTransactionEntity _self;
  final $Res Function(_SaveTransactionEntity) _then;

/// Create a copy of SaveTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionIds = null,Object? statusCode = null,Object? isMultiCurrency = null,Object? originalAmount = null,Object? totalAmount = null,Object? originalCurrency = freezed,Object? targetCurrency = freezed,Object? convertedAmount = freezed,Object? exchangeRate = freezed,Object? backLink = freezed,}) {
  return _then(_SaveTransactionEntity(
transactionIds: null == transactionIds ? _self._transactionIds : transactionIds // ignore: cast_nullable_to_non_nullable
as List<int>,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,isMultiCurrency: null == isMultiCurrency ? _self.isMultiCurrency : isMultiCurrency // ignore: cast_nullable_to_non_nullable
as bool,originalAmount: null == originalAmount ? _self.originalAmount : originalAmount // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,originalCurrency: freezed == originalCurrency ? _self.originalCurrency : originalCurrency // ignore: cast_nullable_to_non_nullable
as String?,targetCurrency: freezed == targetCurrency ? _self.targetCurrency : targetCurrency // ignore: cast_nullable_to_non_nullable
as String?,convertedAmount: freezed == convertedAmount ? _self.convertedAmount : convertedAmount // ignore: cast_nullable_to_non_nullable
as double?,exchangeRate: freezed == exchangeRate ? _self.exchangeRate : exchangeRate // ignore: cast_nullable_to_non_nullable
as double?,backLink: freezed == backLink ? _self.backLink : backLink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
