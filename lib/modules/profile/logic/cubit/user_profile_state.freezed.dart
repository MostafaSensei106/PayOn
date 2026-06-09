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





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserProfileState()';
}


}

/// @nodoc
class $UserProfileStateCopyWith<$Res>  {
$UserProfileStateCopyWith(UserProfileState _, $Res Function(UserProfileState) __);
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UserProfileEntity data)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.data);case Failure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UserProfileEntity data)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case Loading():
return loading();case Success():
return success(_that.data);case Failure():
return failure(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UserProfileEntity data)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.data);case Failure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements UserProfileState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserProfileState.initial()';
}


}




/// @nodoc


class Loading implements UserProfileState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserProfileState.loading()';
}


}




/// @nodoc


class Success implements UserProfileState {
  const Success({required this.data});
  

 final  UserProfileEntity data;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<Success> get copyWith => _$SuccessCopyWithImpl<Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'UserProfileState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res> implements $UserProfileStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 UserProfileEntity data
});


$UserProfileEntityCopyWith<$Res> get data;

}
/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(Success(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserProfileEntity,
  ));
}

/// Create a copy of UserProfileState
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
  const Failure({required this.message});
  

 final  String message;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UserProfileState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> implements $UserProfileStateCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Failure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$EditProfileState {

 EditProfileFormState get formState;
/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditProfileStateCopyWith<EditProfileState> get copyWith => _$EditProfileStateCopyWithImpl<EditProfileState>(this as EditProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileState&&(identical(other.formState, formState) || other.formState == formState));
}


@override
int get hashCode => Object.hash(runtimeType,formState);

@override
String toString() {
  return 'EditProfileState(formState: $formState)';
}


}

/// @nodoc
abstract mixin class $EditProfileStateCopyWith<$Res>  {
  factory $EditProfileStateCopyWith(EditProfileState value, $Res Function(EditProfileState) _then) = _$EditProfileStateCopyWithImpl;
@useResult
$Res call({
 EditProfileFormState formState
});


$EditProfileFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._self, this._then);

  final EditProfileState _self;
  final $Res Function(EditProfileState) _then;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? formState = null,}) {
  return _then(_self.copyWith(
formState: null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as EditProfileFormState,
  ));
}
/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EditProfileFormStateCopyWith<$Res> get formState {
  
  return $EditProfileFormStateCopyWith<$Res>(_self.formState, (value) {
    return _then(_self.copyWith(formState: value));
  });
}
}


/// Adds pattern-matching-related methods to [EditProfileState].
extension EditProfileStatePatterns on EditProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _EditProfileInitial value)?  initial,TResult Function( _EditProfileLoading value)?  loading,TResult Function( _EditProfileSuccess value)?  success,TResult Function( _EditProfileFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditProfileInitial() when initial != null:
return initial(_that);case _EditProfileLoading() when loading != null:
return loading(_that);case _EditProfileSuccess() when success != null:
return success(_that);case _EditProfileFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _EditProfileInitial value)  initial,required TResult Function( _EditProfileLoading value)  loading,required TResult Function( _EditProfileSuccess value)  success,required TResult Function( _EditProfileFailure value)  failure,}){
final _that = this;
switch (_that) {
case _EditProfileInitial():
return initial(_that);case _EditProfileLoading():
return loading(_that);case _EditProfileSuccess():
return success(_that);case _EditProfileFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _EditProfileInitial value)?  initial,TResult? Function( _EditProfileLoading value)?  loading,TResult? Function( _EditProfileSuccess value)?  success,TResult? Function( _EditProfileFailure value)?  failure,}){
final _that = this;
switch (_that) {
case _EditProfileInitial() when initial != null:
return initial(_that);case _EditProfileLoading() when loading != null:
return loading(_that);case _EditProfileSuccess() when success != null:
return success(_that);case _EditProfileFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( EditProfileFormState formState)?  initial,TResult Function( EditProfileFormState formState)?  loading,TResult Function( EditProfileFormState formState,  EditUserPorfileResponseBody data)?  success,TResult Function( EditProfileFormState formState,  String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditProfileInitial() when initial != null:
return initial(_that.formState);case _EditProfileLoading() when loading != null:
return loading(_that.formState);case _EditProfileSuccess() when success != null:
return success(_that.formState,_that.data);case _EditProfileFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( EditProfileFormState formState)  initial,required TResult Function( EditProfileFormState formState)  loading,required TResult Function( EditProfileFormState formState,  EditUserPorfileResponseBody data)  success,required TResult Function( EditProfileFormState formState,  String message)  failure,}) {final _that = this;
switch (_that) {
case _EditProfileInitial():
return initial(_that.formState);case _EditProfileLoading():
return loading(_that.formState);case _EditProfileSuccess():
return success(_that.formState,_that.data);case _EditProfileFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( EditProfileFormState formState)?  initial,TResult? Function( EditProfileFormState formState)?  loading,TResult? Function( EditProfileFormState formState,  EditUserPorfileResponseBody data)?  success,TResult? Function( EditProfileFormState formState,  String message)?  failure,}) {final _that = this;
switch (_that) {
case _EditProfileInitial() when initial != null:
return initial(_that.formState);case _EditProfileLoading() when loading != null:
return loading(_that.formState);case _EditProfileSuccess() when success != null:
return success(_that.formState,_that.data);case _EditProfileFailure() when failure != null:
return failure(_that.formState,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _EditProfileInitial implements EditProfileState {
  const _EditProfileInitial(this.formState);
  

@override final  EditProfileFormState formState;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditProfileInitialCopyWith<_EditProfileInitial> get copyWith => __$EditProfileInitialCopyWithImpl<_EditProfileInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditProfileInitial&&(identical(other.formState, formState) || other.formState == formState));
}


@override
int get hashCode => Object.hash(runtimeType,formState);

@override
String toString() {
  return 'EditProfileState.initial(formState: $formState)';
}


}

/// @nodoc
abstract mixin class _$EditProfileInitialCopyWith<$Res> implements $EditProfileStateCopyWith<$Res> {
  factory _$EditProfileInitialCopyWith(_EditProfileInitial value, $Res Function(_EditProfileInitial) _then) = __$EditProfileInitialCopyWithImpl;
@override @useResult
$Res call({
 EditProfileFormState formState
});


@override $EditProfileFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class __$EditProfileInitialCopyWithImpl<$Res>
    implements _$EditProfileInitialCopyWith<$Res> {
  __$EditProfileInitialCopyWithImpl(this._self, this._then);

  final _EditProfileInitial _self;
  final $Res Function(_EditProfileInitial) _then;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,}) {
  return _then(_EditProfileInitial(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as EditProfileFormState,
  ));
}

/// Create a copy of EditProfileState
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


class _EditProfileLoading implements EditProfileState {
  const _EditProfileLoading(this.formState);
  

@override final  EditProfileFormState formState;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditProfileLoadingCopyWith<_EditProfileLoading> get copyWith => __$EditProfileLoadingCopyWithImpl<_EditProfileLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditProfileLoading&&(identical(other.formState, formState) || other.formState == formState));
}


@override
int get hashCode => Object.hash(runtimeType,formState);

@override
String toString() {
  return 'EditProfileState.loading(formState: $formState)';
}


}

