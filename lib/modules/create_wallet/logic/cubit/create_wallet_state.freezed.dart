// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_wallet_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateWalletState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateWalletState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateWalletState()';
}


}

/// @nodoc
class $CreateWalletStateCopyWith<$Res>  {
$CreateWalletStateCopyWith(CreateWalletState _, $Res Function(CreateWalletState) __);
}


/// Adds pattern-matching-related methods to [CreateWalletState].
extension CreateWalletStatePatterns on CreateWalletState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _CurrenciesLoaded value)?  currenciesLoaded,TResult Function( _WalletCreated value)?  walletCreated,TResult Function( _PinCreated value)?  pinCreated,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _CurrenciesLoaded() when currenciesLoaded != null:
return currenciesLoaded(_that);case _WalletCreated() when walletCreated != null:
return walletCreated(_that);case _PinCreated() when pinCreated != null:
return pinCreated(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _CurrenciesLoaded value)  currenciesLoaded,required TResult Function( _WalletCreated value)  walletCreated,required TResult Function( _PinCreated value)  pinCreated,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _CurrenciesLoaded():
return currenciesLoaded(_that);case _WalletCreated():
return walletCreated(_that);case _PinCreated():
return pinCreated(_that);case _Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _CurrenciesLoaded value)?  currenciesLoaded,TResult? Function( _WalletCreated value)?  walletCreated,TResult? Function( _PinCreated value)?  pinCreated,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _CurrenciesLoaded() when currenciesLoaded != null:
return currenciesLoaded(_that);case _WalletCreated() when walletCreated != null:
return walletCreated(_that);case _PinCreated() when pinCreated != null:
return pinCreated(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<CurrencyEntity> currencies)?  currenciesLoaded,TResult Function()?  walletCreated,TResult Function()?  pinCreated,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _CurrenciesLoaded() when currenciesLoaded != null:
return currenciesLoaded(_that.currencies);case _WalletCreated() when walletCreated != null:
return walletCreated();case _PinCreated() when pinCreated != null:
return pinCreated();case _Failure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<CurrencyEntity> currencies)  currenciesLoaded,required TResult Function()  walletCreated,required TResult Function()  pinCreated,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _CurrenciesLoaded():
return currenciesLoaded(_that.currencies);case _WalletCreated():
return walletCreated();case _PinCreated():
return pinCreated();case _Failure():
return failure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<CurrencyEntity> currencies)?  currenciesLoaded,TResult? Function()?  walletCreated,TResult? Function()?  pinCreated,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _CurrenciesLoaded() when currenciesLoaded != null:
return currenciesLoaded(_that.currencies);case _WalletCreated() when walletCreated != null:
return walletCreated();case _PinCreated() when pinCreated != null:
return pinCreated();case _Failure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CreateWalletState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateWalletState.initial()';
}


}




/// @nodoc


class _Loading implements CreateWalletState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateWalletState.loading()';
}


}




/// @nodoc


class _CurrenciesLoaded implements CreateWalletState {
  const _CurrenciesLoaded(final  List<CurrencyEntity> currencies): _currencies = currencies;
  

 final  List<CurrencyEntity> _currencies;
 List<CurrencyEntity> get currencies {
  if (_currencies is EqualUnmodifiableListView) return _currencies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currencies);
}


/// Create a copy of CreateWalletState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrenciesLoadedCopyWith<_CurrenciesLoaded> get copyWith => __$CurrenciesLoadedCopyWithImpl<_CurrenciesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrenciesLoaded&&const DeepCollectionEquality().equals(other._currencies, _currencies));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currencies));

@override
String toString() {
  return 'CreateWalletState.currenciesLoaded(currencies: $currencies)';
}


}

/// @nodoc
abstract mixin class _$CurrenciesLoadedCopyWith<$Res> implements $CreateWalletStateCopyWith<$Res> {
  factory _$CurrenciesLoadedCopyWith(_CurrenciesLoaded value, $Res Function(_CurrenciesLoaded) _then) = __$CurrenciesLoadedCopyWithImpl;
@useResult
$Res call({
 List<CurrencyEntity> currencies
});




}
/// @nodoc
class __$CurrenciesLoadedCopyWithImpl<$Res>
    implements _$CurrenciesLoadedCopyWith<$Res> {
  __$CurrenciesLoadedCopyWithImpl(this._self, this._then);

  final _CurrenciesLoaded _self;
  final $Res Function(_CurrenciesLoaded) _then;

/// Create a copy of CreateWalletState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currencies = null,}) {
  return _then(_CurrenciesLoaded(
null == currencies ? _self._currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<CurrencyEntity>,
  ));
}


}

/// @nodoc


class _WalletCreated implements CreateWalletState {
  const _WalletCreated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletCreated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateWalletState.walletCreated()';
}


}




/// @nodoc


class _PinCreated implements CreateWalletState {
  const _PinCreated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PinCreated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateWalletState.pinCreated()';
}


}




/// @nodoc


class _Failure implements CreateWalletState {
  const _Failure(this.message);
  

 final  String message;

/// Create a copy of CreateWalletState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CreateWalletState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $CreateWalletStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of CreateWalletState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Failure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
