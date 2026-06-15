// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_providers_response_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetProvidersResponseBody {

 int get code; String get message; GetProvidersData get data;
/// Create a copy of GetProvidersResponseBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProvidersResponseBodyCopyWith<GetProvidersResponseBody> get copyWith => _$GetProvidersResponseBodyCopyWithImpl<GetProvidersResponseBody>(this as GetProvidersResponseBody, _$identity);

  /// Serializes this GetProvidersResponseBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProvidersResponseBody&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,data);

@override
String toString() {
  return 'GetProvidersResponseBody(code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $GetProvidersResponseBodyCopyWith<$Res>  {
  factory $GetProvidersResponseBodyCopyWith(GetProvidersResponseBody value, $Res Function(GetProvidersResponseBody) _then) = _$GetProvidersResponseBodyCopyWithImpl;
@useResult
$Res call({
 int code, String message, GetProvidersData data
});


$GetProvidersDataCopyWith<$Res> get data;

}
/// @nodoc
class _$GetProvidersResponseBodyCopyWithImpl<$Res>
    implements $GetProvidersResponseBodyCopyWith<$Res> {
  _$GetProvidersResponseBodyCopyWithImpl(this._self, this._then);

  final GetProvidersResponseBody _self;
  final $Res Function(GetProvidersResponseBody) _then;

/// Create a copy of GetProvidersResponseBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GetProvidersData,
  ));
}
/// Create a copy of GetProvidersResponseBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetProvidersDataCopyWith<$Res> get data {
  
  return $GetProvidersDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetProvidersResponseBody].
