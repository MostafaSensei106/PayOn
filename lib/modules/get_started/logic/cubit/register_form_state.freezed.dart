// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterFormState {

 String get email; String get name; String get phoneNumber; String get password; String get nationalityCode; bool get isPhone; String get birthData; String get gender; String get country; String get cityId; String get language; bool get isForgotPassword; String get code; List<AccountTypeResponseBody> get accountTypes; bool get isValid;
/// Create a copy of RegisterFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterFormStateCopyWith<RegisterFormState> get copyWith => _$RegisterFormStateCopyWithImpl<RegisterFormState>(this as RegisterFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterFormState&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.password, password) || other.password == password)&&(identical(other.nationalityCode, nationalityCode) || other.nationalityCode == nationalityCode)&&(identical(other.isPhone, isPhone) || other.isPhone == isPhone)&&(identical(other.birthData, birthData) || other.birthData == birthData)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.country, country) || other.country == country)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.language, language) || other.language == language)&&(identical(other.isForgotPassword, isForgotPassword) || other.isForgotPassword == isForgotPassword)&&(identical(other.code, code) || other.code == code)&&const DeepCollectionEquality().equals(other.accountTypes, accountTypes)&&(identical(other.isValid, isValid) || other.isValid == isValid));
}


@override
int get hashCode => Object.hash(runtimeType,email,name,phoneNumber,password,nationalityCode,isPhone,birthData,gender,country,cityId,language,isForgotPassword,code,const DeepCollectionEquality().hash(accountTypes),isValid);

@override
String toString() {
  return 'RegisterFormState(email: $email, name: $name, phoneNumber: $phoneNumber, password: $password, nationalityCode: $nationalityCode, isPhone: $isPhone, birthData: $birthData, gender: $gender, country: $country, cityId: $cityId, language: $language, isForgotPassword: $isForgotPassword, code: $code, accountTypes: $accountTypes, isValid: $isValid)';
}


}

