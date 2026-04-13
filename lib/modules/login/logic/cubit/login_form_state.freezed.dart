// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginFormState implements DiagnosticableTreeMixin {

 UserName get userName; Password get password; bool get isValid; bool get isBiometricsAvailable; bool get isRememberMe;
/// Create a copy of LoginFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginFormStateCopyWith<LoginFormState> get copyWith => _$LoginFormStateCopyWithImpl<LoginFormState>(this as LoginFormState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LoginFormState'))
    ..add(DiagnosticsProperty('userName', userName))..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('isValid', isValid))..add(DiagnosticsProperty('isBiometricsAvailable', isBiometricsAvailable))..add(DiagnosticsProperty('isRememberMe', isRememberMe));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginFormState&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.password, password) || other.password == password)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.isBiometricsAvailable, isBiometricsAvailable) || other.isBiometricsAvailable == isBiometricsAvailable)&&(identical(other.isRememberMe, isRememberMe) || other.isRememberMe == isRememberMe));
}


@override
int get hashCode => Object.hash(runtimeType,userName,password,isValid,isBiometricsAvailable,isRememberMe);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LoginFormState(userName: $userName, password: $password, isValid: $isValid, isBiometricsAvailable: $isBiometricsAvailable, isRememberMe: $isRememberMe)';
}


}

/// @nodoc
abstract mixin class $LoginFormStateCopyWith<$Res>  {
  factory $LoginFormStateCopyWith(LoginFormState value, $Res Function(LoginFormState) _then) = _$LoginFormStateCopyWithImpl;
@useResult
$Res call({
 UserName userName, Password password, bool isValid, bool isBiometricsAvailable, bool isRememberMe
});




}
/// @nodoc
class _$LoginFormStateCopyWithImpl<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  _$LoginFormStateCopyWithImpl(this._self, this._then);

  final LoginFormState _self;
  final $Res Function(LoginFormState) _then;

/// Create a copy of LoginFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userName = null,Object? password = null,Object? isValid = null,Object? isBiometricsAvailable = null,Object? isRememberMe = null,}) {
  return _then(_self.copyWith(
userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as UserName,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,isBiometricsAvailable: null == isBiometricsAvailable ? _self.isBiometricsAvailable : isBiometricsAvailable // ignore: cast_nullable_to_non_nullable
as bool,isRememberMe: null == isRememberMe ? _self.isRememberMe : isRememberMe // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginFormState].
extension LoginFormStatePatterns on LoginFormState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginFormState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginFormState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginFormState value)  $default,){
final _that = this;
switch (_that) {
case _LoginFormState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginFormState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginFormState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserName userName,  Password password,  bool isValid,  bool isBiometricsAvailable,  bool isRememberMe)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginFormState() when $default != null:
return $default(_that.userName,_that.password,_that.isValid,_that.isBiometricsAvailable,_that.isRememberMe);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserName userName,  Password password,  bool isValid,  bool isBiometricsAvailable,  bool isRememberMe)  $default,) {final _that = this;
switch (_that) {
case _LoginFormState():
return $default(_that.userName,_that.password,_that.isValid,_that.isBiometricsAvailable,_that.isRememberMe);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserName userName,  Password password,  bool isValid,  bool isBiometricsAvailable,  bool isRememberMe)?  $default,) {final _that = this;
switch (_that) {
case _LoginFormState() when $default != null:
return $default(_that.userName,_that.password,_that.isValid,_that.isBiometricsAvailable,_that.isRememberMe);case _:
  return null;

}
}

}

/// @nodoc


class _LoginFormState with DiagnosticableTreeMixin implements LoginFormState {
  const _LoginFormState({this.userName = const UserName.pure(), this.password = const Password.pure(), this.isValid = false, this.isBiometricsAvailable = false, this.isRememberMe = false});
  

@override@JsonKey() final  UserName userName;
@override@JsonKey() final  Password password;
@override@JsonKey() final  bool isValid;
@override@JsonKey() final  bool isBiometricsAvailable;
@override@JsonKey() final  bool isRememberMe;

/// Create a copy of LoginFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginFormStateCopyWith<_LoginFormState> get copyWith => __$LoginFormStateCopyWithImpl<_LoginFormState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LoginFormState'))
    ..add(DiagnosticsProperty('userName', userName))..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('isValid', isValid))..add(DiagnosticsProperty('isBiometricsAvailable', isBiometricsAvailable))..add(DiagnosticsProperty('isRememberMe', isRememberMe));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginFormState&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.password, password) || other.password == password)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.isBiometricsAvailable, isBiometricsAvailable) || other.isBiometricsAvailable == isBiometricsAvailable)&&(identical(other.isRememberMe, isRememberMe) || other.isRememberMe == isRememberMe));
}


@override
int get hashCode => Object.hash(runtimeType,userName,password,isValid,isBiometricsAvailable,isRememberMe);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LoginFormState(userName: $userName, password: $password, isValid: $isValid, isBiometricsAvailable: $isBiometricsAvailable, isRememberMe: $isRememberMe)';
}


}

/// @nodoc
abstract mixin class _$LoginFormStateCopyWith<$Res> implements $LoginFormStateCopyWith<$Res> {
  factory _$LoginFormStateCopyWith(_LoginFormState value, $Res Function(_LoginFormState) _then) = __$LoginFormStateCopyWithImpl;
@override @useResult
$Res call({
 UserName userName, Password password, bool isValid, bool isBiometricsAvailable, bool isRememberMe
});




}
/// @nodoc
class __$LoginFormStateCopyWithImpl<$Res>
    implements _$LoginFormStateCopyWith<$Res> {
  __$LoginFormStateCopyWithImpl(this._self, this._then);

  final _LoginFormState _self;
  final $Res Function(_LoginFormState) _then;

/// Create a copy of LoginFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userName = null,Object? password = null,Object? isValid = null,Object? isBiometricsAvailable = null,Object? isRememberMe = null,}) {
  return _then(_LoginFormState(
userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as UserName,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,isBiometricsAvailable: null == isBiometricsAvailable ? _self.isBiometricsAvailable : isBiometricsAvailable // ignore: cast_nullable_to_non_nullable
as bool,isRememberMe: null == isRememberMe ? _self.isRememberMe : isRememberMe // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