/// @nodoc
abstract mixin class _$EditProfileLoadingCopyWith<$Res> implements $EditProfileStateCopyWith<$Res> {
  factory _$EditProfileLoadingCopyWith(_EditProfileLoading value, $Res Function(_EditProfileLoading) _then) = __$EditProfileLoadingCopyWithImpl;
@override @useResult
$Res call({
 EditProfileFormState formState
});


@override $EditProfileFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class __$EditProfileLoadingCopyWithImpl<$Res>
    implements _$EditProfileLoadingCopyWith<$Res> {
  __$EditProfileLoadingCopyWithImpl(this._self, this._then);

  final _EditProfileLoading _self;
  final $Res Function(_EditProfileLoading) _then;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,}) {
  return _then(_EditProfileLoading(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as EditProfileFormState,
  ));
}

/// Create a copy of EditProfileState
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


class _EditProfileSuccess implements EditProfileState {
  const _EditProfileSuccess(this.formState, {required this.data});
  

@override final  EditProfileFormState formState;
 final  EditUserPorfileResponseBody data;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditProfileSuccessCopyWith<_EditProfileSuccess> get copyWith => __$EditProfileSuccessCopyWithImpl<_EditProfileSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditProfileSuccess&&(identical(other.formState, formState) || other.formState == formState)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,formState,data);

@override
String toString() {
  return 'EditProfileState.success(formState: $formState, data: $data)';
}


}

/// @nodoc
abstract mixin class _$EditProfileSuccessCopyWith<$Res> implements $EditProfileStateCopyWith<$Res> {
  factory _$EditProfileSuccessCopyWith(_EditProfileSuccess value, $Res Function(_EditProfileSuccess) _then) = __$EditProfileSuccessCopyWithImpl;
@override @useResult
$Res call({
 EditProfileFormState formState, EditUserPorfileResponseBody data
});


@override $EditProfileFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class __$EditProfileSuccessCopyWithImpl<$Res>
    implements _$EditProfileSuccessCopyWith<$Res> {
  __$EditProfileSuccessCopyWithImpl(this._self, this._then);

  final _EditProfileSuccess _self;
  final $Res Function(_EditProfileSuccess) _then;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,Object? data = null,}) {
  return _then(_EditProfileSuccess(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as EditProfileFormState,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as EditUserPorfileResponseBody,
  ));
}

/// Create a copy of EditProfileState
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


class _EditProfileFailure implements EditProfileState {
  const _EditProfileFailure(this.formState, {required this.message});
  

@override final  EditProfileFormState formState;
 final  String message;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditProfileFailureCopyWith<_EditProfileFailure> get copyWith => __$EditProfileFailureCopyWithImpl<_EditProfileFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditProfileFailure&&(identical(other.formState, formState) || other.formState == formState)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,formState,message);

@override
String toString() {
  return 'EditProfileState.failure(formState: $formState, message: $message)';
}


}

/// @nodoc
abstract mixin class _$EditProfileFailureCopyWith<$Res> implements $EditProfileStateCopyWith<$Res> {
  factory _$EditProfileFailureCopyWith(_EditProfileFailure value, $Res Function(_EditProfileFailure) _then) = __$EditProfileFailureCopyWithImpl;
@override @useResult
$Res call({
 EditProfileFormState formState, String message
});


@override $EditProfileFormStateCopyWith<$Res> get formState;

}
/// @nodoc
class __$EditProfileFailureCopyWithImpl<$Res>
    implements _$EditProfileFailureCopyWith<$Res> {
  __$EditProfileFailureCopyWithImpl(this._self, this._then);

  final _EditProfileFailure _self;
  final $Res Function(_EditProfileFailure) _then;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formState = null,Object? message = null,}) {
  return _then(_EditProfileFailure(
null == formState ? _self.formState : formState // ignore: cast_nullable_to_non_nullable
as EditProfileFormState,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of EditProfileState
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