/// @nodoc
abstract mixin class $RegisterFormStateCopyWith<$Res>  {
  factory $RegisterFormStateCopyWith(RegisterFormState value, $Res Function(RegisterFormState) _then) = _$RegisterFormStateCopyWithImpl;
@useResult
$Res call({
 String email, String name, String phoneNumber, String password, String nationalityCode, bool isPhone, String birthData, String gender, String country, String cityId, String language, bool isForgotPassword, String code, List<AccountTypeResponseBody> accountTypes, bool isValid
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
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? name = null,Object? phoneNumber = null,Object? password = null,Object? nationalityCode = null,Object? isPhone = null,Object? birthData = null,Object? gender = null,Object? country = null,Object? cityId = null,Object? language = null,Object? isForgotPassword = null,Object? code = null,Object? accountTypes = null,Object? isValid = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,nationalityCode: null == nationalityCode ? _self.nationalityCode : nationalityCode // ignore: cast_nullable_to_non_nullable
as String,isPhone: null == isPhone ? _self.isPhone : isPhone // ignore: cast_nullable_to_non_nullable
as bool,birthData: null == birthData ? _self.birthData : birthData // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,isForgotPassword: null == isForgotPassword ? _self.isForgotPassword : isForgotPassword // ignore: cast_nullable_to_non_nullable
as bool,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,accountTypes: null == accountTypes ? _self.accountTypes : accountTypes // ignore: cast_nullable_to_non_nullable
as List<AccountTypeResponseBody>,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String name,  String phoneNumber,  String password,  String nationalityCode,  bool isPhone,  String birthData,  String gender,  String country,  String cityId,  String language,  bool isForgotPassword,  String code,  List<AccountTypeResponseBody> accountTypes,  bool isValid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterFormState() when $default != null:
return $default(_that.email,_that.name,_that.phoneNumber,_that.password,_that.nationalityCode,_that.isPhone,_that.birthData,_that.gender,_that.country,_that.cityId,_that.language,_that.isForgotPassword,_that.code,_that.accountTypes,_that.isValid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String name,  String phoneNumber,  String password,  String nationalityCode,  bool isPhone,  String birthData,  String gender,  String country,  String cityId,  String language,  bool isForgotPassword,  String code,  List<AccountTypeResponseBody> accountTypes,  bool isValid)  $default,) {final _that = this;
switch (_that) {
case _RegisterFormState():
return $default(_that.email,_that.name,_that.phoneNumber,_that.password,_that.nationalityCode,_that.isPhone,_that.birthData,_that.gender,_that.country,_that.cityId,_that.language,_that.isForgotPassword,_that.code,_that.accountTypes,_that.isValid);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String name,  String phoneNumber,  String password,  String nationalityCode,  bool isPhone,  String birthData,  String gender,  String country,  String cityId,  String language,  bool isForgotPassword,  String code,  List<AccountTypeResponseBody> accountTypes,  bool isValid)?  $default,) {final _that = this;
switch (_that) {
case _RegisterFormState() when $default != null:
return $default(_that.email,_that.name,_that.phoneNumber,_that.password,_that.nationalityCode,_that.isPhone,_that.birthData,_that.gender,_that.country,_that.cityId,_that.language,_that.isForgotPassword,_that.code,_that.accountTypes,_that.isValid);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterFormState implements RegisterFormState {
  const _RegisterFormState({this.email = Email.pure(), this.name = UserName.pure(), this.phoneNumber = PhoneNumber.pure(), this.password = Password.pure(), this.nationalityCode = 'EG', this.isPhone = false, this.birthData = '', this.gender = 'N', this.country = 'EGY', this.cityId = '', this.language = 'EN', this.isForgotPassword = false, this.code = '', final  List<AccountTypeResponseBody> accountTypes = const [], this.isValid = false}): _accountTypes = accountTypes;
  

@override@JsonKey() final  String email;
@override@JsonKey() final  String name;
@override@JsonKey() final  String phoneNumber;
@override@JsonKey() final  String password;
@override@JsonKey() final  String nationalityCode;
@override@JsonKey() final  bool isPhone;
@override@JsonKey() final  String birthData;
@override@JsonKey() final  String gender;
@override@JsonKey() final  String country;
@override@JsonKey() final  String cityId;
@override@JsonKey() final  String language;
@override@JsonKey() final  bool isForgotPassword;
@override@JsonKey() final  String code;
 final  List<AccountTypeResponseBody> _accountTypes;
@override@JsonKey() List<AccountTypeResponseBody> get accountTypes {
  if (_accountTypes is EqualUnmodifiableListView) return _accountTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accountTypes);
}

@override@JsonKey() final  bool isValid;

/// Create a copy of RegisterFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterFormStateCopyWith<_RegisterFormState> get copyWith => __$RegisterFormStateCopyWithImpl<_RegisterFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterFormState&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.password, password) || other.password == password)&&(identical(other.nationalityCode, nationalityCode) || other.nationalityCode == nationalityCode)&&(identical(other.isPhone, isPhone) || other.isPhone == isPhone)&&(identical(other.birthData, birthData) || other.birthData == birthData)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.country, country) || other.country == country)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.language, language) || other.language == language)&&(identical(other.isForgotPassword, isForgotPassword) || other.isForgotPassword == isForgotPassword)&&(identical(other.code, code) || other.code == code)&&const DeepCollectionEquality().equals(other._accountTypes, _accountTypes)&&(identical(other.isValid, isValid) || other.isValid == isValid));
}


@override
int get hashCode => Object.hash(runtimeType,email,name,phoneNumber,password,nationalityCode,isPhone,birthData,gender,country,cityId,language,isForgotPassword,code,const DeepCollectionEquality().hash(_accountTypes),isValid);

@override
String toString() {
  return 'RegisterFormState(email: $email, name: $name, phoneNumber: $phoneNumber, password: $password, nationalityCode: $nationalityCode, isPhone: $isPhone, birthData: $birthData, gender: $gender, country: $country, cityId: $cityId, language: $language, isForgotPassword: $isForgotPassword, code: $code, accountTypes: $accountTypes, isValid: $isValid)';
}


}

/// @nodoc
abstract mixin class _$RegisterFormStateCopyWith<$Res> implements $RegisterFormStateCopyWith<$Res> {
  factory _$RegisterFormStateCopyWith(_RegisterFormState value, $Res Function(_RegisterFormState) _then) = __$RegisterFormStateCopyWithImpl;
@override @useResult
$Res call({
 String email, String name, String phoneNumber, String password, String nationalityCode, bool isPhone, String birthData, String gender, String country, String cityId, String language, bool isForgotPassword, String code, List<AccountTypeResponseBody> accountTypes, bool isValid
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
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? name = null,Object? phoneNumber = null,Object? password = null,Object? nationalityCode = null,Object? isPhone = null,Object? birthData = null,Object? gender = null,Object? country = null,Object? cityId = null,Object? language = null,Object? isForgotPassword = null,Object? code = null,Object? accountTypes = null,Object? isValid = null,}) {
  return _then(_RegisterFormState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,nationalityCode: null == nationalityCode ? _self.nationalityCode : nationalityCode // ignore: cast_nullable_to_non_nullable
as String,isPhone: null == isPhone ? _self.isPhone : isPhone // ignore: cast_nullable_to_non_nullable
as bool,birthData: null == birthData ? _self.birthData : birthData // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,isForgotPassword: null == isForgotPassword ? _self.isForgotPassword : isForgotPassword // ignore: cast_nullable_to_non_nullable
as bool,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,accountTypes: null == accountTypes ? _self._accountTypes : accountTypes // ignore: cast_nullable_to_non_nullable
as List<AccountTypeResponseBody>,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
