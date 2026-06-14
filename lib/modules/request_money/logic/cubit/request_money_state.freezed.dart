// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_money_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RequestMoneyState implements DiagnosticableTreeMixin {

 RequestMoneyFormState get formState;
/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestMoneyStateCopyWith<RequestMoneyState> get copyWith => _$RequestMoneyStateCopyWithImpl<RequestMoneyState>(this as RequestMoneyState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RequestMoneyState'))
    ..add(DiagnosticsProperty('formState', formState));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestMoneyState&&(identical(other.formState, formState) || other.formState == formState));
}


@override
int get hashCode => Object.hash(runtimeType,formState);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RequestMoneyState(formState: $formState)';
}


}

/// @nodoc
abstract mixin class $RequestMoneyStateCopyWith<$Res>  {
  factory $RequestMoneyStateCopyWith(RequestMoneyState value, $Res Function(RequestMoneyState) _then) = _$RequestMoneyStateCopyWithImpl;
@useResult
$Res call({
 RequestMoneyFormState formState
});


$RequestMoneyFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class _$RequestMoneyStateCopyWithImpl<$Res>
    implements $RequestMoneyStateCopyWith<$Res> {
  _$RequestMoneyStateCopyWithImpl(this._self, this._then);

  final RequestMoneyState _self;
  final $Res Function(RequestMoneyState) _then;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? formState = null,}) {
  return _then(_self.copyWith(
formState: null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as RequestMoneyFormState,
  ));
}
/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestMoneyFormStateCopyWith<$Res> get formState {
  
  return $RequestMoneyFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}
}


