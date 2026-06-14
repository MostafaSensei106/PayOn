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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( _RegisterSuccess value)?  registerSuccess,TResult Function( _CreateAccountSuccess value)?  createAccountSuccess,TResult Function( _GetRequiredFilesSuccess value)?  getRequiredFilesSuccess,TResult Function( _GetCountriesSuccess value)?  getCountriesSuccess,TResult Function( _KycUploadSuccess value)?  kycUploadSuccess,TResult Function( Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case _RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that);case _CreateAccountSuccess() when createAccountSuccess != null:
return createAccountSuccess(_that);case _GetRequiredFilesSuccess() when getRequiredFilesSuccess != null:
return getRequiredFilesSuccess(_that);case _GetCountriesSuccess() when getCountriesSuccess != null:
return getCountriesSuccess(_that);case _KycUploadSuccess() when kycUploadSuccess != null:
return kycUploadSuccess(_that);case Failure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( _RegisterSuccess value)  registerSuccess,required TResult Function( _CreateAccountSuccess value)  createAccountSuccess,required TResult Function( _GetRequiredFilesSuccess value)  getRequiredFilesSuccess,required TResult Function( _GetCountriesSuccess value)  getCountriesSuccess,required TResult Function( _KycUploadSuccess value)  kycUploadSuccess,required TResult Function( Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Loading():
return loading(_that);case _RegisterSuccess():
return registerSuccess(_that);case _CreateAccountSuccess():
return createAccountSuccess(_that);case _GetRequiredFilesSuccess():
return getRequiredFilesSuccess(_that);case _GetCountriesSuccess():
return getCountriesSuccess(_that);case _KycUploadSuccess():
return kycUploadSuccess(_that);case Failure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( _RegisterSuccess value)?  registerSuccess,TResult? Function( _CreateAccountSuccess value)?  createAccountSuccess,TResult? Function( _GetRequiredFilesSuccess value)?  getRequiredFilesSuccess,TResult? Function( _GetCountriesSuccess value)?  getCountriesSuccess,TResult? Function( _KycUploadSuccess value)?  kycUploadSuccess,TResult? Function( Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case _RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that);case _CreateAccountSuccess() when createAccountSuccess != null:
return createAccountSuccess(_that);case _GetRequiredFilesSuccess() when getRequiredFilesSuccess != null:
return getRequiredFilesSuccess(_that);case _GetCountriesSuccess() when getCountriesSuccess != null:
return getCountriesSuccess(_that);case _KycUploadSuccess() when kycUploadSuccess != null:
return kycUploadSuccess(_that);case Failure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( RegisterFormState form)?  initial,TResult Function( RegisterFormState form)?  loading,TResult Function( RegisterFormState form,  RegisterEntity data)?  registerSuccess,TResult Function( RegisterFormState form,  CreateAccountEntity data)?  createAccountSuccess,TResult Function( RegisterFormState form,  List<RequiredFileEntity> files)?  getRequiredFilesSuccess,TResult Function( RegisterFormState form,  List<CountryItemEntity> countries)?  getCountriesSuccess,TResult Function( RegisterFormState form)?  kycUploadSuccess,TResult Function( RegisterFormState form,  String error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.form);case Loading() when loading != null:
return loading(_that.form);case _RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that.form,_that.data);case _CreateAccountSuccess() when createAccountSuccess != null:
return createAccountSuccess(_that.form,_that.data);case _GetRequiredFilesSuccess() when getRequiredFilesSuccess != null:
return getRequiredFilesSuccess(_that.form,_that.files);case _GetCountriesSuccess() when getCountriesSuccess != null:
return getCountriesSuccess(_that.form,_that.countries);case _KycUploadSuccess() when kycUploadSuccess != null:
return kycUploadSuccess(_that.form);case Failure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( RegisterFormState form)  initial,required TResult Function( RegisterFormState form)  loading,required TResult Function( RegisterFormState form,  RegisterEntity data)  registerSuccess,required TResult Function( RegisterFormState form,  CreateAccountEntity data)  createAccountSuccess,required TResult Function( RegisterFormState form,  List<RequiredFileEntity> files)  getRequiredFilesSuccess,required TResult Function( RegisterFormState form,  List<CountryItemEntity> countries)  getCountriesSuccess,required TResult Function( RegisterFormState form)  kycUploadSuccess,required TResult Function( RegisterFormState form,  String error)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.form);case Loading():
return loading(_that.form);case _RegisterSuccess():
return registerSuccess(_that.form,_that.data);case _CreateAccountSuccess():
return createAccountSuccess(_that.form,_that.data);case _GetRequiredFilesSuccess():
return getRequiredFilesSuccess(_that.form,_that.files);case _GetCountriesSuccess():
return getCountriesSuccess(_that.form,_that.countries);case _KycUploadSuccess():
return kycUploadSuccess(_that.form);case Failure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( RegisterFormState form)?  initial,TResult? Function( RegisterFormState form)?  loading,TResult? Function( RegisterFormState form,  RegisterEntity data)?  registerSuccess,TResult? Function( RegisterFormState form,  CreateAccountEntity data)?  createAccountSuccess,TResult? Function( RegisterFormState form,  List<RequiredFileEntity> files)?  getRequiredFilesSuccess,TResult? Function( RegisterFormState form,  List<CountryItemEntity> countries)?  getCountriesSuccess,TResult? Function( RegisterFormState form)?  kycUploadSuccess,TResult? Function( RegisterFormState form,  String error)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.form);case Loading() when loading != null:
return loading(_that.form);case _RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that.form,_that.data);case _CreateAccountSuccess() when createAccountSuccess != null:
return createAccountSuccess(_that.form,_that.data);case _GetRequiredFilesSuccess() when getRequiredFilesSuccess != null:
return getRequiredFilesSuccess(_that.form,_that.files);case _GetCountriesSuccess() when getCountriesSuccess != null:
return getCountriesSuccess(_that.form,_that.countries);case _KycUploadSuccess() when kycUploadSuccess != null:
return kycUploadSuccess(_that.form);case Failure() when failure != null:
return failure(_that.form,_that.error);case _:
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


