// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_transactions_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetTransactionsParams {

 double get minAmount; double get maxAmount; int get transactionTypeId; String get fromDate; String get toDate; String get searchQuery; String get accountId; int get currencyId; int get page; int get size;
/// Create a copy of GetTransactionsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTransactionsParamsCopyWith<GetTransactionsParams> get copyWith => _$GetTransactionsParamsCopyWithImpl<GetTransactionsParams>(this as GetTransactionsParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTransactionsParams&&(identical(other.minAmount, minAmount) || other.minAmount == minAmount)&&(identical(other.maxAmount, maxAmount) || other.maxAmount == maxAmount)&&(identical(other.transactionTypeId, transactionTypeId) || other.transactionTypeId == transactionTypeId)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.currencyId, currencyId) || other.currencyId == currencyId)&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size));
}


@override
int get hashCode => Object.hash(runtimeType,minAmount,maxAmount,transactionTypeId,fromDate,toDate,searchQuery,accountId,currencyId,page,size);

@override
String toString() {
  return 'GetTransactionsParams(minAmount: $minAmount, maxAmount: $maxAmount, transactionTypeId: $transactionTypeId, fromDate: $fromDate, toDate: $toDate, searchQuery: $searchQuery, accountId: $accountId, currencyId: $currencyId, page: $page, size: $size)';
}


}

/// @nodoc
abstract mixin class $GetTransactionsParamsCopyWith<$Res>  {
  factory $GetTransactionsParamsCopyWith(GetTransactionsParams value, $Res Function(GetTransactionsParams) _then) = _$GetTransactionsParamsCopyWithImpl;
@useResult
$Res call({
 double minAmount, double maxAmount, int transactionTypeId, String fromDate, String toDate, String searchQuery, String accountId, int currencyId, int page, int size
});




}
/// @nodoc
class _$GetTransactionsParamsCopyWithImpl<$Res>
    implements $GetTransactionsParamsCopyWith<$Res> {
  _$GetTransactionsParamsCopyWithImpl(this._self, this._then);

  final GetTransactionsParams _self;
  final $Res Function(GetTransactionsParams) _then;

/// Create a copy of GetTransactionsParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? minAmount = null,Object? maxAmount = null,Object? transactionTypeId = null,Object? fromDate = null,Object? toDate = null,Object? searchQuery = null,Object? accountId = null,Object? currencyId = null,Object? page = null,Object? size = null,}) {
  return _then(_self.copyWith(
minAmount: null == minAmount ? _self.minAmount : minAmount // ignore: cast_nullable_to_non_nullable
as double,maxAmount: null == maxAmount ? _self.maxAmount : maxAmount // ignore: cast_nullable_to_non_nullable
as double,transactionTypeId: null == transactionTypeId ? _self.transactionTypeId : transactionTypeId // ignore: cast_nullable_to_non_nullable
as int,fromDate: null == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as String,toDate: null == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as String,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,currencyId: null == currencyId ? _self.currencyId : currencyId // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetTransactionsParams].
extension GetTransactionsParamsPatterns on GetTransactionsParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetTransactionsParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetTransactionsParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetTransactionsParams value)  $default,){
final _that = this;
switch (_that) {
case _GetTransactionsParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetTransactionsParams value)?  $default,){
final _that = this;
switch (_that) {
case _GetTransactionsParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double minAmount,  double maxAmount,  int transactionTypeId,  String fromDate,  String toDate,  String searchQuery,  String accountId,  int currencyId,  int page,  int size)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetTransactionsParams() when $default != null:
return $default(_that.minAmount,_that.maxAmount,_that.transactionTypeId,_that.fromDate,_that.toDate,_that.searchQuery,_that.accountId,_that.currencyId,_that.page,_that.size);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double minAmount,  double maxAmount,  int transactionTypeId,  String fromDate,  String toDate,  String searchQuery,  String accountId,  int currencyId,  int page,  int size)  $default,) {final _that = this;
switch (_that) {
case _GetTransactionsParams():
return $default(_that.minAmount,_that.maxAmount,_that.transactionTypeId,_that.fromDate,_that.toDate,_that.searchQuery,_that.accountId,_that.currencyId,_that.page,_that.size);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double minAmount,  double maxAmount,  int transactionTypeId,  String fromDate,  String toDate,  String searchQuery,  String accountId,  int currencyId,  int page,  int size)?  $default,) {final _that = this;
switch (_that) {
case _GetTransactionsParams() when $default != null:
return $default(_that.minAmount,_that.maxAmount,_that.transactionTypeId,_that.fromDate,_that.toDate,_that.searchQuery,_that.accountId,_that.currencyId,_that.page,_that.size);case _:
  return null;

}
}

}

