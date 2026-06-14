// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( Success value)?  success,TResult Function( Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( Success value)  success,required TResult Function( Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Loading():
return loading(_that);case Success():
return success(_that);case Failure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( Success value)?  success,TResult? Function( Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( WalletsEntity wallets,  List<TransactionItemEntity> transactions,  bool isTransactionsLoading,  GetTransactionsParams transactionFilters,  List<RequiredFileEntity> requiredFiles,  Map<int, File> kycFiles,  bool isUploading,  String? newAccountId)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.wallets,_that.transactions,_that.isTransactionsLoading,_that.transactionFilters,_that.requiredFiles,_that.kycFiles,_that.isUploading,_that.newAccountId);case Failure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( WalletsEntity wallets,  List<TransactionItemEntity> transactions,  bool isTransactionsLoading,  GetTransactionsParams transactionFilters,  List<RequiredFileEntity> requiredFiles,  Map<int, File> kycFiles,  bool isUploading,  String? newAccountId)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case Loading():
return loading();case Success():
return success(_that.wallets,_that.transactions,_that.isTransactionsLoading,_that.transactionFilters,_that.requiredFiles,_that.kycFiles,_that.isUploading,_that.newAccountId);case Failure():
return failure(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( WalletsEntity wallets,  List<TransactionItemEntity> transactions,  bool isTransactionsLoading,  GetTransactionsParams transactionFilters,  List<RequiredFileEntity> requiredFiles,  Map<int, File> kycFiles,  bool isUploading,  String? newAccountId)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.wallets,_that.transactions,_that.isTransactionsLoading,_that.transactionFilters,_that.requiredFiles,_that.kycFiles,_that.isUploading,_that.newAccountId);case Failure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class Loading implements HomeState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loading()';
}


}




/// @nodoc


class Success implements HomeState {
  const Success({required this.wallets, final  List<TransactionItemEntity> transactions = const [], this.isTransactionsLoading = false, this.transactionFilters = const GetTransactionsParams(), final  List<RequiredFileEntity> requiredFiles = const [], final  Map<int, File> kycFiles = const {}, this.isUploading = false, this.newAccountId}): _transactions = transactions,_requiredFiles = requiredFiles,_kycFiles = kycFiles;
  

 final  WalletsEntity wallets;
 final  List<TransactionItemEntity> _transactions;
@JsonKey() List<TransactionItemEntity> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}

@JsonKey() final  bool isTransactionsLoading;
@JsonKey() final  GetTransactionsParams transactionFilters;
 final  List<RequiredFileEntity> _requiredFiles;
@JsonKey() List<RequiredFileEntity> get requiredFiles {
  if (_requiredFiles is EqualUnmodifiableListView) return _requiredFiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_requiredFiles);
}

 final  Map<int, File> _kycFiles;
@JsonKey() Map<int, File> get kycFiles {
  if (_kycFiles is EqualUnmodifiableMapView) return _kycFiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_kycFiles);
}

@JsonKey() final  bool isUploading;
 final  String? newAccountId;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<Success> get copyWith => _$SuccessCopyWithImpl<Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success&&(identical(other.wallets, wallets) || other.wallets == wallets)&&const DeepCollectionEquality().equals(other._transactions, _transactions)&&(identical(other.isTransactionsLoading, isTransactionsLoading) || other.isTransactionsLoading == isTransactionsLoading)&&(identical(other.transactionFilters, transactionFilters) || other.transactionFilters == transactionFilters)&&const DeepCollectionEquality().equals(other._requiredFiles, _requiredFiles)&&const DeepCollectionEquality().equals(other._kycFiles, _kycFiles)&&(identical(other.isUploading, isUploading) || other.isUploading == isUploading)&&(identical(other.newAccountId, newAccountId) || other.newAccountId == newAccountId));
}


@override
int get hashCode => Object.hash(runtimeType,wallets,const DeepCollectionEquality().hash(_transactions),isTransactionsLoading,transactionFilters,const DeepCollectionEquality().hash(_requiredFiles),const DeepCollectionEquality().hash(_kycFiles),isUploading,newAccountId);

@override
String toString() {
  return 'HomeState.success(wallets: $wallets, transactions: $transactions, isTransactionsLoading: $isTransactionsLoading, transactionFilters: $transactionFilters, requiredFiles: $requiredFiles, kycFiles: $kycFiles, isUploading: $isUploading, newAccountId: $newAccountId)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 WalletsEntity wallets, List<TransactionItemEntity> transactions, bool isTransactionsLoading, GetTransactionsParams transactionFilters, List<RequiredFileEntity> requiredFiles, Map<int, File> kycFiles, bool isUploading, String? newAccountId
});


$WalletsEntityCopyWith<$Res> get wallets;$GetTransactionsParamsCopyWith<$Res> get transactionFilters;

}
/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? wallets = null,Object? transactions = null,Object? isTransactionsLoading = null,Object? transactionFilters = null,Object? requiredFiles = null,Object? kycFiles = null,Object? isUploading = null,Object? newAccountId = freezed,}) {
  return _then(Success(
wallets: null == wallets ? _self.wallets : wallets // ignore: cast_nullable_to_non_nullable
as WalletsEntity,transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<TransactionItemEntity>,isTransactionsLoading: null == isTransactionsLoading ? _self.isTransactionsLoading : isTransactionsLoading // ignore: cast_nullable_to_non_nullable
as bool,transactionFilters: null == transactionFilters ? _self.transactionFilters : transactionFilters // ignore: cast_nullable_to_non_nullable
as GetTransactionsParams,requiredFiles: null == requiredFiles ? _self._requiredFiles : requiredFiles // ignore: cast_nullable_to_non_nullable
as List<RequiredFileEntity>,kycFiles: null == kycFiles ? _self._kycFiles : kycFiles // ignore: cast_nullable_to_non_nullable
as Map<int, File>,isUploading: null == isUploading ? _self.isUploading : isUploading // ignore: cast_nullable_to_non_nullable
as bool,newAccountId: freezed == newAccountId ? _self.newAccountId : newAccountId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletsEntityCopyWith<$Res> get wallets {
  
  return $WalletsEntityCopyWith<$Res>(_self.wallets, (value) {
    return _then(_self.copyWith(wallets: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetTransactionsParamsCopyWith<$Res> get transactionFilters {
  
  return $GetTransactionsParamsCopyWith<$Res>(_self.transactionFilters, (value) {
    return _then(_self.copyWith(transactionFilters: value));
  });
}
}

/// @nodoc


class Failure implements HomeState {
  const Failure({required this.message});
  

 final  String message;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HomeState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Failure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