class Loading implements RegisterState {
  const Loading(this.form);
  

@override final  RegisterFormState form;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingCopyWith<Loading> get copyWith => _$LoadingCopyWithImpl<Loading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString() {
  return 'RegisterState.loading(form: $form)';
}


}

/// @nodoc
abstract mixin class $LoadingCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) _then) = _$LoadingCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(this._self, this._then);

  final Loading _self;
  final $Res Function(Loading) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,}) {
  return _then(Loading(
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


class _RegisterSuccess implements RegisterState {
  const _RegisterSuccess(this.form, {required this.data});
  

@override final  RegisterFormState form;
 final  RegisterEntity data;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterSuccessCopyWith<_RegisterSuccess> get copyWith => __$RegisterSuccessCopyWithImpl<_RegisterSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterSuccess&&(identical(other.form, form) || other.form == form)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,form,data);

@override
String toString() {
  return 'RegisterState.registerSuccess(form: $form, data: $data)';
}


}

/// @nodoc
abstract mixin class _$RegisterSuccessCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterSuccessCopyWith(_RegisterSuccess value, $Res Function(_RegisterSuccess) _then) = __$RegisterSuccessCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form, RegisterEntity data
});


@override $RegisterFormStateCopyWith<$Res> get form;$RegisterEntityCopyWith<$Res> get data;

}
/// @nodoc
class __$RegisterSuccessCopyWithImpl<$Res>
    implements _$RegisterSuccessCopyWith<$Res> {
  __$RegisterSuccessCopyWithImpl(this._self, this._then);

  final _RegisterSuccess _self;
  final $Res Function(_RegisterSuccess) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,Object? data = null,}) {
  return _then(_RegisterSuccess(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as RegisterFormState,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as RegisterEntity,
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
}/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterEntityCopyWith<$Res> get data {
  
  return $RegisterEntityCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _CreateAccountSuccess implements RegisterState {
  const _CreateAccountSuccess(this.form, {required this.data});
  

@override final  RegisterFormState form;
 final  CreateAccountEntity data;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAccountSuccessCopyWith<_CreateAccountSuccess> get copyWith => __$CreateAccountSuccessCopyWithImpl<_CreateAccountSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAccountSuccess&&(identical(other.form, form) || other.form == form)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,form,data);

@override
String toString() {
  return 'RegisterState.createAccountSuccess(form: $form, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CreateAccountSuccessCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$CreateAccountSuccessCopyWith(_CreateAccountSuccess value, $Res Function(_CreateAccountSuccess) _then) = __$CreateAccountSuccessCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form, CreateAccountEntity data
});


@override $RegisterFormStateCopyWith<$Res> get form;$CreateAccountEntityCopyWith<$Res> get data;

}
/// @nodoc
class __$CreateAccountSuccessCopyWithImpl<$Res>
    implements _$CreateAccountSuccessCopyWith<$Res> {
  __$CreateAccountSuccessCopyWithImpl(this._self, this._then);

  final _CreateAccountSuccess _self;
  final $Res Function(_CreateAccountSuccess) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,Object? data = null,}) {
  return _then(_CreateAccountSuccess(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as RegisterFormState,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateAccountEntity,
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
}/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateAccountEntityCopyWith<$Res> get data {
  
  return $CreateAccountEntityCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _GetRequiredFilesSuccess implements RegisterState {
  const _GetRequiredFilesSuccess(this.form, {required final  List<RequiredFileEntity> files}): _files = files;
  

@override final  RegisterFormState form;
 final  List<RequiredFileEntity> _files;
 List<RequiredFileEntity> get files {
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_files);
}


/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetRequiredFilesSuccessCopyWith<_GetRequiredFilesSuccess> get copyWith => __$GetRequiredFilesSuccessCopyWithImpl<_GetRequiredFilesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetRequiredFilesSuccess&&(identical(other.form, form) || other.form == form)&&const DeepCollectionEquality().equals(other._files, _files));
}


@override
int get hashCode => Object.hash(runtimeType,form,const DeepCollectionEquality().hash(_files));

@override
String toString() {
  return 'RegisterState.getRequiredFilesSuccess(form: $form, files: $files)';
}


}