extension GetProvidersResponseBodyPatterns on GetProvidersResponseBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetProvidersResponseBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetProvidersResponseBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetProvidersResponseBody value)  $default,){
final _that = this;
switch (_that) {
case _GetProvidersResponseBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetProvidersResponseBody value)?  $default,){
final _that = this;
switch (_that) {
case _GetProvidersResponseBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int code,  String message,  GetProvidersData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetProvidersResponseBody() when $default != null:
return $default(_that.code,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int code,  String message,  GetProvidersData data)  $default,) {final _that = this;
switch (_that) {
case _GetProvidersResponseBody():
return $default(_that.code,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int code,  String message,  GetProvidersData data)?  $default,) {final _that = this;
switch (_that) {
case _GetProvidersResponseBody() when $default != null:
return $default(_that.code,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetProvidersResponseBody implements GetProvidersResponseBody {
  const _GetProvidersResponseBody({required this.code, required this.message, required this.data});
  factory _GetProvidersResponseBody.fromJson(Map<String, dynamic> json) => _$GetProvidersResponseBodyFromJson(json);

@override final  int code;
@override final  String message;
@override final  GetProvidersData data;

/// Create a copy of GetProvidersResponseBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetProvidersResponseBodyCopyWith<_GetProvidersResponseBody> get copyWith => __$GetProvidersResponseBodyCopyWithImpl<_GetProvidersResponseBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetProvidersResponseBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProvidersResponseBody&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,message,data);

@override
String toString() {
  return 'GetProvidersResponseBody(code: $code, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetProvidersResponseBodyCopyWith<$Res> implements $GetProvidersResponseBodyCopyWith<$Res> {
  factory _$GetProvidersResponseBodyCopyWith(_GetProvidersResponseBody value, $Res Function(_GetProvidersResponseBody) _then) = __$GetProvidersResponseBodyCopyWithImpl;
@override @useResult
$Res call({
 int code, String message, GetProvidersData data
});


@override $GetProvidersDataCopyWith<$Res> get data;

}
/// @nodoc
class __$GetProvidersResponseBodyCopyWithImpl<$Res>
    implements _$GetProvidersResponseBodyCopyWith<$Res> {
  __$GetProvidersResponseBodyCopyWithImpl(this._self, this._then);

  final _GetProvidersResponseBody _self;
  final $Res Function(_GetProvidersResponseBody) _then;

/// Create a copy of GetProvidersResponseBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,Object? data = null,}) {
  return _then(_GetProvidersResponseBody(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GetProvidersData,
  ));
}

/// Create a copy of GetProvidersResponseBody
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetProvidersDataCopyWith<$Res> get data {
  
  return $GetProvidersDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$GetProvidersData {

 int get totalItems; int get pageNumber; int get pageSize; List<ProviderEntity> get items; int get totalPages;
/// Create a copy of GetProvidersData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProvidersDataCopyWith<GetProvidersData> get copyWith => _$GetProvidersDataCopyWithImpl<GetProvidersData>(this as GetProvidersData, _$identity);

  /// Serializes this GetProvidersData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProvidersData&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalItems,pageNumber,pageSize,const DeepCollectionEquality().hash(items),totalPages);

@override
String toString() {
  return 'GetProvidersData(totalItems: $totalItems, pageNumber: $pageNumber, pageSize: $pageSize, items: $items, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $GetProvidersDataCopyWith<$Res>  {
  factory $GetProvidersDataCopyWith(GetProvidersData value, $Res Function(GetProvidersData) _then) = _$GetProvidersDataCopyWithImpl;
@useResult
$Res call({
 int totalItems, int pageNumber, int pageSize, List<ProviderEntity> items, int totalPages
});




}
/// @nodoc
class _$GetProvidersDataCopyWithImpl<$Res>
    implements $GetProvidersDataCopyWith<$Res> {
  _$GetProvidersDataCopyWithImpl(this._self, this._then);

  final GetProvidersData _self;
  final $Res Function(GetProvidersData) _then;

/// Create a copy of GetProvidersData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalItems = null,Object? pageNumber = null,Object? pageSize = null,Object? items = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ProviderEntity>,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetProvidersData].
extension GetProvidersDataPatterns on GetProvidersData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetProvidersData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetProvidersData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetProvidersData value)  $default,){
final _that = this;
switch (_that) {
case _GetProvidersData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetProvidersData value)?  $default,){
final _that = this;
switch (_that) {
case _GetProvidersData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalItems,  int pageNumber,  int pageSize,  List<ProviderEntity> items,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetProvidersData() when $default != null:
return $default(_that.totalItems,_that.pageNumber,_that.pageSize,_that.items,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalItems,  int pageNumber,  int pageSize,  List<ProviderEntity> items,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _GetProvidersData():
return $default(_that.totalItems,_that.pageNumber,_that.pageSize,_that.items,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalItems,  int pageNumber,  int pageSize,  List<ProviderEntity> items,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _GetProvidersData() when $default != null:
return $default(_that.totalItems,_that.pageNumber,_that.pageSize,_that.items,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetProvidersData implements GetProvidersData {
  const _GetProvidersData({required this.totalItems, required this.pageNumber, required this.pageSize, required final  List<ProviderEntity> items, required this.totalPages}): _items = items;
  factory _GetProvidersData.fromJson(Map<String, dynamic> json) => _$GetProvidersDataFromJson(json);

@override final  int totalItems;
@override final  int pageNumber;
@override final  int pageSize;
 final  List<ProviderEntity> _items;
@override List<ProviderEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int totalPages;

/// Create a copy of GetProvidersData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetProvidersDataCopyWith<_GetProvidersData> get copyWith => __$GetProvidersDataCopyWithImpl<_GetProvidersData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetProvidersDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProvidersData&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalItems,pageNumber,pageSize,const DeepCollectionEquality().hash(_items),totalPages);

@override
String toString() {
  return 'GetProvidersData(totalItems: $totalItems, pageNumber: $pageNumber, pageSize: $pageSize, items: $items, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$GetProvidersDataCopyWith<$Res> implements $GetProvidersDataCopyWith<$Res> {
  factory _$GetProvidersDataCopyWith(_GetProvidersData value, $Res Function(_GetProvidersData) _then) = __$GetProvidersDataCopyWithImpl;
@override @useResult
$Res call({
 int totalItems, int pageNumber, int pageSize, List<ProviderEntity> items, int totalPages
});




}
/// @nodoc
class __$GetProvidersDataCopyWithImpl<$Res>
    implements _$GetProvidersDataCopyWith<$Res> {
  __$GetProvidersDataCopyWithImpl(this._self, this._then);

  final _GetProvidersData _self;
  final $Res Function(_GetProvidersData) _then;

/// Create a copy of GetProvidersData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalItems = null,Object? pageNumber = null,Object? pageSize = null,Object? items = null,Object? totalPages = null,}) {
  return _then(_GetProvidersData(
totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProviderEntity>,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
