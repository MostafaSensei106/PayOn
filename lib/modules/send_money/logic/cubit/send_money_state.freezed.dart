// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_money_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SendMoneyState implements DiagnosticableTreeMixin {

 SendMoneyFormState get formState;
/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendMoneyStateCopyWith<SendMoneyState> get copyWith => _$SendMoneyStateCopyWithImpl<SendMoneyState>(this as SendMoneyState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SendMoneyState'))
    ..add(DiagnosticsProperty('formState', formState));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendMoneyState&&(identical(other.formState, formState) || other.formState == formState));
}


@override
int get hashCode => Object.hash(runtimeType,formState);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SendMoneyState(formState: $formState)';
}


}

/// @nodoc
abstract mixin class $SendMoneyStateCopyWith<$Res>  {
  factory $SendMoneyStateCopyWith(SendMoneyState value, $Res Function(SendMoneyState) _then) = _$SendMoneyStateCopyWithImpl;
@useResult
$Res call({
 SendMoneyFormState formState
});


$SendMoneyFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class _$SendMoneyStateCopyWithImpl<$Res>
    implements $SendMoneyStateCopyWith<$Res> {
  _$SendMoneyStateCopyWithImpl(this._self, this._then);

  final SendMoneyState _self;
  final $Res Function(SendMoneyState) _then;

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? formState = null,}) {
  return _then(_self.copyWith(
formState: null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as SendMoneyFormState,
  ));
}
/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SendMoneyFormStateCopyWith<$Res> get formState {
  
  return $SendMoneyFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}
}


/// Adds pattern-matching-related methods to [SendMoneyState].
extension SendMoneyStatePatterns on SendMoneyState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( Success value)?  success,TResult Function( TransactionDraftSuccess value)?  transactionDraftSuccess,TResult Function( TransactionSaved value)?  transactionSaved,TResult Function( Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case TransactionDraftSuccess() when transactionDraftSuccess != null:
return transactionDraftSuccess(_that);case TransactionSaved() when transactionSaved != null:
return transactionSaved(_that);case Failure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( Success value)  success,required TResult Function( TransactionDraftSuccess value)  transactionDraftSuccess,required TResult Function( TransactionSaved value)  transactionSaved,required TResult Function( Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Loading():
return loading(_that);case Success():
return success(_that);case TransactionDraftSuccess():
return transactionDraftSuccess(_that);case TransactionSaved():
return transactionSaved(_that);case Failure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( Success value)?  success,TResult? Function( TransactionDraftSuccess value)?  transactionDraftSuccess,TResult? Function( TransactionSaved value)?  transactionSaved,TResult? Function( Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case TransactionDraftSuccess() when transactionDraftSuccess != null:
return transactionDraftSuccess(_that);case TransactionSaved() when transactionSaved != null:
return transactionSaved(_that);case Failure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( SendMoneyFormState formState)?  initial,TResult Function( SendMoneyFormState formState)?  loading,TResult Function( SendMoneyFormState formState,  CheckWalletEntity data)?  success,TResult Function( SendMoneyFormState formState,  CreateTracnsactionDraftEntity draft)?  transactionDraftSuccess,TResult Function( SendMoneyFormState formState,  SaveTransactionEntity data)?  transactionSaved,TResult Function( SendMoneyFormState formState,  String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.formState);case Loading() when loading != null:
return loading(_that.formState);case Success() when success != null:
return success(_that.formState,_that.data);case TransactionDraftSuccess() when transactionDraftSuccess != null:
return transactionDraftSuccess(_that.formState,_that.draft);case TransactionSaved() when transactionSaved != null:
return transactionSaved(_that.formState,_that.data);case Failure() when failure != null:
return failure(_that.formState,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( SendMoneyFormState formState)  initial,required TResult Function( SendMoneyFormState formState)  loading,required TResult Function( SendMoneyFormState formState,  CheckWalletEntity data)  success,required TResult Function( SendMoneyFormState formState,  CreateTracnsactionDraftEntity draft)  transactionDraftSuccess,required TResult Function( SendMoneyFormState formState,  SaveTransactionEntity data)  transactionSaved,required TResult Function( SendMoneyFormState formState,  String message)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.formState);case Loading():
return loading(_that.formState);case Success():
return success(_that.formState,_that.data);case TransactionDraftSuccess():
return transactionDraftSuccess(_that.formState,_that.draft);case TransactionSaved():
return transactionSaved(_that.formState,_that.data);case Failure():
return failure(_that.formState,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( SendMoneyFormState formState)?  initial,TResult? Function( SendMoneyFormState formState)?  loading,TResult? Function( SendMoneyFormState formState,  CheckWalletEntity data)?  success,TResult? Function( SendMoneyFormState formState,  CreateTracnsactionDraftEntity draft)?  transactionDraftSuccess,TResult? Function( SendMoneyFormState formState,  SaveTransactionEntity data)?  transactionSaved,TResult? Function( SendMoneyFormState formState,  String message)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.formState);case Loading() when loading != null:
return loading(_that.formState);case Success() when success != null:
return success(_that.formState,_that.data);case TransactionDraftSuccess() when transactionDraftSuccess != null:
return transactionDraftSuccess(_that.formState,_that.draft);case TransactionSaved() when transactionSaved != null:
return transactionSaved(_that.formState,_that.data);case Failure() when failure != null:
return failure(_that.formState,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial with DiagnosticableTreeMixin implements SendMoneyState {
  const _Initial(this.formState);
  

@override final  SendMoneyFormState formState;

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SendMoneyState.initial'))
    ..add(DiagnosticsProperty('formState', formState));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.formState, formState) || other.formState == formState));
}


@override
int get hashCode => Object.hash(runtimeType,formState);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SendMoneyState.initial(formState: $formState)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $SendMoneyStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 SendMoneyFormState formState
});