/// Adds pattern-matching-related methods to [RequestMoneyState].
extension RequestMoneyStatePatterns on RequestMoneyState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( PendingRequestsLoading value)?  pendingRequestsLoading,TResult Function( PendingRequestsLoaded value)?  pendingRequestsLoaded,TResult Function( CheckWalletSuccess value)?  checkWalletSuccess,TResult Function( TransactionDraftSuccess value)?  transactionDraftSuccess,TResult Function( RequestSentSuccess value)?  requestSentSuccess,TResult Function( RequestApprovedSuccess value)?  requestApprovedSuccess,TResult Function( Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case PendingRequestsLoading() when pendingRequestsLoading != null:
return pendingRequestsLoading(_that);case PendingRequestsLoaded() when pendingRequestsLoaded != null:
return pendingRequestsLoaded(_that);case CheckWalletSuccess() when checkWalletSuccess != null:
return checkWalletSuccess(_that);case TransactionDraftSuccess() when transactionDraftSuccess != null:
return transactionDraftSuccess(_that);case RequestSentSuccess() when requestSentSuccess != null:
return requestSentSuccess(_that);case RequestApprovedSuccess() when requestApprovedSuccess != null:
return requestApprovedSuccess(_that);case Failure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( PendingRequestsLoading value)  pendingRequestsLoading,required TResult Function( PendingRequestsLoaded value)  pendingRequestsLoaded,required TResult Function( CheckWalletSuccess value)  checkWalletSuccess,required TResult Function( TransactionDraftSuccess value)  transactionDraftSuccess,required TResult Function( RequestSentSuccess value)  requestSentSuccess,required TResult Function( RequestApprovedSuccess value)  requestApprovedSuccess,required TResult Function( Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Loading():
return loading(_that);case PendingRequestsLoading():
return pendingRequestsLoading(_that);case PendingRequestsLoaded():
return pendingRequestsLoaded(_that);case CheckWalletSuccess():
return checkWalletSuccess(_that);case TransactionDraftSuccess():
return transactionDraftSuccess(_that);case RequestSentSuccess():
return requestSentSuccess(_that);case RequestApprovedSuccess():
return requestApprovedSuccess(_that);case Failure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( PendingRequestsLoading value)?  pendingRequestsLoading,TResult? Function( PendingRequestsLoaded value)?  pendingRequestsLoaded,TResult? Function( CheckWalletSuccess value)?  checkWalletSuccess,TResult? Function( TransactionDraftSuccess value)?  transactionDraftSuccess,TResult? Function( RequestSentSuccess value)?  requestSentSuccess,TResult? Function( RequestApprovedSuccess value)?  requestApprovedSuccess,TResult? Function( Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case PendingRequestsLoading() when pendingRequestsLoading != null:
return pendingRequestsLoading(_that);case PendingRequestsLoaded() when pendingRequestsLoaded != null:
return pendingRequestsLoaded(_that);case CheckWalletSuccess() when checkWalletSuccess != null:
return checkWalletSuccess(_that);case TransactionDraftSuccess() when transactionDraftSuccess != null:
return transactionDraftSuccess(_that);case RequestSentSuccess() when requestSentSuccess != null:
return requestSentSuccess(_that);case RequestApprovedSuccess() when requestApprovedSuccess != null:
return requestApprovedSuccess(_that);case Failure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( RequestMoneyFormState formState)?  initial,TResult Function( RequestMoneyFormState formState)?  loading,TResult Function( RequestMoneyFormState formState)?  pendingRequestsLoading,TResult Function( RequestMoneyFormState formState,  List<TransactionItemEntity> requests)?  pendingRequestsLoaded,TResult Function( RequestMoneyFormState formState,  CheckWalletEntity data)?  checkWalletSuccess,TResult Function( RequestMoneyFormState formState,  CreateTracnsactionDraftEntity draft)?  transactionDraftSuccess,TResult Function( RequestMoneyFormState formState)?  requestSentSuccess,TResult Function( RequestMoneyFormState formState)?  requestApprovedSuccess,TResult Function( RequestMoneyFormState formState,  String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.formState);case Loading() when loading != null:
return loading(_that.formState);case PendingRequestsLoading() when pendingRequestsLoading != null:
return pendingRequestsLoading(_that.formState);case PendingRequestsLoaded() when pendingRequestsLoaded != null:
return pendingRequestsLoaded(_that.formState,_that.requests);case CheckWalletSuccess() when checkWalletSuccess != null:
return checkWalletSuccess(_that.formState,_that.data);case TransactionDraftSuccess() when transactionDraftSuccess != null:
return transactionDraftSuccess(_that.formState,_that.draft);case RequestSentSuccess() when requestSentSuccess != null:
return requestSentSuccess(_that.formState);case RequestApprovedSuccess() when requestApprovedSuccess != null:
return requestApprovedSuccess(_that.formState);case Failure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( RequestMoneyFormState formState)  initial,required TResult Function( RequestMoneyFormState formState)  loading,required TResult Function( RequestMoneyFormState formState)  pendingRequestsLoading,required TResult Function( RequestMoneyFormState formState,  List<TransactionItemEntity> requests)  pendingRequestsLoaded,required TResult Function( RequestMoneyFormState formState,  CheckWalletEntity data)  checkWalletSuccess,required TResult Function( RequestMoneyFormState formState,  CreateTracnsactionDraftEntity draft)  transactionDraftSuccess,required TResult Function( RequestMoneyFormState formState)  requestSentSuccess,required TResult Function( RequestMoneyFormState formState)  requestApprovedSuccess,required TResult Function( RequestMoneyFormState formState,  String message)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.formState);case Loading():
return loading(_that.formState);case PendingRequestsLoading():
return pendingRequestsLoading(_that.formState);case PendingRequestsLoaded():
return pendingRequestsLoaded(_that.formState,_that.requests);case CheckWalletSuccess():
return checkWalletSuccess(_that.formState,_that.data);case TransactionDraftSuccess():
return transactionDraftSuccess(_that.formState,_that.draft);case RequestSentSuccess():
return requestSentSuccess(_that.formState);case RequestApprovedSuccess():
return requestApprovedSuccess(_that.formState);case Failure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( RequestMoneyFormState formState)?  initial,TResult? Function( RequestMoneyFormState formState)?  loading,TResult? Function( RequestMoneyFormState formState)?  pendingRequestsLoading,TResult? Function( RequestMoneyFormState formState,  List<TransactionItemEntity> requests)?  pendingRequestsLoaded,TResult? Function( RequestMoneyFormState formState,  CheckWalletEntity data)?  checkWalletSuccess,TResult? Function( RequestMoneyFormState formState,  CreateTracnsactionDraftEntity draft)?  transactionDraftSuccess,TResult? Function( RequestMoneyFormState formState)?  requestSentSuccess,TResult? Function( RequestMoneyFormState formState)?  requestApprovedSuccess,TResult? Function( RequestMoneyFormState formState,  String message)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.formState);case Loading() when loading != null:
return loading(_that.formState);case PendingRequestsLoading() when pendingRequestsLoading != null:
return pendingRequestsLoading(_that.formState);case PendingRequestsLoaded() when pendingRequestsLoaded != null:
return pendingRequestsLoaded(_that.formState,_that.requests);case CheckWalletSuccess() when checkWalletSuccess != null:
return checkWalletSuccess(_that.formState,_that.data);case TransactionDraftSuccess() when transactionDraftSuccess != null:
return transactionDraftSuccess(_that.formState,_that.draft);case RequestSentSuccess() when requestSentSuccess != null:
return requestSentSuccess(_that.formState);case RequestApprovedSuccess() when requestApprovedSuccess != null:
return requestApprovedSuccess(_that.formState);case Failure() when failure != null:
return failure(_that.formState,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial with DiagnosticableTreeMixin implements RequestMoneyState {
  const _Initial(this.formState);
  

@override final  RequestMoneyFormState formState;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RequestMoneyState.initial'))
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
  return 'RequestMoneyState.initial(formState: $formState)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $RequestMoneyStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 RequestMoneyFormState formState
});


@override $RequestMoneyFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,}) {
  return _then(_Initial(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as RequestMoneyFormState,
  ));
}

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestMoneyFormStateCopyWith<$Res> get formState {
  
  return $RequestMoneyFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}
}