/// @nodoc
abstract mixin class _$GetRequiredFilesSuccessCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$GetRequiredFilesSuccessCopyWith(_GetRequiredFilesSuccess value, $Res Function(_GetRequiredFilesSuccess) _then) = __$GetRequiredFilesSuccessCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form, List<RequiredFileEntity> files
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class __$GetRequiredFilesSuccessCopyWithImpl<$Res>
    implements _$GetRequiredFilesSuccessCopyWith<$Res> {
  __$GetRequiredFilesSuccessCopyWithImpl(this._self, this._then);

  final _GetRequiredFilesSuccess _self;
  final $Res Function(_GetRequiredFilesSuccess) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,Object? files = null,}) {
  return _then(_GetRequiredFilesSuccess(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as RegisterFormState,files: null == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<RequiredFileEntity>,
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


class _GetCountriesSuccess implements RegisterState {
  const _GetCountriesSuccess(this.form, {required final  List<CountryItemEntity> countries}): _countries = countries;
  

@override final  RegisterFormState form;
 final  List<CountryItemEntity> _countries;
 List<CountryItemEntity> get countries {
  if (_countries is EqualUnmodifiableListView) return _countries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_countries);
}


/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCountriesSuccessCopyWith<_GetCountriesSuccess> get copyWith => __$GetCountriesSuccessCopyWithImpl<_GetCountriesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCountriesSuccess&&(identical(other.form, form) || other.form == form)&&const DeepCollectionEquality().equals(other._countries, _countries));
}


@override
int get hashCode => Object.hash(runtimeType,form,const DeepCollectionEquality().hash(_countries));

@override
String toString() {
  return 'RegisterState.getCountriesSuccess(form: $form, countries: $countries)';
}


}