/// @nodoc


class _GetTransactionsParams implements GetTransactionsParams {
  const _GetTransactionsParams({this.minAmount = 0.0, this.maxAmount = 0.0, this.transactionTypeId = 0, this.fromDate = '', this.toDate = '', this.searchQuery = '', this.accountId = '', this.currencyId = 0, this.page = 1, this.size = 20});
  

@override@JsonKey() final  double minAmount;
@override@JsonKey() final  double maxAmount;
@override@JsonKey() final  int transactionTypeId;
@override@JsonKey() final  String fromDate;
@override@JsonKey() final  String toDate;
@override@JsonKey() final  String searchQuery;
@override@JsonKey() final  String accountId;
@override@JsonKey() final  int currencyId;
@override@JsonKey() final  int page;
@override@JsonKey() final  int size;

/// Create a copy of GetTransactionsParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTransactionsParamsCopyWith<_GetTransactionsParams> get copyWith => __$GetTransactionsParamsCopyWithImpl<_GetTransactionsParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTransactionsParams&&(identical(other.minAmount, minAmount) || other.minAmount == minAmount)&&(identical(other.maxAmount, maxAmount) || other.maxAmount == maxAmount)&&(identical(other.transactionTypeId, transactionTypeId) || other.transactionTypeId == transactionTypeId)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.currencyId, currencyId) || other.currencyId == currencyId)&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size));
}


@override
int get hashCode => Object.hash(runtimeType,minAmount,maxAmount,transactionTypeId,fromDate,toDate,searchQuery,accountId,currencyId,page,size);

@override
String toString() {
  return 'GetTransactionsParams(minAmount: $minAmount, maxAmount: $maxAmount, transactionTypeId: $transactionTypeId, fromDate: $fromDate, toDate: $toDate, searchQuery: $searchQuery, accountId: $accountId, currencyId: $currencyId, page: $page, size: $size)';
}


}

/// @nodoc
abstract mixin class _$GetTransactionsParamsCopyWith<$Res> implements $GetTransactionsParamsCopyWith<$Res> {
  factory _$GetTransactionsParamsCopyWith(_GetTransactionsParams value, $Res Function(_GetTransactionsParams) _then) = __$GetTransactionsParamsCopyWithImpl;
@override @useResult
$Res call({
 double minAmount, double maxAmount, int transactionTypeId, String fromDate, String toDate, String searchQuery, String accountId, int currencyId, int page, int size
});




}
/// @nodoc
class __$GetTransactionsParamsCopyWithImpl<$Res>
    implements _$GetTransactionsParamsCopyWith<$Res> {
  __$GetTransactionsParamsCopyWithImpl(this._self, this._then);

  final _GetTransactionsParams _self;
  final $Res Function(_GetTransactionsParams) _then;

/// Create a copy of GetTransactionsParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? minAmount = null,Object? maxAmount = null,Object? transactionTypeId = null,Object? fromDate = null,Object? toDate = null,Object? searchQuery = null,Object? accountId = null,Object? currencyId = null,Object? page = null,Object? size = null,}) {
  return _then(_GetTransactionsParams(
minAmount: null == minAmount ? _self.minAmount : minAmount // ignore: cast_nullable_to_non_nullable
as double,maxAmount: null == maxAmount ? _self.maxAmount : maxAmount // ignore: cast_nullable_to_non_nullable
as double,transactionTypeId: null == transactionTypeId ? _self.transactionTypeId : transactionTypeId // ignore: cast_nullable_to_non_nullable
as int,fromDate: null == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as String,toDate: null == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as String,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,currencyId: null == currencyId ? _self.currencyId : currencyId // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