/// @nodoc


class Loading with DiagnosticableTreeMixin implements RequestMoneyState {
  const Loading(this.formState);
  

@override final  RequestMoneyFormState formState;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingCopyWith<Loading> get copyWith => _$LoadingCopyWithImpl<Loading>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RequestMoneyState.loading'))
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
  return 'RequestMoneyState.loading(formState: $formState)';
}


}

/// @nodoc
abstract mixin class $LoadingCopyWith<$Res> implements $RequestMoneyStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) _then) = _$LoadingCopyWithImpl;
@override @useResult
$Res call({
 RequestMoneyFormState formState
});


@override $RequestMoneyFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(this._self, this._then);

  final Loading _self;
  final $Res Function(Loading) _then;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,}) {
  return _then(Loading(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as RequestMoneyFormState,
  ));
}

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestMoneyFormStateCopyWith<$Res> get formState {
  
  return $RequestMoneyFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}
}

/// @nodoc


class PendingRequestsLoading with DiagnosticableTreeMixin implements RequestMoneyState {
  const PendingRequestsLoading(this.formState);
  

@override final  RequestMoneyFormState formState;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PendingRequestsLoadingCopyWith<PendingRequestsLoading> get copyWith => _$PendingRequestsLoadingCopyWithImpl<PendingRequestsLoading>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RequestMoneyState.pendingRequestsLoading'))
    ..add(DiagnosticsProperty('formState', formState));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PendingRequestsLoading&&(identical(other.formState, formState) || other.formState == formState));
}


@override
int get hashCode => Object.hash(runtimeType,formState);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RequestMoneyState.pendingRequestsLoading(formState: $formState)';
}


}