/// @nodoc
abstract mixin class _$GetCountriesSuccessCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$GetCountriesSuccessCopyWith(_GetCountriesSuccess value, $Res Function(_GetCountriesSuccess) _then) = __$GetCountriesSuccessCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form, List<CountryItemEntity> countries
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class __$GetCountriesSuccessCopyWithImpl<$Res>
    implements _$GetCountriesSuccessCopyWith<$Res> {
  __$GetCountriesSuccessCopyWithImpl(this._self, this._then);

  final _GetCountriesSuccess _self;
  final $Res Function(_GetCountriesSuccess) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,Object? countries = null,}) {
  return _then(_GetCountriesSuccess(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as RegisterFormState,countries: null == countries ? _self._countries : countries // ignore: cast_nullable_to_non_nullable
as List<CountryItemEntity>,
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


class _KycUploadSuccess implements RegisterState {
  const _KycUploadSuccess(this.form);
  

@override final  RegisterFormState form;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KycUploadSuccessCopyWith<_KycUploadSuccess> get copyWith => __$KycUploadSuccessCopyWithImpl<_KycUploadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KycUploadSuccess&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString() {
  return 'RegisterState.kycUploadSuccess(form: $form)';
}


}

/// @nodoc
abstract mixin class _$KycUploadSuccessCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$KycUploadSuccessCopyWith(_KycUploadSuccess value, $Res Function(_KycUploadSuccess) _then) = __$KycUploadSuccessCopyWithImpl;
@override @useResult
$Res call({
 RegisterFormState form
});


@override $RegisterFormStateCopyWith<$Res> get form;

}
/// @nodoc
class __$KycUploadSuccessCopyWithImpl<$Res>
    implements _$KycUploadSuccessCopyWith<$Res> {
  __$KycUploadSuccessCopyWithImpl(this._self, this._then);

  final _KycUploadSuccess _self;
  final $Res Function(_KycUploadSuccess) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? form = null,}) {
  return _then(_KycUploadSuccess(
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
  return 'RegisterState.failure(form: $form, error: $error)';
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
mixin _$RegisterFormState {

 FullName get name; Email get email; PhoneNumber get phoneNumber; Password get password; Password get confirmPassword; String get birthDate; GenderType get gender; AccountTypeItemEntity? get accountType; Map<int, File> get files; String get address; String get nationalId; double? get latitude; double? get longitude; bool get isAddWalletFlow; bool get isForgotPassword; String get lang; String get code; bool get isPhone; String get nationalityCode; String get country; List<CountryItemEntity> get countries; List<RequiredFileEntity> get requiredFiles; int get cityId; int get currentStep; bool get isValid; bool get isOcrProcessing; String get accountId;
/// Create a copy of RegisterFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterFormStateCopyWith<RegisterFormState> get copyWith => _$RegisterFormStateCopyWithImpl<RegisterFormState>(this as RegisterFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterFormState&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.accountType, accountType) || other.accountType == accountType)&&const DeepCollectionEquality().equals(other.files, files)&&(identical(other.address, address) || other.address == address)&&(identical(other.nationalId, nationalId) || other.nationalId == nationalId)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isAddWalletFlow, isAddWalletFlow) || other.isAddWalletFlow == isAddWalletFlow)&&(identical(other.isForgotPassword, isForgotPassword) || other.isForgotPassword == isForgotPassword)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.code, code) || other.code == code)&&(identical(other.isPhone, isPhone) || other.isPhone == isPhone)&&(identical(other.nationalityCode, nationalityCode) || other.nationalityCode == nationalityCode)&&(identical(other.country, country) || other.country == country)&&const DeepCollectionEquality().equals(other.countries, countries)&&const DeepCollectionEquality().equals(other.requiredFiles, requiredFiles)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.currentStep, currentStep) || other.currentStep == currentStep)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.isOcrProcessing, isOcrProcessing) || other.isOcrProcessing == isOcrProcessing)&&(identical(other.accountId, accountId) || other.accountId == accountId));
}


@override
int get hashCode => Object.hashAll([runtimeType,name,email,phoneNumber,password,confirmPassword,birthDate,gender,accountType,const DeepCollectionEquality().hash(files),address,nationalId,latitude,longitude,isAddWalletFlow,isForgotPassword,lang,code,isPhone,nationalityCode,country,const DeepCollectionEquality().hash(countries),const DeepCollectionEquality().hash(requiredFiles),cityId,currentStep,isValid,isOcrProcessing,accountId]);

@override
String toString() {
  return 'RegisterFormState(name: $name, email: $email, phoneNumber: $phoneNumber, password: $password, confirmPassword: $confirmPassword, birthDate: $birthDate, gender: $gender, accountType: $accountType, files: $files, address: $address, nationalId: $nationalId, latitude: $latitude, longitude: $longitude, isAddWalletFlow: $isAddWalletFlow, isForgotPassword: $isForgotPassword, lang: $lang, code: $code, isPhone: $isPhone, nationalityCode: $nationalityCode, country: $country, countries: $countries, requiredFiles: $requiredFiles, cityId: $cityId, currentStep: $currentStep, isValid: $isValid, isOcrProcessing: $isOcrProcessing, accountId: $accountId)';
}


}

/// @nodoc
abstract mixin class $RegisterFormStateCopyWith<$Res>  {
  factory $RegisterFormStateCopyWith(RegisterFormState value, $Res Function(RegisterFormState) _then) = _$RegisterFormStateCopyWithImpl;
@useResult
$Res call({
 FullName name, Email email, PhoneNumber phoneNumber, Password password, Password confirmPassword, String birthDate, GenderType gender, AccountTypeItemEntity? accountType, Map<int, File> files, String address, String nationalId, double? latitude, double? longitude, bool isAddWalletFlow, bool isForgotPassword, String lang, String code, bool isPhone, String nationalityCode, String country, List<CountryItemEntity> countries, List<RequiredFileEntity> requiredFiles, int cityId, int currentStep, bool isValid, bool isOcrProcessing, String accountId
});


$AccountTypeItemEntityCopyWith<$Res>? get accountType;

}
/// @nodoc
class _$RegisterFormStateCopyWithImpl<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  _$RegisterFormStateCopyWithImpl(this._self, this._then);

  final RegisterFormState _self;
  final $Res Function(RegisterFormState) _then;

/// Create a copy of RegisterFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? email = null,Object? phoneNumber = null,Object? password = null,Object? confirmPassword = null,Object? birthDate = null,Object? gender = null,Object? accountType = freezed,Object? files = null,Object? address = null,Object? nationalId = null,Object? latitude = freezed,Object? longitude = freezed,Object? isAddWalletFlow = null,Object? isForgotPassword = null,Object? lang = null,Object? code = null,Object? isPhone = null,Object? nationalityCode = null,Object? country = null,Object? countries = null,Object? requiredFiles = null,Object? cityId = null,Object? currentStep = null,Object? isValid = null,Object? isOcrProcessing = null,Object? accountId = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as FullName,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Email,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as PhoneNumber,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as Password,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as GenderType,accountType: freezed == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as AccountTypeItemEntity?,files: null == files ? _self.files : files // ignore: cast_nullable_to_non_nullable
as Map<int, File>,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,nationalId: null == nationalId ? _self.nationalId : nationalId // ignore: cast_nullable_to_non_nullable
as String,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,isAddWalletFlow: null == isAddWalletFlow ? _self.isAddWalletFlow : isAddWalletFlow // ignore: cast_nullable_to_non_nullable
as bool,isForgotPassword: null == isForgotPassword ? _self.isForgotPassword : isForgotPassword // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,isPhone: null == isPhone ? _self.isPhone : isPhone // ignore: cast_nullable_to_non_nullable
as bool,nationalityCode: null == nationalityCode ? _self.nationalityCode : nationalityCode // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,countries: null == countries ? _self.countries : countries // ignore: cast_nullable_to_non_nullable
as List<CountryItemEntity>,requiredFiles: null == requiredFiles ? _self.requiredFiles : requiredFiles // ignore: cast_nullable_to_non_nullable
as List<RequiredFileEntity>,cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,currentStep: null == currentStep ? _self.currentStep : currentStep // ignore: cast_nullable_to_non_nullable
as int,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,isOcrProcessing: null == isOcrProcessing ? _self.isOcrProcessing : isOcrProcessing // ignore: cast_nullable_to_non_nullable
as bool,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of RegisterFormState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountTypeItemEntityCopyWith<$Res>? get accountType {
    if (_self.accountType == null) {
    return null;
  }

  return $AccountTypeItemEntityCopyWith<$Res>(_self.accountType!, (value) {
    return _then(_self.copyWith(accountType: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FullName name,  Email email,  PhoneNumber phoneNumber,  Password password,  Password confirmPassword,  String birthDate,  GenderType gender,  AccountTypeItemEntity? accountType,  Map<int, File> files,  String address,  String nationalId,  double? latitude,  double? longitude,  bool isAddWalletFlow,  bool isForgotPassword,  String lang,  String code,  bool isPhone,  String nationalityCode,  String country,  List<CountryItemEntity> countries,  List<RequiredFileEntity> requiredFiles,  int cityId,  int currentStep,  bool isValid,  bool isOcrProcessing,  String accountId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterFormState() when $default != null:
return $default(_that.name,_that.email,_that.phoneNumber,_that.password,_that.confirmPassword,_that.birthDate,_that.gender,_that.accountType,_that.files,_that.address,_that.nationalId,_that.latitude,_that.longitude,_that.isAddWalletFlow,_that.isForgotPassword,_that.lang,_that.code,_that.isPhone,_that.nationalityCode,_that.country,_that.countries,_that.requiredFiles,_that.cityId,_that.currentStep,_that.isValid,_that.isOcrProcessing,_that.accountId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FullName name,  Email email,  PhoneNumber phoneNumber,  Password password,  Password confirmPassword,  String birthDate,  GenderType gender,  AccountTypeItemEntity? accountType,  Map<int, File> files,  String address,  String nationalId,  double? latitude,  double? longitude,  bool isAddWalletFlow,  bool isForgotPassword,  String lang,  String code,  bool isPhone,  String nationalityCode,  String country,  List<CountryItemEntity> countries,  List<RequiredFileEntity> requiredFiles,  int cityId,  int currentStep,  bool isValid,  bool isOcrProcessing,  String accountId)  $default,) {final _that = this;
switch (_that) {
case _RegisterFormState():
return $default(_that.name,_that.email,_that.phoneNumber,_that.password,_that.confirmPassword,_that.birthDate,_that.gender,_that.accountType,_that.files,_that.address,_that.nationalId,_that.latitude,_that.longitude,_that.isAddWalletFlow,_that.isForgotPassword,_that.lang,_that.code,_that.isPhone,_that.nationalityCode,_that.country,_that.countries,_that.requiredFiles,_that.cityId,_that.currentStep,_that.isValid,_that.isOcrProcessing,_that.accountId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FullName name,  Email email,  PhoneNumber phoneNumber,  Password password,  Password confirmPassword,  String birthDate,  GenderType gender,  AccountTypeItemEntity? accountType,  Map<int, File> files,  String address,  String nationalId,  double? latitude,  double? longitude,  bool isAddWalletFlow,  bool isForgotPassword,  String lang,  String code,  bool isPhone,  String nationalityCode,  String country,  List<CountryItemEntity> countries,  List<RequiredFileEntity> requiredFiles,  int cityId,  int currentStep,  bool isValid,  bool isOcrProcessing,  String accountId)?  $default,) {final _that = this;
switch (_that) {
case _RegisterFormState() when $default != null:
return $default(_that.name,_that.email,_that.phoneNumber,_that.password,_that.confirmPassword,_that.birthDate,_that.gender,_that.accountType,_that.files,_that.address,_that.nationalId,_that.latitude,_that.longitude,_that.isAddWalletFlow,_that.isForgotPassword,_that.lang,_that.code,_that.isPhone,_that.nationalityCode,_that.country,_that.countries,_that.requiredFiles,_that.cityId,_that.currentStep,_that.isValid,_that.isOcrProcessing,_that.accountId);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterFormState implements RegisterFormState {
  const _RegisterFormState({this.name = const FullName.pure(), this.email = const Email.pure(), this.phoneNumber = const PhoneNumber.pure(), this.password = const Password.pure(), this.confirmPassword = const Password.pure(), this.birthDate = '', this.gender = GenderType.none, this.accountType = null, final  Map<int, File> files = const {}, this.address = '', this.nationalId = '', this.latitude = null, this.longitude = null, this.isAddWalletFlow = false, this.isForgotPassword = false, this.lang = 'en', this.code = '', this.isPhone = true, this.nationalityCode = '', this.country = '', final  List<CountryItemEntity> countries = const [], final  List<RequiredFileEntity> requiredFiles = const [], this.cityId = 2, this.currentStep = 0, this.isValid = false, this.isOcrProcessing = false, this.accountId = ''}): _files = files,_countries = countries,_requiredFiles = requiredFiles;
  

@override@JsonKey() final  FullName name;
@override@JsonKey() final  Email email;
@override@JsonKey() final  PhoneNumber phoneNumber;
@override@JsonKey() final  Password password;
@override@JsonKey() final  Password confirmPassword;
@override@JsonKey() final  String birthDate;
@override@JsonKey() final  GenderType gender;
@override@JsonKey() final  AccountTypeItemEntity? accountType;
 final  Map<int, File> _files;
@override@JsonKey() Map<int, File> get files {
  if (_files is EqualUnmodifiableMapView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_files);
}

@override@JsonKey() final  String address;
@override@JsonKey() final  String nationalId;
@override@JsonKey() final  double? latitude;
@override@JsonKey() final  double? longitude;
@override@JsonKey() final  bool isAddWalletFlow;
@override@JsonKey() final  bool isForgotPassword;
@override@JsonKey() final  String lang;
@override@JsonKey() final  String code;
@override@JsonKey() final  bool isPhone;
@override@JsonKey() final  String nationalityCode;
@override@JsonKey() final  String country;
 final  List<CountryItemEntity> _countries;
@override@JsonKey() List<CountryItemEntity> get countries {
  if (_countries is EqualUnmodifiableListView) return _countries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_countries);
}

 final  List<RequiredFileEntity> _requiredFiles;
@override@JsonKey() List<RequiredFileEntity> get requiredFiles {
  if (_requiredFiles is EqualUnmodifiableListView) return _requiredFiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_requiredFiles);
}

@override@JsonKey() final  int cityId;
@override@JsonKey() final  int currentStep;
@override@JsonKey() final  bool isValid;
@override@JsonKey() final  bool isOcrProcessing;
@override@JsonKey() final  String accountId;

/// Create a copy of RegisterFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterFormStateCopyWith<_RegisterFormState> get copyWith => __$RegisterFormStateCopyWithImpl<_RegisterFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterFormState&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.password, password) || other.password == password)&&(identical(other.confirmPassword, confirmPassword) || other.confirmPassword == confirmPassword)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.accountType, accountType) || other.accountType == accountType)&&const DeepCollectionEquality().equals(other._files, _files)&&(identical(other.address, address) || other.address == address)&&(identical(other.nationalId, nationalId) || other.nationalId == nationalId)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isAddWalletFlow, isAddWalletFlow) || other.isAddWalletFlow == isAddWalletFlow)&&(identical(other.isForgotPassword, isForgotPassword) || other.isForgotPassword == isForgotPassword)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.code, code) || other.code == code)&&(identical(other.isPhone, isPhone) || other.isPhone == isPhone)&&(identical(other.nationalityCode, nationalityCode) || other.nationalityCode == nationalityCode)&&(identical(other.country, country) || other.country == country)&&const DeepCollectionEquality().equals(other._countries, _countries)&&const DeepCollectionEquality().equals(other._requiredFiles, _requiredFiles)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.currentStep, currentStep) || other.currentStep == currentStep)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.isOcrProcessing, isOcrProcessing) || other.isOcrProcessing == isOcrProcessing)&&(identical(other.accountId, accountId) || other.accountId == accountId));
}


@override
int get hashCode => Object.hashAll([runtimeType,name,email,phoneNumber,password,confirmPassword,birthDate,gender,accountType,const DeepCollectionEquality().hash(_files),address,nationalId,latitude,longitude,isAddWalletFlow,isForgotPassword,lang,code,isPhone,nationalityCode,country,const DeepCollectionEquality().hash(_countries),const DeepCollectionEquality().hash(_requiredFiles),cityId,currentStep,isValid,isOcrProcessing,accountId]);

@override
String toString() {
  return 'RegisterFormState(name: $name, email: $email, phoneNumber: $phoneNumber, password: $password, confirmPassword: $confirmPassword, birthDate: $birthDate, gender: $gender, accountType: $accountType, files: $files, address: $address, nationalId: $nationalId, latitude: $latitude, longitude: $longitude, isAddWalletFlow: $isAddWalletFlow, isForgotPassword: $isForgotPassword, lang: $lang, code: $code, isPhone: $isPhone, nationalityCode: $nationalityCode, country: $country, countries: $countries, requiredFiles: $requiredFiles, cityId: $cityId, currentStep: $currentStep, isValid: $isValid, isOcrProcessing: $isOcrProcessing, accountId: $accountId)';
}


}

/// @nodoc
abstract mixin class _$RegisterFormStateCopyWith<$Res> implements $RegisterFormStateCopyWith<$Res> {
  factory _$RegisterFormStateCopyWith(_RegisterFormState value, $Res Function(_RegisterFormState) _then) = __$RegisterFormStateCopyWithImpl;
@override @useResult
$Res call({
 FullName name, Email email, PhoneNumber phoneNumber, Password password, Password confirmPassword, String birthDate, GenderType gender, AccountTypeItemEntity? accountType, Map<int, File> files, String address, String nationalId, double? latitude, double? longitude, bool isAddWalletFlow, bool isForgotPassword, String lang, String code, bool isPhone, String nationalityCode, String country, List<CountryItemEntity> countries, List<RequiredFileEntity> requiredFiles, int cityId, int currentStep, bool isValid, bool isOcrProcessing, String accountId
});


@override $AccountTypeItemEntityCopyWith<$Res>? get accountType;

}
/// @nodoc
class __$RegisterFormStateCopyWithImpl<$Res>
    implements _$RegisterFormStateCopyWith<$Res> {
  __$RegisterFormStateCopyWithImpl(this._self, this._then);

  final _RegisterFormState _self;
  final $Res Function(_RegisterFormState) _then;

/// Create a copy of RegisterFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? phoneNumber = null,Object? password = null,Object? confirmPassword = null,Object? birthDate = null,Object? gender = null,Object? accountType = freezed,Object? files = null,Object? address = null,Object? nationalId = null,Object? latitude = freezed,Object? longitude = freezed,Object? isAddWalletFlow = null,Object? isForgotPassword = null,Object? lang = null,Object? code = null,Object? isPhone = null,Object? nationalityCode = null,Object? country = null,Object? countries = null,Object? requiredFiles = null,Object? cityId = null,Object? currentStep = null,Object? isValid = null,Object? isOcrProcessing = null,Object? accountId = null,}) {
  return _then(_RegisterFormState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as FullName,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Email,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as PhoneNumber,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,confirmPassword: null == confirmPassword ? _self.confirmPassword : confirmPassword // ignore: cast_nullable_to_non_nullable
as Password,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as GenderType,accountType: freezed == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as AccountTypeItemEntity?,files: null == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as Map<int, File>,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,nationalId: null == nationalId ? _self.nationalId : nationalId // ignore: cast_nullable_to_non_nullable
as String,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,isAddWalletFlow: null == isAddWalletFlow ? _self.isAddWalletFlow : isAddWalletFlow // ignore: cast_nullable_to_non_nullable
as bool,isForgotPassword: null == isForgotPassword ? _self.isForgotPassword : isForgotPassword // ignore: cast_nullable_to_non_nullable
as bool,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,isPhone: null == isPhone ? _self.isPhone : isPhone // ignore: cast_nullable_to_non_nullable
as bool,nationalityCode: null == nationalityCode ? _self.nationalityCode : nationalityCode // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,countries: null == countries ? _self._countries : countries // ignore: cast_nullable_to_non_nullable
as List<CountryItemEntity>,requiredFiles: null == requiredFiles ? _self._requiredFiles : requiredFiles // ignore: cast_nullable_to_non_nullable
as List<RequiredFileEntity>,cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,currentStep: null == currentStep ? _self.currentStep : currentStep // ignore: cast_nullable_to_non_nullable
as int,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,isOcrProcessing: null == isOcrProcessing ? _self.isOcrProcessing : isOcrProcessing // ignore: cast_nullable_to_non_nullable
as bool,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of RegisterFormState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountTypeItemEntityCopyWith<$Res>? get accountType {
    if (_self.accountType == null) {
    return null;
  }

  return $AccountTypeItemEntityCopyWith<$Res>(_self.accountType!, (value) {
    return _then(_self.copyWith(accountType: value));
  });
}
}

// dart format on
