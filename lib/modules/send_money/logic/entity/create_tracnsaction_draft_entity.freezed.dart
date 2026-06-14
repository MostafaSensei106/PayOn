// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_tracnsaction_draft_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateTracnsactionDraftEntity {

 double get fess; List<int> get draftIds; String get referenceNumber; String get originalCurrency; double get originalAmount; double get totalAmount; String get state; String get commissionPaidBy;
/// Create a copy of CreateTracnsactionDraftEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTracnsactionDraftEntityCopyWith<CreateTracnsactionDraftEntity> get copyWith => _$CreateTracnsactionDraftEntityCopyWithImpl<CreateTracnsactionDraftEntity>(this as CreateTracnsactionDraftEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTracnsactionDraftEntity&&(identical(other.fess, fess) || other.fess == fess)&&const DeepCollectionEquality().equals(other.draftIds, draftIds)&&(identical(other.referenceNumber, referenceNumber) || other.referenceNumber == referenceNumber)&&(identical(other.originalCurrency, originalCurrency) || other.originalCurrency == originalCurrency)&&(identical(other.originalAmount, originalAmount) || other.originalAmount == originalAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.state, state) || other.state == state)&&(identical(other.commissionPaidBy, commissionPaidBy) || other.commissionPaidBy == commissionPaidBy));
}


@override
int get hashCode => Object.hash(runtimeType,fess,const DeepCollectionEquality().hash(draftIds),referenceNumber,originalCurrency,originalAmount,totalAmount,state,commissionPaidBy);

@override
String toString() {
  return 'CreateTracnsactionDraftEntity(fess: $fess, draftIds: $draftIds, referenceNumber: $referenceNumber, originalCurrency: $originalCurrency, originalAmount: $originalAmount, totalAmount: $totalAmount, state: $state, commissionPaidBy: $commissionPaidBy)';
}


}

/// @nodoc
abstract mixin class $CreateTracnsactionDraftEntityCopyWith<$Res>  {
  factory $CreateTracnsactionDraftEntityCopyWith(CreateTracnsactionDraftEntity value, $Res Function(CreateTracnsactionDraftEntity) _then) = _$CreateTracnsactionDraftEntityCopyWithImpl;
@useResult
$Res call({
 double fess, List<int> draftIds, String referenceNumber, String originalCurrency, double originalAmount, double totalAmount, String state, String commissionPaidBy
});




}
/// @nodoc
class _$CreateTracnsactionDraftEntityCopyWithImpl<$Res>
    implements $CreateTracnsactionDraftEntityCopyWith<$Res> {
  _$CreateTracnsactionDraftEntityCopyWithImpl(this._self, this._then);

  final CreateTracnsactionDraftEntity _self;
  final $Res Function(CreateTracnsactionDraftEntity) _then;

/// Create a copy of CreateTracnsactionDraftEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fess = null,Object? draftIds = null,Object? referenceNumber = null,Object? originalCurrency = null,Object? originalAmount = null,Object? totalAmount = null,Object? state = null,Object? commissionPaidBy = null,}) {
  return _then(_self.copyWith(
fess: null == fess ? _self.fess : fess // ignore: cast_nullable_to_non_nullable
as double,draftIds: null == draftIds ? _self.draftIds : draftIds // ignore: cast_nullable_to_non_nullable
as List<int>,referenceNumber: null == referenceNumber ? _self.referenceNumber : referenceNumber // ignore: cast_nullable_to_non_nullable
as String,originalCurrency: null == originalCurrency ? _self.originalCurrency : originalCurrency // ignore: cast_nullable_to_non_nullable
as String,originalAmount: null == originalAmount ? _self.originalAmount : originalAmount // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,commissionPaidBy: null == commissionPaidBy ? _self.commissionPaidBy : commissionPaidBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateTracnsactionDraftEntity].
extension CreateTracnsactionDraftEntityPatterns on CreateTracnsactionDraftEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTracnsactionDraftEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTracnsactionDraftEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTracnsactionDraftEntity value)  $default,){
final _that = this;
switch (_that) {
case _CreateTracnsactionDraftEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTracnsactionDraftEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTracnsactionDraftEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double fess,  List<int> draftIds,  String referenceNumber,  String originalCurrency,  double originalAmount,  double totalAmount,  String state,  String commissionPaidBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTracnsactionDraftEntity() when $default != null:
return $default(_that.fess,_that.draftIds,_that.referenceNumber,_that.originalCurrency,_that.originalAmount,_that.totalAmount,_that.state,_that.commissionPaidBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double fess,  List<int> draftIds,  String referenceNumber,  String originalCurrency,  double originalAmount,  double totalAmount,  String state,  String commissionPaidBy)  $default,) {final _that = this;
switch (_that) {
case _CreateTracnsactionDraftEntity():
return $default(_that.fess,_that.draftIds,_that.referenceNumber,_that.originalCurrency,_that.originalAmount,_that.totalAmount,_that.state,_that.commissionPaidBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double fess,  List<int> draftIds,  String referenceNumber,  String originalCurrency,  double originalAmount,  double totalAmount,  String state,  String commissionPaidBy)?  $default,) {final _that = this;
switch (_that) {
case _CreateTracnsactionDraftEntity() when $default != null:
return $default(_that.fess,_that.draftIds,_that.referenceNumber,_that.originalCurrency,_that.originalAmount,_that.totalAmount,_that.state,_that.commissionPaidBy);case _:
  return null;

}
}

}

/// @nodoc


class _CreateTracnsactionDraftEntity implements CreateTracnsactionDraftEntity {
  const _CreateTracnsactionDraftEntity({required this.fess, required final  List<int> draftIds, required this.referenceNumber, required this.originalCurrency, required this.originalAmount, required this.totalAmount, required this.state, required this.commissionPaidBy}): _draftIds = draftIds;
  

@override final  double fess;
 final  List<int> _draftIds;
@override List<int> get draftIds {
  if (_draftIds is EqualUnmodifiableListView) return _draftIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_draftIds);
}

@override final  String referenceNumber;
@override final  String originalCurrency;
@override final  double originalAmount;
@override final  double totalAmount;
@override final  String state;
@override final  String commissionPaidBy;

/// Create a copy of CreateTracnsactionDraftEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTracnsactionDraftEntityCopyWith<_CreateTracnsactionDraftEntity> get copyWith => __$CreateTracnsactionDraftEntityCopyWithImpl<_CreateTracnsactionDraftEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTracnsactionDraftEntity&&(identical(other.fess, fess) || other.fess == fess)&&const DeepCollectionEquality().equals(other._draftIds, _draftIds)&&(identical(other.referenceNumber, referenceNumber) || other.referenceNumber == referenceNumber)&&(identical(other.originalCurrency, originalCurrency) || other.originalCurrency == originalCurrency)&&(identical(other.originalAmount, originalAmount) || other.originalAmount == originalAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.state, state) || other.state == state)&&(identical(other.commissionPaidBy, commissionPaidBy) || other.commissionPaidBy == commissionPaidBy));
}


@override
int get hashCode => Object.hash(runtimeType,fess,const DeepCollectionEquality().hash(_draftIds),referenceNumber,originalCurrency,originalAmount,totalAmount,state,commissionPaidBy);

@override
String toString() {
  return 'CreateTracnsactionDraftEntity(fess: $fess, draftIds: $draftIds, referenceNumber: $referenceNumber, originalCurrency: $originalCurrency, originalAmount: $originalAmount, totalAmount: $totalAmount, state: $state, commissionPaidBy: $commissionPaidBy)';
}


}