/// @nodoc
abstract mixin class $PendingRequestsLoadingCopyWith<$Res> implements $RequestMoneyStateCopyWith<$Res> {
  factory $PendingRequestsLoadingCopyWith(PendingRequestsLoading value, $Res Function(PendingRequestsLoading) _then) = _$PendingRequestsLoadingCopyWithImpl;
@override @useResult
$Res call({
 RequestMoneyFormState formState
});


@override $RequestMoneyFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class _$PendingRequestsLoadingCopyWithImpl<$Res>
    implements $PendingRequestsLoadingCopyWith<$Res> {
  _$PendingRequestsLoadingCopyWithImpl(this._self, this._then);

  final PendingRequestsLoading _self;
  final $Res Function(PendingRequestsLoading) _then;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,}) {
  return _then(PendingRequestsLoading(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as RequestMoneyFormState,
  ));
}

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestMoneyFormStateCopyWith<$Res> get formState {
  
  return $RequestMoneyFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}
}

/// @nodoc


class PendingRequestsLoaded with DiagnosticableTreeMixin implements RequestMoneyState {
  const PendingRequestsLoaded(this.formState, {required final  List<TransactionItemEntity> requests}): _requests = requests;
  

@override final  RequestMoneyFormState formState;
 final  List<TransactionItemEntity> _requests;
 List<TransactionItemEntity> get requests {
  if (_requests is EqualUnmodifiableListView) return _requests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_requests);
}


/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PendingRequestsLoadedCopyWith<PendingRequestsLoaded> get copyWith => _$PendingRequestsLoadedCopyWithImpl<PendingRequestsLoaded>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RequestMoneyState.pendingRequestsLoaded'))
    ..add(DiagnosticsProperty('formState', formState))..add(DiagnosticsProperty('requests', requests));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PendingRequestsLoaded&&(identical(other.formState, formState) || other.formState == formState)&&const DeepCollectionEquality().equals(other._requests, _requests));
}


@override
int get hashCode => Object.hash(runtimeType,formState,const DeepCollectionEquality().hash(_requests));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RequestMoneyState.pendingRequestsLoaded(formState: $formState, requests: $requests)';
}


}

/// @nodoc
abstract mixin class $PendingRequestsLoadedCopyWith<$Res> implements $RequestMoneyStateCopyWith<$Res> {
  factory $PendingRequestsLoadedCopyWith(PendingRequestsLoaded value, $Res Function(PendingRequestsLoaded) _then) = _$PendingRequestsLoadedCopyWithImpl;
@override @useResult
$Res call({
 RequestMoneyFormState formState, List<TransactionItemEntity> requests
});


@override $RequestMoneyFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class _$PendingRequestsLoadedCopyWithImpl<$Res>
    implements $PendingRequestsLoadedCopyWith<$Res> {
  _$PendingRequestsLoadedCopyWithImpl(this._self, this._then);

  final PendingRequestsLoaded _self;
  final $Res Function(PendingRequestsLoaded) _then;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,Object? requests = null,}) {
  return _then(PendingRequestsLoaded(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as RequestMoneyFormState,requests: null == requests ? _self._requests : requests // ignore: cast_nullable_to_non_nullable
as List<TransactionItemEntity>,
  ));
}

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestMoneyFormStateCopyWith<$Res> get formState {
  
  return $RequestMoneyFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}
}

/// @nodoc


class CheckWalletSuccess with DiagnosticableTreeMixin implements RequestMoneyState {
  const CheckWalletSuccess(this.formState, {required this.data});
  

@override final  RequestMoneyFormState formState;
 final  CheckWalletEntity data;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckWalletSuccessCopyWith<CheckWalletSuccess> get copyWith => _$CheckWalletSuccessCopyWithImpl<CheckWalletSuccess>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RequestMoneyState.checkWalletSuccess'))
    ..add(DiagnosticsProperty('formState', formState))..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckWalletSuccess&&(identical(other.formState, formState) || other.formState == formState)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,formState,data);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RequestMoneyState.checkWalletSuccess(formState: $formState, data: $data)';
}


}