@override $SendMoneyFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,}) {
  return _then(_Initial(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as SendMoneyFormState,
  ));
}

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SendMoneyFormStateCopyWith<$Res> get formState {
  
  return $SendMoneyFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}
}

/// @nodoc


class Loading with DiagnosticableTreeMixin implements SendMoneyState {
  const Loading(this.formState);
  

@override final  SendMoneyFormState formState;

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingCopyWith<Loading> get copyWith => _$LoadingCopyWithImpl<Loading>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SendMoneyState.loading'))
    ..add(DiagnosticsProperty('formState', formState));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading&&(identical(other.formState, formState) || other.formState == formState));
}


@override
int get hashCode => Object.hash(runtimeType,formState);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SendMoneyState.loading(formState: $formState)';
}


}

/// @nodoc
abstract mixin class $LoadingCopyWith<$Res> implements $SendMoneyStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) _then) = _$LoadingCopyWithImpl;
@override @useResult
$Res call({
 SendMoneyFormState formState
});


@override $SendMoneyFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(this._self, this._then);

  final Loading _self;
  final $Res Function(Loading) _then;

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,}) {
  return _then(Loading(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as SendMoneyFormState,
  ));
}

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SendMoneyFormStateCopyWith<$Res> get formState {
  
  return $SendMoneyFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}
}

/// @nodoc


class Success with DiagnosticableTreeMixin implements SendMoneyState {
  const Success(this.formState, {required this.data});
  

@override final  SendMoneyFormState formState;
 final  CheckWalletEntity data;

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<Success> get copyWith => _$SuccessCopyWithImpl<Success>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SendMoneyState.success'))
    ..add(DiagnosticsProperty('formState', formState))..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success&&(identical(other.formState, formState) || other.formState == formState)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,formState,data);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SendMoneyState.success(formState: $formState, data: $data)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res> implements $SendMoneyStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) = _$SuccessCopyWithImpl;
@override @useResult
$Res call({
 SendMoneyFormState formState, CheckWalletEntity data
});


@override $SendMoneyFormStateCopyWith<$Res> get formState;$CheckWalletEntityCopyWith<$Res> get data;

}
/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,Object? data = null,}) {
  return _then(Success(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as SendMoneyFormState,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CheckWalletEntity,
  ));
}

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SendMoneyFormStateCopyWith<$Res> get formState {
  
  return $SendMoneyFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckWalletEntityCopyWith<$Res> get data {
  
  return $CheckWalletEntityCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class TransactionDraftSuccess with DiagnosticableTreeMixin implements SendMoneyState {
  const TransactionDraftSuccess(this.formState, {required this.draft});
  

@override final  SendMoneyFormState formState;
 final  CreateTracnsactionDraftEntity draft;

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionDraftSuccessCopyWith<TransactionDraftSuccess> get copyWith => _$TransactionDraftSuccessCopyWithImpl<TransactionDraftSuccess>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SendMoneyState.transactionDraftSuccess'))
    ..add(DiagnosticsProperty('formState', formState))..add(DiagnosticsProperty('draft', draft));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionDraftSuccess&&(identical(other.formState, formState) || other.formState == formState)&&(identical(other.draft, draft) || other.draft == draft));
}


@override
int get hashCode => Object.hash(runtimeType,formState,draft);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SendMoneyState.transactionDraftSuccess(formState: $formState, draft: $draft)';
}


}