/// @nodoc
abstract mixin class _$CreateTracnsactionDraftEntityCopyWith<$Res> implements $CreateTracnsactionDraftEntityCopyWith<$Res> {
  factory _$CreateTracnsactionDraftEntityCopyWith(_CreateTracnsactionDraftEntity value, $Res Function(_CreateTracnsactionDraftEntity) _then) = __$CreateTracnsactionDraftEntityCopyWithImpl;
@override @useResult
$Res call({
 double fess, List<int> draftIds, String referenceNumber, String originalCurrency, double originalAmount, double totalAmount, String state, String commissionPaidBy
});




}
/// @nodoc
class __$CreateTracnsactionDraftEntityCopyWithImpl<$Res>
    implements _$CreateTracnsactionDraftEntityCopyWith<$Res> {
  __$CreateTracnsactionDraftEntityCopyWithImpl(this._self, this._then);

  final _CreateTracnsactionDraftEntity _self;
  final $Res Function(_CreateTracnsactionDraftEntity) _then;

/// Create a copy of CreateTracnsactionDraftEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fess = null,Object? draftIds = null,Object? referenceNumber = null,Object? originalCurrency = null,Object? originalAmount = null,Object? totalAmount = null,Object? state = null,Object? commissionPaidBy = null,}) {
  return _then(_CreateTracnsactionDraftEntity(
fess: null == fess ? _self.fess : fess // ignore: cast_nullable_to_non_nullable
as double,draftIds: null == draftIds ? _self._draftIds : draftIds // ignore: cast_nullable_to_non_nullable
as List<int>,referenceNumber: null == referenceNumber ? _self.referenceNumber : referenceNumber // ignore: cast_nullable_to_non_nullable
as String,originalCurrency: null == originalCurrency ? _self.originalCurrency : originalCurrency // ignore: cast_nullable_to_non_nullable
as String,originalAmount: null == originalAmount ? _self.originalAmount : originalAmount // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,commissionPaidBy: null == commissionPaidBy ? _self.commissionPaidBy : commissionPaidBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