/// @nodoc
abstract mixin class $CheckWalletSuccessCopyWith<$Res> implements $RequestMoneyStateCopyWith<$Res> {
  factory $CheckWalletSuccessCopyWith(CheckWalletSuccess value, $Res Function(CheckWalletSuccess) _then) = _$CheckWalletSuccessCopyWithImpl;
@override @useResult
$Res call({
 RequestMoneyFormState formState, CheckWalletEntity data
});


@override $RequestMoneyFormStateCopyWith<$Res> get formState;$CheckWalletEntityCopyWith<$Res> get data;

}
/// @nodoc
class _$CheckWalletSuccessCopyWithImpl<$Res>
    implements $CheckWalletSuccessCopyWith<$Res> {
  _$CheckWalletSuccessCopyWithImpl(this._self, this._then);

  final CheckWalletSuccess _self;
  final $Res Function(CheckWalletSuccess) _then;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,Object? data = null,}) {
  return _then(CheckWalletSuccess(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as RequestMoneyFormState,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CheckWalletEntity,
  ));
}

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestMoneyFormStateCopyWith<$Res> get formState {
  
  return $RequestMoneyFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}/// Create a copy of RequestMoneyState
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


class TransactionDraftSuccess with DiagnosticableTreeMixin implements RequestMoneyState {
  const TransactionDraftSuccess(this.formState, {required this.draft});
  

@override final  RequestMoneyFormState formState;
 final  CreateTracnsactionDraftEntity draft;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionDraftSuccessCopyWith<TransactionDraftSuccess> get copyWith => _$TransactionDraftSuccessCopyWithImpl<TransactionDraftSuccess>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RequestMoneyState.transactionDraftSuccess'))
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
  return 'RequestMoneyState.transactionDraftSuccess(formState: $formState, draft: $draft)';
}


}

/// @nodoc
abstract mixin class $TransactionDraftSuccessCopyWith<$Res> implements $RequestMoneyStateCopyWith<$Res> {
  factory $TransactionDraftSuccessCopyWith(TransactionDraftSuccess value, $Res Function(TransactionDraftSuccess) _then) = _$TransactionDraftSuccessCopyWithImpl;
@override @useResult
$Res call({
 RequestMoneyFormState formState, CreateTracnsactionDraftEntity draft
});


@override $RequestMoneyFormStateCopyWith<$Res> get formState;$CreateTracnsactionDraftEntityCopyWith<$Res> get draft;

}
/// @nodoc
class _$TransactionDraftSuccessCopyWithImpl<$Res>
    implements $TransactionDraftSuccessCopyWith<$Res> {
  _$TransactionDraftSuccessCopyWithImpl(this._self, this._then);

  final TransactionDraftSuccess _self;
  final $Res Function(TransactionDraftSuccess) _then;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,Object? draft = null,}) {
  return _then(TransactionDraftSuccess(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as RequestMoneyFormState,draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as CreateTracnsactionDraftEntity,
  ));
}

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestMoneyFormStateCopyWith<$Res> get formState {
  
  return $RequestMoneyFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}/// Create a copy of RequestMoneyState
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


class RequestSentSuccess with DiagnosticableTreeMixin implements RequestMoneyState {
  const RequestSentSuccess(this.formState);
  

@override final  RequestMoneyFormState formState;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestSentSuccessCopyWith<RequestSentSuccess> get copyWith => _$RequestSentSuccessCopyWithImpl<RequestSentSuccess>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RequestMoneyState.requestSentSuccess'))
    ..add(DiagnosticsProperty('formState', formState));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestSentSuccess&&(identical(other.formState, formState) || other.formState == formState));
}


@override
int get hashCode => Object.hash(runtimeType,formState);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RequestMoneyState.requestSentSuccess(formState: $formState)';
}


}

