// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format of
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState<T> {

 LoginFormState get form;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<T, LoginState<T>> get copyWith => _$LoginStateCopyWithImpl<T, LoginState<T>>(this as LoginState<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState<T>&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString() {
  return 'LoginState<$T>(form: $form)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<T,$Res>  {
  factory $LoginStateCopyWith(LoginState<T> value, $Res Function(LoginState<T>) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 LoginFormState form
});


$LoginFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$LoginStateCopyWithImpl<T,$Res>
    implements $LoginStateCopyWith<T, $Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState<T> _self;
  final $Res Function(LoginState<T>) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? form = null,}) {
  return _then(_self.copyWith(
form: null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as LoginFormState,
  ));
}
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginFormStateCopyWith<$Res> get form {
  
  return $LoginFormStateCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns<T> on LoginState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( Loading<T> value)?  loading,TResult Function( Success<T> value)?  success,TResult Function( Failure<T> value)?  failure,required TResult orElse(),}){
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( Loading<T> value)  loading,required TResult Function( Success<T> value)  success,required TResult Function( Failure<T> value)  failure,}){
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( Loading<T> value)?  loading,TResult? Function( Success<T> value)?  success,TResult? Function( Failure<T> value)?  failure,}){
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( LoginFormState form)?  initial,TResult Function( LoginFormState form)?  loading,TResult Function( LoginFormState form,  T data)?  success,TResult Function( LoginFormState form,  String error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.form);case Loading() when loading != null:
return loading(_that.form);case Success() when success != null:
return success(_that.form,_that.data);case Failure() when failure != null:
return failure(_that.form,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( LoginFormState form)  initial,required TResult Function( LoginFormState form)  loading,required TResult Function( LoginFormState form,  T data)  success,required TResult Function( LoginFormState form,  String error)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.form);case Loading():
return loading(_that.form);case Success():
return success(_that.form,_that.data);case Failure():
return failure(_that.form,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( LoginFormState form)?  initial,TResult? Function( LoginFormState form)?  loading,TResult? Function( LoginFormState form,  T data)?  success,TResult? Function( LoginFormState form,  String error)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.form);case Loading() when loading != null:
return loading(_that.form);case Success() when success != null:
return success(_that.form,_that.data);case Failure() when failure != null:
return failure(_that.form,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements LoginState<T> {
  const _Initial(this.form);
  

@override final  LoginFormState form;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<T, _Initial<T>> get copyWith => __$InitialCopyWithImpl<T, _Initial<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString() {
  return 'LoginState<$T>.initial(form: $form)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<T,$Res> implements $LoginStateCopyWith<T, $Res> {
  factory _$InitialCopyWith(_Initial<T> value, $Res Function(_Initial<T>) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 LoginFormState form
});


@override $LoginFormStateCopyWith<$Res> get form;

}
/// @nodoc
class __$InitialCopyWithImpl<T,$Res>
    implements _$InitialCopyWith<T, $Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial<T> _self;
  final $Res Function(_Initial<T>) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,}) {
  return _then(_Initial<T>(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as LoginFormState,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginFormStateCopyWith<$Res> get form {
  
  return $LoginFormStateCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class Loading<T> implements LoginState<T> {
  const Loading(this.form);
  

@override final  LoginFormState form;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingCopyWith<T, Loading<T>> get copyWith => _$LoadingCopyWithImpl<T, Loading<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading<T>&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString() {
  return 'LoginState<$T>.loading(form: $form)';
}


}

/// @nodoc
abstract mixin class $LoadingCopyWith<T,$Res> implements $LoginStateCopyWith<T, $Res> {
  factory $LoadingCopyWith(Loading<T> value, $Res Function(Loading<T>) _then) = _$LoadingCopyWithImpl;
@override @useResult
$Res call({
 LoginFormState form
});


@override $LoginFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$LoadingCopyWithImpl<T,$Res>
    implements $LoadingCopyWith<T, $Res> {
  _$LoadingCopyWithImpl(this._self, this._then);

  final Loading<T> _self;
  final $Res Function(Loading<T>) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,}) {
  return _then(Loading<T>(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as LoginFormState,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginFormStateCopyWith<$Res> get form {
  
  return $LoginFormStateCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class Success<T> implements LoginState<T> {
  const Success(this.form, {required this.data});
  

@override final  LoginFormState form;
 final  T data;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<T, Success<T>> get copyWith => _$SuccessCopyWithImpl<T, Success<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success<T>&&(identical(other.form, form) || other.form == form)&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,form,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'LoginState<$T>.success(form: $form, data: $data)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<T,$Res> implements $LoginStateCopyWith<T, $Res> {
  factory $SuccessCopyWith(Success<T> value, $Res Function(Success<T>) _then) = _$SuccessCopyWithImpl;
@override @useResult
$Res call({
 LoginFormState form, T data
});


@override $LoginFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$SuccessCopyWithImpl<T,$Res>
    implements $SuccessCopyWith<T, $Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success<T> _self;
  final $Res Function(Success<T>) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,Object? data = freezed,}) {
  return _then(Success<T>(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as LoginFormState,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginFormStateCopyWith<$Res> get form {
  
  return $LoginFormStateCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class Failure<T> implements LoginState<T> {
  const Failure(this.form, {required this.error});
  

@override final  LoginFormState form;
 final  String error;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<T, Failure<T>> get copyWith => _$FailureCopyWithImpl<T, Failure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure<T>&&(identical(other.form, form) || other.form == form)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,form,error);

@override
String toString() {
  return 'LoginState<$T>.failure(form: $form, error: $error)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<T,$Res> implements $LoginStateCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) _then) = _$FailureCopyWithImpl;
@override @useResult
$Res call({
 LoginFormState form, String error
});


@override $LoginFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$FailureCopyWithImpl<T,$Res>
    implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure<T> _self;
  final $Res Function(Failure<T>) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,Object? error = null,}) {
  return _then(Failure<T>(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as LoginFormState,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginFormStateCopyWith<$Res> get form {
  
  return $LoginFormStateCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

// dart format on
