// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterState {

 RegisterFormState get form;
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterStateCopyWith<RegisterState> get copyWith => _$RegisterStateCopyWithImpl<RegisterState>(this as RegisterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString() {
  return 'RegisterState(form: $form)';
}


}

/// @nodoc
abstract mixin class $RegisterStateCopyWith<$Res>  {
  factory $RegisterStateCopyWith(RegisterState value, $Res Function(RegisterState) _then) = _$RegisterStateCopyWithImpl;
@useResult
$Res call({
 RegisterFormState form
});


$RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._self, this._then);

  final RegisterState _self;
  final $Res Function(RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? form = null,}) {
  return _then(_self.copyWith(
form: null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as RegisterFormState,
  ));
}
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterFormStateCopyWith<$Res> get form {
  
  return $RegisterFormStateCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}


/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns on RegisterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( AccountTypesLoading value)?  accountTypesLoading,TResult Function( AccountTypesSuccess value)?  accountTypesSuccess,TResult Function( AccountTypesFailure value)?  accountTypesFailure,TResult Function( RegisterLoading value)?  registerLoading,TResult Function( RegisterSuccess value)?  registerSuccess,TResult Function( RegisterFailure value)?  registerFailure,TResult Function( SendOTPLoading value)?  sendOTPLoading,TResult Function( SendOTPSuccess value)?  sendOTPSuccess,TResult Function( Failure value)?  sendOTPFailure,TResult Function( VerifyOTPLoading value)?  verifyOTPLoading,TResult Function( VerifyOTPSuccess value)?  verifyOTPSuccess,TResult Function( VerifyOTPFailure value)?  verifyOTPFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case AccountTypesLoading() when accountTypesLoading != null:
return accountTypesLoading(_that);case AccountTypesSuccess() when accountTypesSuccess != null:
return accountTypesSuccess(_that);case AccountTypesFailure() when accountTypesFailure != null:
return accountTypesFailure(_that);case RegisterLoading() when registerLoading != null:
return registerLoading(_that);case RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that);case RegisterFailure() when registerFailure != null:
return registerFailure(_that);case SendOTPLoading() when sendOTPLoading != null:
return sendOTPLoading(_that);case SendOTPSuccess() when sendOTPSuccess != null:
return sendOTPSuccess(_that);case Failure() when sendOTPFailure != null:
return sendOTPFailure(_that);case VerifyOTPLoading() when verifyOTPLoading != null:
return verifyOTPLoading(_that);case VerifyOTPSuccess() when verifyOTPSuccess != null:
return verifyOTPSuccess(_that);case VerifyOTPFailure() when verifyOTPFailure != null:
return verifyOTPFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( AccountTypesLoading value)  accountTypesLoading,required TResult Function( AccountTypesSuccess value)  accountTypesSuccess,required TResult Function( AccountTypesFailure value)  accountTypesFailure,required TResult Function( RegisterLoading value)  registerLoading,required TResult Function( RegisterSuccess value)  registerSuccess,required TResult Function( RegisterFailure value)  registerFailure,required TResult Function( SendOTPLoading value)  sendOTPLoading,required TResult Function( SendOTPSuccess value)  sendOTPSuccess,required TResult Function( Failure value)  sendOTPFailure,required TResult Function( VerifyOTPLoading value)  verifyOTPLoading,required TResult Function( VerifyOTPSuccess value)  verifyOTPSuccess,required TResult Function( VerifyOTPFailure value)  verifyOTPFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case AccountTypesLoading():
return accountTypesLoading(_that);case AccountTypesSuccess():
return accountTypesSuccess(_that);case AccountTypesFailure():
return accountTypesFailure(_that);case RegisterLoading():
return registerLoading(_that);case RegisterSuccess():
return registerSuccess(_that);case RegisterFailure():
return registerFailure(_that);case SendOTPLoading():
return sendOTPLoading(_that);case SendOTPSuccess():
return sendOTPSuccess(_that);case Failure():
return sendOTPFailure(_that);case VerifyOTPLoading():
return verifyOTPLoading(_that);case VerifyOTPSuccess():
return verifyOTPSuccess(_that);case VerifyOTPFailure():
return verifyOTPFailure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( AccountTypesLoading value)?  accountTypesLoading,TResult? Function( AccountTypesSuccess value)?  accountTypesSuccess,TResult? Function( AccountTypesFailure value)?  accountTypesFailure,TResult? Function( RegisterLoading value)?  registerLoading,TResult? Function( RegisterSuccess value)?  registerSuccess,TResult? Function( RegisterFailure value)?  registerFailure,TResult? Function( SendOTPLoading value)?  sendOTPLoading,TResult? Function( SendOTPSuccess value)?  sendOTPSuccess,TResult? Function( Failure value)?  sendOTPFailure,TResult? Function( VerifyOTPLoading value)?  verifyOTPLoading,TResult? Function( VerifyOTPSuccess value)?  verifyOTPSuccess,TResult? Function( VerifyOTPFailure value)?  verifyOTPFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case AccountTypesLoading() when accountTypesLoading != null:
return accountTypesLoading(_that);case AccountTypesSuccess() when accountTypesSuccess != null:
return accountTypesSuccess(_that);case AccountTypesFailure() when accountTypesFailure != null:
return accountTypesFailure(_that);case RegisterLoading() when registerLoading != null:
return registerLoading(_that);case RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that);case RegisterFailure() when registerFailure != null:
return registerFailure(_that);case SendOTPLoading() when sendOTPLoading != null:
return sendOTPLoading(_that);case SendOTPSuccess() when sendOTPSuccess != null:
return sendOTPSuccess(_that);case Failure() when sendOTPFailure != null:
return sendOTPFailure(_that);case VerifyOTPLoading() when verifyOTPLoading != null:
return verifyOTPLoading(_that);case VerifyOTPSuccess() when verifyOTPSuccess != null:
return verifyOTPSuccess(_that);case VerifyOTPFailure() when verifyOTPFailure != null:
return verifyOTPFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( RegisterFormState form)?  initial,TResult Function( RegisterFormState form)?  accountTypesLoading,TResult Function( RegisterFormState form)?  accountTypesSuccess,TResult Function( RegisterFormState form,  String error)?  accountTypesFailure,TResult Function( RegisterFormState form)?  registerLoading,TResult Function( RegisterFormState form,  RegisterResponseBody data)?  registerSuccess,TResult Function( RegisterFormState form,  String error)?  registerFailure,TResult Function( RegisterFormState form)?  sendOTPLoading,TResult Function( RegisterFormState form,  SendOtpResponseBody data)?  sendOTPSuccess,TResult Function( RegisterFormState form,  String error)?  sendOTPFailure,TResult Function( RegisterFormState form)?  verifyOTPLoading,TResult Function( RegisterFormState form,  VerifyOtpResponseBody data)?  verifyOTPSuccess,TResult Function( RegisterFormState form,  String error)?  verifyOTPFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.form);case AccountTypesLoading() when accountTypesLoading != null:
return accountTypesLoading(_that.form);case AccountTypesSuccess() when accountTypesSuccess != null:
return accountTypesSuccess(_that.form);case AccountTypesFailure() when accountTypesFailure != null:
return accountTypesFailure(_that.form,_that.error);case RegisterLoading() when registerLoading != null:
return registerLoading(_that.form);case RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that.form,_that.data);case RegisterFailure() when registerFailure != null:
return registerFailure(_that.form,_that.error);case SendOTPLoading() when sendOTPLoading != null:
return sendOTPLoading(_that.form);case SendOTPSuccess() when sendOTPSuccess != null:
return sendOTPSuccess(_that.form,_that.data);case Failure() when sendOTPFailure != null:
return sendOTPFailure(_that.form,_that.error);case VerifyOTPLoading() when verifyOTPLoading != null:
return verifyOTPLoading(_that.form);case VerifyOTPSuccess() when verifyOTPSuccess != null:
return verifyOTPSuccess(_that.form,_that.data);case VerifyOTPFailure() when verifyOTPFailure != null:
return verifyOTPFailure(_that.form,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( RegisterFormState form)  initial,required TResult Function( RegisterFormState form)  accountTypesLoading,required TResult Function( RegisterFormState form)  accountTypesSuccess,required TResult Function( RegisterFormState form,  String error)  accountTypesFailure,required TResult Function( RegisterFormState form)  registerLoading,required TResult Function( RegisterFormState form,  RegisterResponseBody data)  registerSuccess,required TResult Function( RegisterFormState form,  String error)  registerFailure,required TResult Function( RegisterFormState form)  sendOTPLoading,required TResult Function( RegisterFormState form,  SendOtpResponseBody data)  sendOTPSuccess,required TResult Function( RegisterFormState form,  String error)  sendOTPFailure,required TResult Function( RegisterFormState form)  verifyOTPLoading,required TResult Function( RegisterFormState form,  VerifyOtpResponseBody data)  verifyOTPSuccess,required TResult Function( RegisterFormState form,  String error)  verifyOTPFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.form);case AccountTypesLoading():
return accountTypesLoading(_that.form);case AccountTypesSuccess():
return accountTypesSuccess(_that.form);case AccountTypesFailure():
return accountTypesFailure(_that.form,_that.error);case RegisterLoading():
return registerLoading(_that.form);case RegisterSuccess():
return registerSuccess(_that.form,_that.data);case RegisterFailure():
return registerFailure(_that.form,_that.error);case SendOTPLoading():
return sendOTPLoading(_that.form);case SendOTPSuccess():
return sendOTPSuccess(_that.form,_that.data);case Failure():
return sendOTPFailure(_that.form,_that.error);case VerifyOTPLoading():
return verifyOTPLoading(_that.form);case VerifyOTPSuccess():
return verifyOTPSuccess(_that.form,_that.data);case VerifyOTPFailure():
return verifyOTPFailure(_that.form,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( RegisterFormState form)?  initial,TResult? Function( RegisterFormState form)?  accountTypesLoading,TResult? Function( RegisterFormState form)?  accountTypesSuccess,TResult? Function( RegisterFormState form,  String error)?  accountTypesFailure,TResult? Function( RegisterFormState form)?  registerLoading,TResult? Function( RegisterFormState form,  RegisterResponseBody data)?  registerSuccess,TResult? Function( RegisterFormState form,  String error)?  registerFailure,TResult? Function( RegisterFormState form)?  sendOTPLoading,TResult? Function( RegisterFormState form,  SendOtpResponseBody data)?  sendOTPSuccess,TResult? Function( RegisterFormState form,  String error)?  sendOTPFailure,TResult? Function( RegisterFormState form)?  verifyOTPLoading,TResult? Function( RegisterFormState form,  VerifyOtpResponseBody data)?  verifyOTPSuccess,TResult? Function( RegisterFormState form,  String error)?  verifyOTPFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.form);case AccountTypesLoading() when accountTypesLoading != null:
return accountTypesLoading(_that.form);case AccountTypesSuccess() when accountTypesSuccess != null:
return accountTypesSuccess(_that.form);case AccountTypesFailure() when accountTypesFailure != null:
return accountTypesFailure(_that.form,_that.error);case RegisterLoading() when registerLoading != null:
return registerLoading(_that.form);case RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that.form,_that.data);case RegisterFailure() when registerFailure != null:
return registerFailure(_that.form,_that.error);case SendOTPLoading() when sendOTPLoading != null:
return sendOTPLoading(_that.form);case SendOTPSuccess() when sendOTPSuccess != null:
return sendOTPSuccess(_that.form,_that.data);case Failure() when sendOTPFailure != null:
return sendOTPFailure(_that.form,_that.error);case VerifyOTPLoading() when verifyOTPLoading != null:
return verifyOTPLoading(_that.form);case VerifyOTPSuccess() when verifyOTPSuccess != null:
return verifyOTPSuccess(_that.form,_that.data);case VerifyOTPFailure() when verifyOTPFailure != null:
return verifyOTPFailure(_that.form,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements RegisterState {
  const _Initial(this.form);
  

@override final  RegisterFormState form;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString() {
  return 'RegisterState.initial(form: $form)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,}) {
  return _then(_Initial(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as RegisterFormState,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterFormStateCopyWith<$Res> get form {
  
  return $RegisterFormStateCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class AccountTypesLoading implements RegisterState {
  const AccountTypesLoading(this.form);
  

@override final  RegisterFormState form;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountTypesLoadingCopyWith<AccountTypesLoading> get copyWith => _$AccountTypesLoadingCopyWithImpl<AccountTypesLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountTypesLoading&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString() {
  return 'RegisterState.accountTypesLoading(form: $form)';
}


}

/// @nodoc
abstract mixin class $AccountTypesLoadingCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $AccountTypesLoadingCopyWith(AccountTypesLoading value, $Res Function(AccountTypesLoading) _then) = _$AccountTypesLoadingCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$AccountTypesLoadingCopyWithImpl<$Res>
    implements $AccountTypesLoadingCopyWith<$Res> {
  _$AccountTypesLoadingCopyWithImpl(this._self, this._then);

  final AccountTypesLoading _self;
  final $Res Function(AccountTypesLoading) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,}) {
  return _then(AccountTypesLoading(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as RegisterFormState,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterFormStateCopyWith<$Res> get form {
  
  return $RegisterFormStateCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class AccountTypesSuccess implements RegisterState {
  const AccountTypesSuccess(this.form);
  

@override final  RegisterFormState form;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountTypesSuccessCopyWith<AccountTypesSuccess> get copyWith => _$AccountTypesSuccessCopyWithImpl<AccountTypesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountTypesSuccess&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString() {
  return 'RegisterState.accountTypesSuccess(form: $form)';
}


}

/// @nodoc
abstract mixin class $AccountTypesSuccessCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $AccountTypesSuccessCopyWith(AccountTypesSuccess value, $Res Function(AccountTypesSuccess) _then) = _$AccountTypesSuccessCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$AccountTypesSuccessCopyWithImpl<$Res>
    implements $AccountTypesSuccessCopyWith<$Res> {
  _$AccountTypesSuccessCopyWithImpl(this._self, this._then);

  final AccountTypesSuccess _self;
  final $Res Function(AccountTypesSuccess) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,}) {
  return _then(AccountTypesSuccess(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as RegisterFormState,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterFormStateCopyWith<$Res> get form {
  
  return $RegisterFormStateCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class AccountTypesFailure implements RegisterState {
  const AccountTypesFailure(this.form, {required this.error});
  

@override final  RegisterFormState form;
 final  String error;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountTypesFailureCopyWith<AccountTypesFailure> get copyWith => _$AccountTypesFailureCopyWithImpl<AccountTypesFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountTypesFailure&&(identical(other.form, form) || other.form == form)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,form,error);

@override
String toString() {
  return 'RegisterState.accountTypesFailure(form: $form, error: $error)';
}


}

/// @nodoc
abstract mixin class $AccountTypesFailureCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $AccountTypesFailureCopyWith(AccountTypesFailure value, $Res Function(AccountTypesFailure) _then) = _$AccountTypesFailureCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form, String error
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$AccountTypesFailureCopyWithImpl<$Res>
    implements $AccountTypesFailureCopyWith<$Res> {
  _$AccountTypesFailureCopyWithImpl(this._self, this._then);

  final AccountTypesFailure _self;
  final $Res Function(AccountTypesFailure) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,Object? error = null,}) {
  return _then(AccountTypesFailure(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as RegisterFormState,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterFormStateCopyWith<$Res> get form {
  
  return $RegisterFormStateCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class RegisterLoading implements RegisterState {
  const RegisterLoading(this.form);
  

@override final  RegisterFormState form;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterLoadingCopyWith<RegisterLoading> get copyWith => _$RegisterLoadingCopyWithImpl<RegisterLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterLoading&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString() {
  return 'RegisterState.registerLoading(form: $form)';
}


}

/// @nodoc
abstract mixin class $RegisterLoadingCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $RegisterLoadingCopyWith(RegisterLoading value, $Res Function(RegisterLoading) _then) = _$RegisterLoadingCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$RegisterLoadingCopyWithImpl<$Res>
    implements $RegisterLoadingCopyWith<$Res> {
  _$RegisterLoadingCopyWithImpl(this._self, this._then);

  final RegisterLoading _self;
  final $Res Function(RegisterLoading) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,}) {
  return _then(RegisterLoading(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as RegisterFormState,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterFormStateCopyWith<$Res> get form {
  
  return $RegisterFormStateCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class RegisterSuccess implements RegisterState {
  const RegisterSuccess(this.form, {required this.data});
  

@override final  RegisterFormState form;
 final  RegisterResponseBody data;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterSuccessCopyWith<RegisterSuccess> get copyWith => _$RegisterSuccessCopyWithImpl<RegisterSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterSuccess&&(identical(other.form, form) || other.form == form)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,form,data);

@override
String toString() {
  return 'RegisterState.registerSuccess(form: $form, data: $data)';
}


}

/// @nodoc
abstract mixin class $RegisterSuccessCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $RegisterSuccessCopyWith(RegisterSuccess value, $Res Function(RegisterSuccess) _then) = _$RegisterSuccessCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form, RegisterResponseBody data
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$RegisterSuccessCopyWithImpl<$Res>
    implements $RegisterSuccessCopyWith<$Res> {
  _$RegisterSuccessCopyWithImpl(this._self, this._then);

  final RegisterSuccess _self;
  final $Res Function(RegisterSuccess) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,Object? data = null,}) {
  return _then(RegisterSuccess(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as RegisterFormState,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RegisterResponseBody,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterFormStateCopyWith<$Res> get form {
  
  return $RegisterFormStateCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class RegisterFailure implements RegisterState {
  const RegisterFailure(this.form, {required this.error});
  

@override final  RegisterFormState form;
 final  String error;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterFailureCopyWith<RegisterFailure> get copyWith => _$RegisterFailureCopyWithImpl<RegisterFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterFailure&&(identical(other.form, form) || other.form == form)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,form,error);

@override
String toString() {
  return 'RegisterState.registerFailure(form: $form, error: $error)';
}


}

/// @nodoc
abstract mixin class $RegisterFailureCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $RegisterFailureCopyWith(RegisterFailure value, $Res Function(RegisterFailure) _then) = _$RegisterFailureCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form, String error
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$RegisterFailureCopyWithImpl<$Res>
    implements $RegisterFailureCopyWith<$Res> {
  _$RegisterFailureCopyWithImpl(this._self, this._then);

  final RegisterFailure _self;
  final $Res Function(RegisterFailure) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,Object? error = null,}) {
  return _then(RegisterFailure(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as RegisterFormState,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterFormStateCopyWith<$Res> get form {
  
  return $RegisterFormStateCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class SendOTPLoading implements RegisterState {
  const SendOTPLoading(this.form);
  

@override final  RegisterFormState form;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendOTPLoadingCopyWith<SendOTPLoading> get copyWith => _$SendOTPLoadingCopyWithImpl<SendOTPLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendOTPLoading&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString() {
  return 'RegisterState.sendOTPLoading(form: $form)';
}


}

/// @nodoc
abstract mixin class $SendOTPLoadingCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $SendOTPLoadingCopyWith(SendOTPLoading value, $Res Function(SendOTPLoading) _then) = _$SendOTPLoadingCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$SendOTPLoadingCopyWithImpl<$Res>
    implements $SendOTPLoadingCopyWith<$Res> {
  _$SendOTPLoadingCopyWithImpl(this._self, this._then);

  final SendOTPLoading _self;
  final $Res Function(SendOTPLoading) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,}) {
  return _then(SendOTPLoading(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as RegisterFormState,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterFormStateCopyWith<$Res> get form {
  
  return $RegisterFormStateCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class SendOTPSuccess implements RegisterState {
  const SendOTPSuccess(this.form, {required this.data});
  

@override final  RegisterFormState form;
 final  SendOtpResponseBody data;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendOTPSuccessCopyWith<SendOTPSuccess> get copyWith => _$SendOTPSuccessCopyWithImpl<SendOTPSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendOTPSuccess&&(identical(other.form, form) || other.form == form)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,form,data);

@override
String toString() {
  return 'RegisterState.sendOTPSuccess(form: $form, data: $data)';
}


}

/// @nodoc
abstract mixin class $SendOTPSuccessCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $SendOTPSuccessCopyWith(SendOTPSuccess value, $Res Function(SendOTPSuccess) _then) = _$SendOTPSuccessCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form, SendOtpResponseBody data
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$SendOTPSuccessCopyWithImpl<$Res>
    implements $SendOTPSuccessCopyWith<$Res> {
  _$SendOTPSuccessCopyWithImpl(this._self, this._then);

  final SendOTPSuccess _self;
  final $Res Function(SendOTPSuccess) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,Object? data = null,}) {
  return _then(SendOTPSuccess(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as RegisterFormState,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SendOtpResponseBody,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterFormStateCopyWith<$Res> get form {
  
  return $RegisterFormStateCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class Failure implements RegisterState {
  const Failure(this.form, {required this.error});
  

@override final  RegisterFormState form;
 final  String error;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.form, form) || other.form == form)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,form,error);

@override
String toString() {
  return 'RegisterState.sendOTPFailure(form: $form, error: $error)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form, String error
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,Object? error = null,}) {
  return _then(Failure(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as RegisterFormState,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterFormStateCopyWith<$Res> get form {
  
  return $RegisterFormStateCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class VerifyOTPLoading implements RegisterState {
  const VerifyOTPLoading(this.form);
  

@override final  RegisterFormState form;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyOTPLoadingCopyWith<VerifyOTPLoading> get copyWith => _$VerifyOTPLoadingCopyWithImpl<VerifyOTPLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOTPLoading&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString() {
  return 'RegisterState.verifyOTPLoading(form: $form)';
}


}

/// @nodoc
abstract mixin class $VerifyOTPLoadingCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $VerifyOTPLoadingCopyWith(VerifyOTPLoading value, $Res Function(VerifyOTPLoading) _then) = _$VerifyOTPLoadingCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$VerifyOTPLoadingCopyWithImpl<$Res>
    implements $VerifyOTPLoadingCopyWith<$Res> {
  _$VerifyOTPLoadingCopyWithImpl(this._self, this._then);

  final VerifyOTPLoading _self;
  final $Res Function(VerifyOTPLoading) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,}) {
  return _then(VerifyOTPLoading(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as RegisterFormState,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterFormStateCopyWith<$Res> get form {
  
  return $RegisterFormStateCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class VerifyOTPSuccess implements RegisterState {
  const VerifyOTPSuccess(this.form, {required this.data});
  

@override final  RegisterFormState form;
 final  VerifyOtpResponseBody data;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyOTPSuccessCopyWith<VerifyOTPSuccess> get copyWith => _$VerifyOTPSuccessCopyWithImpl<VerifyOTPSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOTPSuccess&&(identical(other.form, form) || other.form == form)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,form,data);

@override
String toString() {
  return 'RegisterState.verifyOTPSuccess(form: $form, data: $data)';
}


}

/// @nodoc
abstract mixin class $VerifyOTPSuccessCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $VerifyOTPSuccessCopyWith(VerifyOTPSuccess value, $Res Function(VerifyOTPSuccess) _then) = _$VerifyOTPSuccessCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form, VerifyOtpResponseBody data
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$VerifyOTPSuccessCopyWithImpl<$Res>
    implements $VerifyOTPSuccessCopyWith<$Res> {
  _$VerifyOTPSuccessCopyWithImpl(this._self, this._then);

  final VerifyOTPSuccess _self;
  final $Res Function(VerifyOTPSuccess) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,Object? data = null,}) {
  return _then(VerifyOTPSuccess(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as RegisterFormState,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VerifyOtpResponseBody,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterFormStateCopyWith<$Res> get form {
  
  return $RegisterFormStateCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class VerifyOTPFailure implements RegisterState {
  const VerifyOTPFailure(this.form, {required this.error});
  

@override final  RegisterFormState form;
 final  String error;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyOTPFailureCopyWith<VerifyOTPFailure> get copyWith => _$VerifyOTPFailureCopyWithImpl<VerifyOTPFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOTPFailure&&(identical(other.form, form) || other.form == form)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,form,error);

@override
String toString() {
  return 'RegisterState.verifyOTPFailure(form: $form, error: $error)';
}


}

/// @nodoc
abstract mixin class $VerifyOTPFailureCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $VerifyOTPFailureCopyWith(VerifyOTPFailure value, $Res Function(VerifyOTPFailure) _then) = _$VerifyOTPFailureCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form, String error
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$VerifyOTPFailureCopyWithImpl<$Res>
    implements $VerifyOTPFailureCopyWith<$Res> {
  _$VerifyOTPFailureCopyWithImpl(this._self, this._then);

  final VerifyOTPFailure _self;
  final $Res Function(VerifyOTPFailure) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,Object? error = null,}) {
  return _then(VerifyOTPFailure(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as RegisterFormState,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterFormStateCopyWith<$Res> get form {
  
  return $RegisterFormStateCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

// dart format on