/// @nodoc
abstract mixin class $RequestSentSuccessCopyWith<$Res> implements $RequestMoneyStateCopyWith<$Res> {
  factory $RequestSentSuccessCopyWith(RequestSentSuccess value, $Res Function(RequestSentSuccess) _then) = _$RequestSentSuccessCopyWithImpl;
@override @useResult
$Res call({
 RequestMoneyFormState formState
});


@override $RequestMoneyFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class _$RequestSentSuccessCopyWithImpl<$Res>
    implements $RequestSentSuccessCopyWith<$Res> {
  _$RequestSentSuccessCopyWithImpl(this._self, this._then);

  final RequestSentSuccess _self;
  final $Res Function(RequestSentSuccess) _then;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,}) {
  return _then(RequestSentSuccess(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as RequestMoneyFormState,
  ));
}

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestMoneyFormStateCopyWith<$Res> get formState {
  
  return $RequestMoneyFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}
}

/// @nodoc


class RequestApprovedSuccess with DiagnosticableTreeMixin implements RequestMoneyState {
  const RequestApprovedSuccess(this.formState);
  

@override final  RequestMoneyFormState formState;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestApprovedSuccessCopyWith<RequestApprovedSuccess> get copyWith => _$RequestApprovedSuccessCopyWithImpl<RequestApprovedSuccess>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RequestMoneyState.requestApprovedSuccess'))
    ..add(DiagnosticsProperty('formState', formState));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestApprovedSuccess&&(identical(other.formState, formState) || other.formState == formState));
}


@override
int get hashCode => Object.hash(runtimeType,formState);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RequestMoneyState.requestApprovedSuccess(formState: $formState)';
}


}

/// @nodoc
abstract mixin class $RequestApprovedSuccessCopyWith<$Res> implements $RequestMoneyStateCopyWith<$Res> {
  factory $RequestApprovedSuccessCopyWith(RequestApprovedSuccess value, $Res Function(RequestApprovedSuccess) _then) = _$RequestApprovedSuccessCopyWithImpl;
@override @useResult
$Res call({
 RequestMoneyFormState formState
});


@override $RequestMoneyFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class _$RequestApprovedSuccessCopyWithImpl<$Res>
    implements $RequestApprovedSuccessCopyWith<$Res> {
  _$RequestApprovedSuccessCopyWithImpl(this._self, this._then);

  final RequestApprovedSuccess _self;
  final $Res Function(RequestApprovedSuccess) _then;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,}) {
  return _then(RequestApprovedSuccess(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as RequestMoneyFormState,
  ));
}

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestMoneyFormStateCopyWith<$Res> get formState {
  
  return $RequestMoneyFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}
}

/// @nodoc


class Failure with DiagnosticableTreeMixin implements RequestMoneyState {
  const Failure(this.formState, {required this.message});
  

@override final  RequestMoneyFormState formState;
 final  String message;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RequestMoneyState.failure'))
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
  return 'RequestMoneyState.failure(formState: $formState, message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> implements $RequestMoneyStateCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@override @useResult
$Res call({
 RequestMoneyFormState formState, String message
});


@override $RequestMoneyFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,Object? message = null,}) {
  return _then(Failure(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as RequestMoneyFormState,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestMoneyFormStateCopyWith<$Res> get formState {
  
  return $RequestMoneyFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}
}

/// @nodoc
mixin _$RequestMoneyFormState implements DiagnosticableTreeMixin {

 UserInfo get userInfo; Amount get amount; String get description; bool get isValid;
/// Create a copy of RequestMoneyFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestMoneyFormStateCopyWith<RequestMoneyFormState> get copyWith => _$RequestMoneyFormStateCopyWithImpl<RequestMoneyFormState>(this as RequestMoneyFormState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RequestMoneyFormState'))
    ..add(DiagnosticsProperty('userInfo', userInfo))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('isValid', isValid));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestMoneyFormState&&(identical(other.userInfo, userInfo) || other.userInfo == userInfo)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.isValid, isValid) || other.isValid == isValid));
}


@override
int get hashCode => Object.hash(runtimeType,userInfo,amount,description,isValid);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RequestMoneyFormState(userInfo: $userInfo, amount: $amount, description: $description, isValid: $isValid)';
}


}

