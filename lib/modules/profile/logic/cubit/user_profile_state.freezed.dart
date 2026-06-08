// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserProfileState {

 EditProfileFormState get formState;
/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileStateCopyWith<UserProfileState> get copyWith => _$UserProfileStateCopyWithImpl<UserProfileState>(this as UserProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileState&&(identical(other.formState, formState) || other.formState == formState));
}


@override
int get hashCode => Object.hash(runtimeType,formState);

@override
String toString() {
  return 'UserProfileState(formState: $formState)';
}


}

/// @nodoc
abstract mixin class $UserProfileStateCopyWith<$Res>  {
  factory $UserProfileStateCopyWith(UserProfileState value, $Res Function(UserProfileState) _then) = _$UserProfileStateCopyWithImpl;
@useResult
$Res call({
 EditProfileFormState formState
});


$EditProfileFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._self, this._then);

  final UserProfileState _self;
  final $Res Function(UserProfileState) _then;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? formState = null,}) {
  return _then(_self.copyWith(
formState: null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as EditProfileFormState,
  ));
}
/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EditProfileFormStateCopyWith<$Res> get formState {
  
  return $EditProfileFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserProfileState].
extension UserProfileStatePatterns on UserProfileState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( EditProfileFormState formState)?  initial,TResult Function( EditProfileFormState formState)?  loading,TResult Function( EditProfileFormState formState,  UserProfileEntity data)?  success,TResult Function( EditProfileFormState formState,  String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.formState);case Loading() when loading != null:
return loading(_that.formState);case Success() when success != null:
return success(_that.formState,_that.data);case Failure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( EditProfileFormState formState)  initial,required TResult Function( EditProfileFormState formState)  loading,required TResult Function( EditProfileFormState formState,  UserProfileEntity data)  success,required TResult Function( EditProfileFormState formState,  String message)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.formState);case Loading():
return loading(_that.formState);case Success():
return success(_that.formState,_that.data);case Failure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( EditProfileFormState formState)?  initial,TResult? Function( EditProfileFormState formState)?  loading,TResult? Function( EditProfileFormState formState,  UserProfileEntity data)?  success,TResult? Function( EditProfileFormState formState,  String message)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.formState);case Loading() when loading != null:
return loading(_that.formState);case Success() when success != null:
return success(_that.formState,_that.data);case Failure() when failure != null:
return failure(_that.formState,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements UserProfileState {
  const _Initial(this.formState);
  

@override final  EditProfileFormState formState;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.formState, formState) || other.formState == formState));
}


@override
int get hashCode => Object.hash(runtimeType,formState);

@override
String toString() {
  return 'UserProfileState.initial(formState: $formState)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $UserProfileStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 EditProfileFormState formState
});


@override $EditProfileFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,}) {
  return _then(_Initial(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as EditProfileFormState,
  ));
}

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EditProfileFormStateCopyWith<$Res> get formState {
  
  return $EditProfileFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}
}

/// @nodoc


class Loading implements UserProfileState {
  const Loading(this.formState);
  

@override final  EditProfileFormState formState;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingCopyWith<Loading> get copyWith => _$LoadingCopyWithImpl<Loading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading&&(identical(other.formState, formState) || other.formState == formState));
}


@override
int get hashCode => Object.hash(runtimeType,formState);

@override
String toString() {
  return 'UserProfileState.loading(formState: $formState)';
}


}

/// @nodoc
abstract mixin class $LoadingCopyWith<$Res> implements $UserProfileStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) _then) = _$LoadingCopyWithImpl;
@override @useResult
$Res call({
 EditProfileFormState formState
});


@override $EditProfileFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(this._self, this._then);

  final Loading _self;
  final $Res Function(Loading) _then;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,}) {
  return _then(Loading(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as EditProfileFormState,
  ));
}

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EditProfileFormStateCopyWith<$Res> get formState {
  
  return $EditProfileFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}
}

/// @nodoc


class Success implements UserProfileState {
  const Success(this.formState, {required this.data});
  

@override final  EditProfileFormState formState;
 final  UserProfileEntity data;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<Success> get copyWith => _$SuccessCopyWithImpl<Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success&&(identical(other.formState, formState) || other.formState == formState)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,formState,data);

@override
String toString() {
  return 'UserProfileState.success(formState: $formState, data: $data)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res> implements $UserProfileStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) = _$SuccessCopyWithImpl;
@override @useResult
$Res call({
 EditProfileFormState formState, UserProfileEntity data
});


@override $EditProfileFormStateCopyWith<$Res> get formState;$UserProfileEntityCopyWith<$Res> get data;

}
/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,Object? data = null,}) {
  return _then(Success(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as EditProfileFormState,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserProfileEntity,
  ));
}

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EditProfileFormStateCopyWith<$Res> get formState {
  
  return $EditProfileFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileEntityCopyWith<$Res> get data {
  
  return $UserProfileEntityCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class Failure implements UserProfileState {
  const Failure(this.formState, {required this.message});
  

@override final  EditProfileFormState formState;
 final  String message;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.formState, formState) || other.formState == formState)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,formState,message);

