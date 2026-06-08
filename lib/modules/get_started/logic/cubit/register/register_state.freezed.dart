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
mixin _$RegisterState<T> implements DiagnosticableTreeMixin {

 RegisterFormState get form;
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterStateCopyWith<T, RegisterState<T>> get copyWith => _$RegisterStateCopyWithImpl<T, RegisterState<T>>(this as RegisterState<T>, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RegisterState<$T>'))
    ..add(DiagnosticsProperty('form', form));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState<T>&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RegisterState<$T>(form: $form)';
}


}

/// @nodoc
abstract mixin class $RegisterStateCopyWith<T,$Res>  {
  factory $RegisterStateCopyWith(RegisterState<T> value, $Res Function(RegisterState<T>) _then) = _$RegisterStateCopyWithImpl;
@useResult
$Res call({
 RegisterFormState form
});


$RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$RegisterStateCopyWithImpl<T,$Res>
    implements $RegisterStateCopyWith<T, $Res> {
  _$RegisterStateCopyWithImpl(this._self, this._then);

  final RegisterState<T> _self;
  final $Res Function(RegisterState<T>) _then;

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
extension RegisterStatePatterns<T> on RegisterState<T> {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( RegisterFormState form)?  initial,TResult Function( RegisterFormState form)?  loading,TResult Function( RegisterFormState form,  T data)?  success,TResult Function( RegisterFormState form,  String error)?  failure,required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( RegisterFormState form)  initial,required TResult Function( RegisterFormState form)  loading,required TResult Function( RegisterFormState form,  T data)  success,required TResult Function( RegisterFormState form,  String error)  failure,}) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( RegisterFormState form)?  initial,TResult? Function( RegisterFormState form)?  loading,TResult? Function( RegisterFormState form,  T data)?  success,TResult? Function( RegisterFormState form,  String error)?  failure,}) {final _that = this;
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


class _Initial<T> with DiagnosticableTreeMixin implements RegisterState<T> {
  const _Initial(this.form);
  

@override final  RegisterFormState form;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<T, _Initial<T>> get copyWith => __$InitialCopyWithImpl<T, _Initial<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RegisterState<$T>.initial'))
    ..add(DiagnosticsProperty('form', form));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RegisterState<$T>.initial(form: $form)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<T,$Res> implements $RegisterStateCopyWith<T, $Res> {
  factory _$InitialCopyWith(_Initial<T> value, $Res Function(_Initial<T>) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class __$InitialCopyWithImpl<T,$Res>
    implements _$InitialCopyWith<T, $Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial<T> _self;
  final $Res Function(_Initial<T>) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,}) {
  return _then(_Initial<T>(
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


class Loading<T> with DiagnosticableTreeMixin implements RegisterState<T> {
  const Loading(this.form);
  

@override final  RegisterFormState form;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingCopyWith<T, Loading<T>> get copyWith => _$LoadingCopyWithImpl<T, Loading<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RegisterState<$T>.loading'))
    ..add(DiagnosticsProperty('form', form));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading<T>&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RegisterState<$T>.loading(form: $form)';
}


}

/// @nodoc
abstract mixin class $LoadingCopyWith<T,$Res> implements $RegisterStateCopyWith<T, $Res> {
  factory $LoadingCopyWith(Loading<T> value, $Res Function(Loading<T>) _then) = _$LoadingCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$LoadingCopyWithImpl<T,$Res>
    implements $LoadingCopyWith<T, $Res> {
  _$LoadingCopyWithImpl(this._self, this._then);

  final Loading<T> _self;
  final $Res Function(Loading<T>) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,}) {
  return _then(Loading<T>(
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


class Success<T> with DiagnosticableTreeMixin implements RegisterState<T> {
  const Success(this.form, {required this.data});
  

@override final  RegisterFormState form;
 final  T data;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<T, Success<T>> get copyWith => _$SuccessCopyWithImpl<T, Success<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RegisterState<$T>.success'))
    ..add(DiagnosticsProperty('form', form))..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success<T>&&(identical(other.form, form) || other.form == form)&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,form,const DeepCollectionEquality().hash(data));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RegisterState<$T>.success(form: $form, data: $data)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<T,$Res> implements $RegisterStateCopyWith<T, $Res> {
  factory $SuccessCopyWith(Success<T> value, $Res Function(Success<T>) _then) = _$SuccessCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form, T data
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$SuccessCopyWithImpl<T,$Res>
    implements $SuccessCopyWith<T, $Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success<T> _self;
  final $Res Function(Success<T>) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,Object? data = freezed,}) {
  return _then(Success<T>(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as RegisterFormState,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
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


class Failure<T> with DiagnosticableTreeMixin implements RegisterState<T> {
  const Failure(this.form, {required this.error});
  

@override final  RegisterFormState form;
 final  String error;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<T, Failure<T>> get copyWith => _$FailureCopyWithImpl<T, Failure<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RegisterState<$T>.failure'))
    ..add(DiagnosticsProperty('form', form))..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure<T>&&(identical(other.form, form) || other.form == form)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,form,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RegisterState<$T>.failure(form: $form, error: $error)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<T,$Res> implements $RegisterStateCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) _then) = _$FailureCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form, String error
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$FailureCopyWithImpl<T,$Res>
    implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure<T> _self;
  final $Res Function(Failure<T>) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,Object? error = null,}) {
  return _then(Failure<T>(
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
mixin _$RegisterFormState implements DiagnosticableTreeMixin {

 FullName get name; Email get email; PhoneNumber get phoneNumber; Password get password; Password get confirmPassword; String get birthDate; GenderType get gender; AccountTypeItem? get accountType; File? get idFile; File? get addressFile; bool get isForgotPassword; String get lang; String get code; bool get isPhone; String get nationalityCode; String get country; String get cityId; bool get isValid;
/// Create a copy of RegisterFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterFormStateCopyWith<RegisterFormState> get copyWith => _$RegisterFormStateCopyWithImpl<RegisterFormState>(this as RegisterFormState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RegisterFormState'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('phoneNumber', phoneNumber))..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('confirmPassword', confirmPassword))..add(DiagnosticsProperty('birthDate', birthDate))..add(DiagnosticsProperty('gender', gender))..add(DiagnosticsProperty('accountType', accountType))..add(DiagnosticsProperty('idFile', idFile))..add(DiagnosticsProperty('addressFile', addressFile))..add(DiagnosticsProperty('isForgotPassword', isForgotPassword))..add(DiagnosticsProperty('lang', lang))..add(DiagnosticsProperty('code', code))..add(DiagnosticsProperty('isPhone', isPhone))..add(DiagnosticsProperty('nationalityCode', nationalityCode))..add(DiagnosticsProperty('country', country))..add(DiagnosticsProperty('cityId', cityId))..add(DiagnosticsProperty('isValid', isValid));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterFormState&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.accountType, accountType) || other.accountType == accountType)&&(identical(other.idFile, idFile) || other.idFile == idFile)&&(identical(other.addressFile, addressFile) || other.addressFile == addressFile)&&(identical(other.isForgotPassword, isForgotPassword) || other.isForgotPassword == isForgotPassword)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.code, code) || other.code == code)&&(identical(other.isPhone, isPhone) || other.isPhone == isPhone)&&(identical(other.nationalityCode, nationalityCode) || other.nationalityCode == nationalityCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.isValid, isValid) || other.isValid == isValid));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,phoneNumber,password,confirmPassword,birthDate,gender,accountType,idFile,addressFile,isForgotPassword,lang,code,isPhone,nationalityCode,country,cityId,isValid);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RegisterFormState(name: $name, email: $email, phoneNumber: $phoneNumber, password: $password, confirmPassword: $confirmPassword, birthDate: $birthDate, gender: $gender, accountType: $accountType, idFile: $idFile, addressFile: $addressFile, isForgotPassword: $isForgotPassword, lang: $lang, code: $code, isPhone: $isPhone, nationalityCode: $nationalityCode, country: $country, cityId: $cityId, isValid: $isValid)';
}


}

/// @nodoc
abstract mixin class $RegisterFormStateCopyWith<$Res>  {
  factory $RegisterFormStateCopyWith(RegisterFormState value, $Res Function(RegisterFormState) _then) = _$RegisterFormStateCopyWithImpl;
@useResult
$Res call({
 FullName name, Email email, PhoneNumber phoneNumber, Password password, Password confirmPassword, String birthDate, GenderType gender, AccountTypeItem? accountType, File? idFile, File? addressFile, bool isForgotPassword, String lang, String code, bool isPhone, String nationalityCode, String country, String cityId, bool isValid
});




}
/// @nodoc
class _$RegisterFormStateCopyWithImpl<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  _$RegisterFormStateCopyWithImpl(this._self, this._then);

  final RegisterFormState _self;
  final $Res Function(RegisterFormState) _then;

/// Create a copy of RegisterFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? email = null,Object? phoneNumber = null,Object? password = null,Object? confirmPassword = null,Object? birthDate = null,Object? gender = null,Object? accountType = freezed,Object? idFile = freezed,Object? addressFile = freezed,Object? isForgotPassword = null,Object? lang = null,Object? code = null,Object? isPhone = null,Object? nationalityCode = null,Object? country = null,Object? cityId = null,Object? isValid = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as FullName,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Email,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as PhoneNumber,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as Password,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as GenderType,accountType: freezed == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as AccountTypeItem?,idFile: freezed == idFile ? _self.idFile : idFile // ignore: cast_nullable_to_non_nullable
as File?,addressFile: freezed == addressFile ? _self.addressFile : addressFile // ignore: cast_nullable_to_non_nullable
as File?,isForgotPassword: null == isForgotPassword ? _self.isForgotPassword : isForgotPassword // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,isPhone: null == isPhone ? _self.isPhone : isPhone // ignore: cast_nullable_to_non_nullable
as bool,nationalityCode: null == nationalityCode ? _self.nationalityCode : nationalityCode // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as String,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterFormState].
extension RegisterFormStatePatterns on RegisterFormState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterFormState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterFormState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterFormState value)  $default,){
final _that = this;
switch (_that) {
case _RegisterFormState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterFormState value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterFormState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FullName name,  Email email,  PhoneNumber phoneNumber,  Password password,  Password confirmPassword,  String birthDate,  GenderType gender,  AccountTypeItem? accountType,  File? idFile,  File? addressFile,  bool isForgotPassword,  String lang,  String code,  bool isPhone,  String nationalityCode,  String country,  String cityId,  bool isValid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterFormState() when $default != null:
return $default(_that.name,_that.email,_that.phoneNumber,_that.password,_that.confirmPassword,_that.birthDate,_that.gender,_that.accountType,_that.idFile,_that.addressFile,_that.isForgotPassword,_that.lang,_that.code,_that.isPhone,_that.nationalityCode,_that.country,_that.cityId,_that.isValid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FullName name,  Email email,  PhoneNumber phoneNumber,  Password password,  Password confirmPassword,  String birthDate,  GenderType gender,  AccountTypeItem? accountType,  File? idFile,  File? addressFile,  bool isForgotPassword,  String lang,  String code,  bool isPhone,  String nationalityCode,  String country,  String cityId,  bool isValid)  $default,) {final _that = this;
switch (_that) {
case _RegisterFormState():
return $default(_that.name,_that.email,_that.phoneNumber,_that.password,_that.confirmPassword,_that.birthDate,_that.gender,_that.accountType,_that.idFile,_that.addressFile,_that.isForgotPassword,_that.lang,_that.code,_that.isPhone,_that.nationalityCode,_that.country,_that.cityId,_that.isValid);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FullName name,  Email email,  PhoneNumber phoneNumber,  Password password,  Password confirmPassword,  String birthDate,  GenderType gender,  AccountTypeItem? accountType,  File? idFile,  File? addressFile,  bool isForgotPassword,  String lang,  String code,  bool isPhone,  String nationalityCode,  String country,  String cityId,  bool isValid)?  $default,) {final _that = this;
switch (_that) {
case _RegisterFormState() when $default != null:
return $default(_that.name,_that.email,_that.phoneNumber,_that.password,_that.confirmPassword,_that.birthDate,_that.gender,_that.accountType,_that.idFile,_that.addressFile,_that.isForgotPassword,_that.lang,_that.code,_that.isPhone,_that.nationalityCode,_that.country,_that.cityId,_that.isValid);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterFormState with DiagnosticableTreeMixin implements RegisterFormState {
  const _RegisterFormState({this.name = const FullName.pure(), this.email = const Email.pure(), this.phoneNumber = const PhoneNumber.pure(), this.password = const Password.pure(), this.confirmPassword = const Password.pure(), this.birthDate = '', this.gender = GenderType.none, this.accountType = null, this.idFile = null, this.addressFile = null, this.isForgotPassword = false, this.lang = 'en', this.code = '', this.isPhone = true, this.nationalityCode = '', this.country = '', this.cityId = '', this.isValid = false});
  

@override@JsonKey() final  FullName name;
@override@JsonKey() final  Email email;
@override@JsonKey() final  PhoneNumber phoneNumber;
@override@JsonKey() final  Password password;
@override@JsonKey() final  Password confirmPassword;
@override@JsonKey() final  String birthDate;
@override@JsonKey() final  GenderType gender;
@override@JsonKey() final  AccountTypeItem? accountType;
@override@JsonKey() final  File? idFile;
@override@JsonKey() final  File? addressFile;
@override@JsonKey() final  bool isForgotPassword;
@override@JsonKey() final  String lang;
@override@JsonKey() final  String code;
@override@JsonKey() final  bool isPhone;
@override@JsonKey() final  String nationalityCode;
@override@JsonKey() final  String country;
@override@JsonKey() final  String cityId;
@override@JsonKey() final  bool isValid;

/// Create a copy of RegisterFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterFormStateCopyWith<_RegisterFormState> get copyWith => __$RegisterFormStateCopyWithImpl<_RegisterFormState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'RegisterFormState'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('phoneNumber', phoneNumber))..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('confirmPassword', confirmPassword))..add(DiagnosticsProperty('birthDate', birthDate))..add(DiagnosticsProperty('gender', gender))..add(DiagnosticsProperty('accountType', accountType))..add(DiagnosticsProperty('idFile', idFile))..add(DiagnosticsProperty('addressFile', addressFile))..add(DiagnosticsProperty('isForgotPassword', isForgotPassword))..add(DiagnosticsProperty('lang', lang))..add(DiagnosticsProperty('code', code))..add(DiagnosticsProperty('isPhone', isPhone))..add(DiagnosticsProperty('nationalityCode', nationalityCode))..add(DiagnosticsProperty('country', country))..add(DiagnosticsProperty('cityId', cityId))..add(DiagnosticsProperty('isValid', isValid));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterFormState&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.accountType, accountType) || other.accountType == accountType)&&(identical(other.idFile, idFile) || other.idFile == idFile)&&(identical(other.addressFile, addressFile) || other.addressFile == addressFile)&&(identical(other.isForgotPassword, isForgotPassword) || other.isForgotPassword == isForgotPassword)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.code, code) || other.code == code)&&(identical(other.isPhone, isPhone) || other.isPhone == isPhone)&&(identical(other.nationalityCode, nationalityCode) || other.nationalityCode == nationalityCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.isValid, isValid) || other.isValid == isValid));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,phoneNumber,password,confirmPassword,birthDate,gender,accountType,idFile,addressFile,isForgotPassword,lang,code,isPhone,nationalityCode,country,cityId,isValid);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'RegisterFormState(name: $name, email: $email, phoneNumber: $phoneNumber, password: $password, confirmPassword: $confirmPassword, birthDate: $birthDate, gender: $gender, accountType: $accountType, idFile: $idFile, addressFile: $addressFile, isForgotPassword: $isForgotPassword, lang: $lang, code: $code, isPhone: $isPhone, nationalityCode: $nationalityCode, country: $country, cityId: $cityId, isValid: $isValid)';
}


}

/// @nodoc
abstract mixin class _$RegisterFormStateCopyWith<$Res> implements $RegisterFormStateCopyWith<$Res> {
  factory _$RegisterFormStateCopyWith(_RegisterFormState value, $Res Function(_RegisterFormState) _then) = __$RegisterFormStateCopyWithImpl;
@override @useResult
$Res call({
 FullName name, Email email, PhoneNumber phoneNumber, Password password, Password confirmPassword, String birthDate, GenderType gender, AccountTypeItem? accountType, File? idFile, File? addressFile, bool isForgotPassword, String lang, String code, bool isPhone, String nationalityCode, String country, String cityId, bool isValid
});




}
/// @nodoc
class __$RegisterFormStateCopyWithImpl<$Res>
    implements _$RegisterFormStateCopyWith<$Res> {
  __$RegisterFormStateCopyWithImpl(this._self, this._then);

  final _RegisterFormState _self;
  final $Res Function(_RegisterFormState) _then;

/// Create a copy of RegisterFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? phoneNumber = null,Object? password = null,Object? confirmPassword = null,Object? birthDate = null,Object? gender = null,Object? accountType = freezed,Object? idFile = freezed,Object? addressFile = freezed,Object? isForgotPassword = null,Object? lang = null,Object? code = null,Object? isPhone = null,Object? nationalityCode = null,Object? country = null,Object? cityId = null,Object? isValid = null,}) {
  return _then(_RegisterFormState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as FullName,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Email,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as PhoneNumber,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as Password,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as GenderType,accountType: freezed == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as AccountTypeItem?,idFile: freezed == idFile ? _self.idFile : idFile // ignore: cast_nullable_to_non_nullable
as File?,addressFile: freezed == addressFile ? _self.addressFile : addressFile // ignore: cast_nullable_to_non_nullable
as File?,isForgotPassword: null == isForgotPassword ? _self.isForgotPassword : isForgotPassword // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,isPhone: null == isPhone ? _self.isPhone : isPhone // ignore: cast_nullable_to_non_nullable
as bool,nationalityCode: null == nationalityCode ? _self.nationalityCode : nationalityCode // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as String,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