/// @nodoc
abstract mixin class $RequestMoneyFormStateCopyWith<$Res>  {
  factory $RequestMoneyFormStateCopyWith(RequestMoneyFormState value, $Res Function(RequestMoneyFormState) _then) = _$RequestMoneyFormStateCopyWithImpl;
@useResult
$Res call({
 UserInfo userInfo, Amount amount, String description, bool isValid
});




}
/// @nodoc
class _$RequestMoneyFormStateCopyWithImpl<$Res>
    implements $RequestMoneyFormStateCopyWith<$Res> {
  _$RequestMoneyFormStateCopyWithImpl(this._self, this._then);

  final RequestMoneyFormState _self;
  final $Res Function(RequestMoneyFormState) _then;

/// Create a copy of RequestMoneyFormState
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


/// Adds pattern-matching-related methods to [RequestMoneyFormState].
extension RequestMoneyFormStatePatterns on RequestMoneyFormState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestMoneyFormState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestMoneyFormState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestMoneyFormState value)  $default,){
final _that = this;
switch (_that) {
case _RequestMoneyFormState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestMoneyFormState value)?  $default,){
final _that = this;
switch (_that) {
case _RequestMoneyFormState() when $default != null:
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
case _RequestMoneyFormState() when $default != null:
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
case _RequestMoneyFormState():
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
case _RequestMoneyFormState() when $default != null:
return $default(_that.userInfo,_that.amount,_that.description,_that.isValid);case _:
  return null;

}
}

}

/// @nodoc


class _RequestMoneyFormState with DiagnosticableTreeMixin implements RequestMoneyFormState {
  const _RequestMoneyFormState({this.userInfo = const UserInfo.pure(), this.amount = const Amount.pure(), this.description = '', this.isValid = false});
  

@override@JsonKey() final  UserInfo userInfo;
@override@JsonKey() final  Amount amount;
@override@JsonKey() final  String description;
@override@JsonKey() final  bool isValid;

/// Create a copy of RequestMoneyFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestMoneyFormStateCopyWith<_RequestMoneyFormState> get copyWith => __$RequestMoneyFormStateCopyWithImpl<_RequestMoneyFormState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RequestMoneyFormState'))
    ..add(DiagnosticsProperty('userInfo', userInfo))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('isValid', isValid));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestMoneyFormState&&(identical(other.userInfo, userInfo) || other.userInfo == userInfo)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.description, description) || other.description == description)&&(identical(other.isValid, isValid) || other.isValid == isValid));
}


@override
int get hashCode => Object.hash(runtimeType,userInfo,amount,description,isValid);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RequestMoneyFormState(userInfo: $userInfo, amount: $amount, description: $description, isValid: $isValid)';
}


}

/// @nodoc
abstract mixin class _$RequestMoneyFormStateCopyWith<$Res> implements $RequestMoneyFormStateCopyWith<$Res> {
  factory _$RequestMoneyFormStateCopyWith(_RequestMoneyFormState value, $Res Function(_RequestMoneyFormState) _then) = __$RequestMoneyFormStateCopyWithImpl;
@override @useResult
$Res call({
 UserInfo userInfo, Amount amount, String description, bool isValid
});




}
/// @nodoc
class __$RequestMoneyFormStateCopyWithImpl<$Res>
    implements _$RequestMoneyFormStateCopyWith<$Res> {
  __$RequestMoneyFormStateCopyWithImpl(this._self, this._then);

  final _RequestMoneyFormState _self;
  final $Res Function(_RequestMoneyFormState) _then;

/// Create a copy of RequestMoneyFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userInfo = null,Object? amount = null,Object? description = null,Object? isValid = null,}) {
  return _then(_RequestMoneyFormState(
userInfo: null == userInfo ? _self.userInfo : userInfo // ignore: cast_nullable_to_non_nullable
as UserInfo,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Amount,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