/// @nodoc
abstract mixin class $TransactionDraftSuccessCopyWith<$Res> implements $SendMoneyStateCopyWith<$Res> {
  factory $TransactionDraftSuccessCopyWith(TransactionDraftSuccess value, $Res Function(TransactionDraftSuccess) _then) = _$TransactionDraftSuccessCopyWithImpl;
@override @useResult
$Res call({
 SendMoneyFormState formState, CreateTracnsactionDraftEntity draft
});


@override $SendMoneyFormStateCopyWith<$Res> get formState;$CreateTracnsactionDraftEntityCopyWith<$Res> get draft;

}
/// @nodoc
class _$TransactionDraftSuccessCopyWithImpl<$Res>
    implements $TransactionDraftSuccessCopyWith<$Res> {
  _$TransactionDraftSuccessCopyWithImpl(this._self, this._then);

  final TransactionDraftSuccess _self;
  final $Res Function(TransactionDraftSuccess) _then;

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,Object? draft = null,}) {
  return _then(TransactionDraftSuccess(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as SendMoneyFormState,draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as CreateTracnsactionDraftEntity,
  ));
}

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SendMoneyFormStateCopyWith<$Res> get formState {
  
  return $SendMoneyFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateTracnsactionDraftEntityCopyWith<$Res> get draft {
  
  return $CreateTracnsactionDraftEntityCopyWith<$Res>(_self.draft, (value) {
    return _then(_self.copyWith(draft: value));
  });
}
}

/// @nodoc


class TransactionSaved with DiagnosticableTreeMixin implements SendMoneyState {
  const TransactionSaved(this.formState, {required this.data});
  

@override final  SendMoneyFormState formState;
 final  SaveTransactionEntity data;

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionSavedCopyWith<TransactionSaved> get copyWith => _$TransactionSavedCopyWithImpl<TransactionSaved>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SendMoneyState.transactionSaved'))
    ..add(DiagnosticsProperty('formState', formState))..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionSaved&&(identical(other.formState, formState) || other.formState == formState)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,formState,data);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SendMoneyState.transactionSaved(formState: $formState, data: $data)';
}


}

/// @nodoc
abstract mixin class $TransactionSavedCopyWith<$Res> implements $SendMoneyStateCopyWith<$Res> {
  factory $TransactionSavedCopyWith(TransactionSaved value, $Res Function(TransactionSaved) _then) = _$TransactionSavedCopyWithImpl;
@override @useResult
$Res call({
 SendMoneyFormState formState, SaveTransactionEntity data
});


@override $SendMoneyFormStateCopyWith<$Res> get formState;$SaveTransactionEntityCopyWith<$Res> get data;

}
/// @nodoc
class _$TransactionSavedCopyWithImpl<$Res>
    implements $TransactionSavedCopyWith<$Res> {
  _$TransactionSavedCopyWithImpl(this._self, this._then);

  final TransactionSaved _self;
  final $Res Function(TransactionSaved) _then;

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,Object? data = null,}) {
  return _then(TransactionSaved(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as SendMoneyFormState,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SaveTransactionEntity,
  ));
}

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SendMoneyFormStateCopyWith<$Res> get formState {
  
  return $SendMoneyFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaveTransactionEntityCopyWith<$Res> get data {
  
  return $SaveTransactionEntityCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class Failure with DiagnosticableTreeMixin implements SendMoneyState {
  const Failure(this.formState, {required this.message});
  

@override final  SendMoneyFormState formState;
 final  String message;

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SendMoneyState.failure'))
    ..add(DiagnosticsProperty('formState', formState))..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.formState, formState) || other.formState == formState)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,formState,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SendMoneyState.failure(formState: $formState, message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> implements $SendMoneyStateCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@override @useResult
$Res call({
 SendMoneyFormState formState, String message
});


@override $SendMoneyFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,Object? message = null,}) {
  return _then(Failure(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as SendMoneyFormState,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SendMoneyFormStateCopyWith<$Res> get formState {
  
  return $SendMoneyFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}
}

/// @nodoc
mixin _$SendMoneyFormState implements DiagnosticableTreeMixin {

 UserInfo get userInfo; Amount get amount; String get description; bool get isValid;
/// Create a copy of SendMoneyFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendMoneyFormStateCopyWith<SendMoneyFormState> get copyWith => _$SendMoneyFormStateCopyWithImpl<SendMoneyFormState>(this as SendMoneyFormState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SendMoneyFormState'))
    ..add(DiagnosticsProperty('userInfo', userInfo))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('isValid', isValid));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendMoneyFormState&&(identical(other.userInfo, userInfo) || other.userInfo == userInfo)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.isValid, isValid) || other.isValid == isValid));
}