@override
String toString() {
  return 'UserProfileState.failure(formState: $formState, message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> implements $UserProfileStateCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@override @useResult
$Res call({
 EditProfileFormState formState, String message
});


@override $EditProfileFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,Object? message = null,}) {
  return _then(Failure(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as EditProfileFormState,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EditProfileFormStateCopyWith<$Res> get formState {
  
  return $EditProfileFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}
}

/// @nodoc
mixin _$EditProfileFormState {

 FullName get name; Email get email; dynamic get isValid;
/// Create a copy of EditProfileFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditProfileFormStateCopyWith<EditProfileFormState> get copyWith => _$EditProfileFormStateCopyWithImpl<EditProfileFormState>(this as EditProfileFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileFormState&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other.isValid, isValid));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,const DeepCollectionEquality().hash(isValid));

@override
String toString() {
  return 'EditProfileFormState(name: $name, email: $email, isValid: $isValid)';
}


}

/// @nodoc
abstract mixin class $EditProfileFormStateCopyWith<$Res>  {
  factory $EditProfileFormStateCopyWith(EditProfileFormState value, $Res Function(EditProfileFormState) _then) = _$EditProfileFormStateCopyWithImpl;
@useResult
$Res call({
 FullName name, Email email, dynamic isValid
});




}
/// @nodoc
class _$EditProfileFormStateCopyWithImpl<$Res>
    implements $EditProfileFormStateCopyWith<$Res> {
  _$EditProfileFormStateCopyWithImpl(this._self, this._then);

  final EditProfileFormState _self;
  final $Res Function(EditProfileFormState) _then;

/// Create a copy of EditProfileFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? email = null,Object? isValid = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as FullName,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Email,isValid: freezed == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [EditProfileFormState].
extension EditProfileFormStatePatterns on EditProfileFormState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditProfileFormState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditProfileFormState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditProfileFormState value)  $default,){
final _that = this;
switch (_that) {
case _EditProfileFormState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditProfileFormState value)?  $default,){
final _that = this;
switch (_that) {
case _EditProfileFormState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FullName name,  Email email,  dynamic isValid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditProfileFormState() when $default != null:
return $default(_that.name,_that.email,_that.isValid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FullName name,  Email email,  dynamic isValid)  $default,) {final _that = this;
switch (_that) {
case _EditProfileFormState():
return $default(_that.name,_that.email,_that.isValid);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FullName name,  Email email,  dynamic isValid)?  $default,) {final _that = this;
switch (_that) {
case _EditProfileFormState() when $default != null:
return $default(_that.name,_that.email,_that.isValid);case _:
  return null;

}
}

}

/// @nodoc


class _EditProfileFormState implements EditProfileFormState {
  const _EditProfileFormState({this.name = const FullName.pure(), this.email = const Email.pure(), this.isValid = false});
  

@override@JsonKey() final  FullName name;
@override@JsonKey() final  Email email;
@override@JsonKey() final  dynamic isValid;

/// Create a copy of EditProfileFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditProfileFormStateCopyWith<_EditProfileFormState> get copyWith => __$EditProfileFormStateCopyWithImpl<_EditProfileFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditProfileFormState&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other.isValid, isValid));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,const DeepCollectionEquality().hash(isValid));

@override
String toString() {
  return 'EditProfileFormState(name: $name, email: $email, isValid: $isValid)';
}


}

/// @nodoc
abstract mixin class _$EditProfileFormStateCopyWith<$Res> implements $EditProfileFormStateCopyWith<$Res> {
  factory _$EditProfileFormStateCopyWith(_EditProfileFormState value, $Res Function(_EditProfileFormState) _then) = __$EditProfileFormStateCopyWithImpl;
@override @useResult
$Res call({
 FullName name, Email email, dynamic isValid
});




}
/// @nodoc
class __$EditProfileFormStateCopyWithImpl<$Res>
    implements _$EditProfileFormStateCopyWith<$Res> {
  __$EditProfileFormStateCopyWithImpl(this._self, this._then);

  final _EditProfileFormState _self;
  final $Res Function(_EditProfileFormState) _then;

/// Create a copy of EditProfileFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? isValid = freezed,}) {
  return _then(_EditProfileFormState(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as FullName,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as Email,isValid: freezed == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