@override
int get hashCode => Object.hash(runtimeType,userInfo,amount,description,isValid);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SendMoneyFormState(userInfo: $userInfo, amount: $amount, description: $description, isValid: $isValid)';
}


}

/// @nodoc
abstract mixin class $SendMoneyFormStateCopyWith<$Res>  {
  factory $SendMoneyFormStateCopyWith(SendMoneyFormState value, $Res Function(SendMoneyFormState) _then) = _$SendMoneyFormStateCopyWithImpl;
@useResult
$Res call({
 UserInfo userInfo, Amount amount, String description, bool isValid
});




}
/// @nodoc
class _$SendMoneyFormStateCopyWithImpl<$Res>
    implements $SendMoneyFormStateCopyWith<$Res> {
  _$SendMoneyFormStateCopyWithImpl(this._self, this._then);

  final SendMoneyFormState _self;
  final $Res Function(SendMoneyFormState) _then;

/// Create a copy of SendMoneyFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userInfo = null,Object? amount = null,Object? description = null,Object? isValid = null,}) {
  return _then(_self.copyWith(
userInfo: null == userInfo ? _self.userInfo : userInfo // ignore: cast_nullable_to_non_nullable
as UserInfo,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Amount,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SendMoneyFormState].
extension SendMoneyFormStatePatterns on SendMoneyFormState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendMoneyFormState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendMoneyFormState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendMoneyFormState value)  $default,){
final _that = this;
switch (_that) {
case _SendMoneyFormState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendMoneyFormState value)?  $default,){
final _that = this;
switch (_that) {
case _SendMoneyFormState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserInfo userInfo,  Amount amount,  String description,  bool isValid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendMoneyFormState() when $default != null:
return $default(_that.userInfo,_that.amount,_that.description,_that.isValid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserInfo userInfo,  Amount amount,  String description,  bool isValid)  $default,) {final _that = this;
switch (_that) {
case _SendMoneyFormState():
return $default(_that.userInfo,_that.amount,_that.description,_that.isValid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserInfo userInfo,  Amount amount,  String description,  bool isValid)?  $default,) {final _that = this;
switch (_that) {
case _SendMoneyFormState() when $default != null:
return $default(_that.userInfo,_that.amount,_that.description,_that.isValid);case _:
  return null;

}
}

}

/// @nodoc


class _SendMoneyFormState with DiagnosticableTreeMixin implements SendMoneyFormState {
  const _SendMoneyFormState({this.userInfo = const UserInfo.pure(), this.amount = const Amount.pure(), this.description = '', this.isValid = false});
  

@override@JsonKey() final  UserInfo userInfo;
@override@JsonKey() final  Amount amount;
@override@JsonKey() final  String description;
@override@JsonKey() final  bool isValid;

/// Create a copy of SendMoneyFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendMoneyFormStateCopyWith<_SendMoneyFormState> get copyWith => __$SendMoneyFormStateCopyWithImpl<_SendMoneyFormState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SendMoneyFormState'))
    ..add(DiagnosticsProperty('userInfo', userInfo))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('isValid', isValid));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendMoneyFormState&&(identical(other.userInfo, userInfo) || other.userInfo == userInfo)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.isValid, isValid) || other.isValid == isValid));
}


@override
int get hashCode => Object.hash(runtimeType,userInfo,amount,description,isValid);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SendMoneyFormState(userInfo: $userInfo, amount: $amount, description: $description, isValid: $isValid)';
}


}

/// @nodoc
abstract mixin class _$SendMoneyFormStateCopyWith<$Res> implements $SendMoneyFormStateCopyWith<$Res> {
  factory _$SendMoneyFormStateCopyWith(_SendMoneyFormState value, $Res Function(_SendMoneyFormState) _then) = __$SendMoneyFormStateCopyWithImpl;
@override @useResult
$Res call({
 UserInfo userInfo, Amount amount, String description, bool isValid
});




}
/// @nodoc
class __$SendMoneyFormStateCopyWithImpl<$Res>
    implements _$SendMoneyFormStateCopyWith<$Res> {
  __$SendMoneyFormStateCopyWithImpl(this._self, this._then);

  final _SendMoneyFormState _self;
  final $Res Function(_SendMoneyFormState) _then;

/// Create a copy of SendMoneyFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userInfo = null,Object? amount = null,Object? description = null,Object? isValid = null,}) {
  return _then(_SendMoneyFormState(
userInfo: null == userInfo ? _self.userInfo : userInfo // ignore: cast_nullable_to_non_nullable
as UserInfo,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Amount,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
