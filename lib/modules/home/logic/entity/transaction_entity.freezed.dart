// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetTransactionEntity {

 int get code; String get message; TransactionsDataEntity get data; bool get success; List<String> get errors;
/// Create a copy of GetTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTransactionEntityCopyWith<GetTransactionEntity> get copyWith => _$GetTransactionEntityCopyWithImpl<GetTransactionEntity>(this as GetTransactionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTransactionEntity&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.errors, errors));
}


@override
int get hashCode => Object.hash(runtimeType,code,message,data,success,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'GetTransactionEntity(code: $code, message: $message, data: $data, success: $success, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $GetTransactionEntityCopyWith<$Res>  {
  factory $GetTransactionEntityCopyWith(GetTransactionEntity value, $Res Function(GetTransactionEntity) _then) = _$GetTransactionEntityCopyWithImpl;
@useResult
$Res call({
 int code, String message, TransactionsDataEntity data, bool success, List<String> errors
});


$TransactionsDataEntityCopyWith<$Res> get data;

}
/// @nodoc
class _$GetTransactionEntityCopyWithImpl<$Res>
    implements $GetTransactionEntityCopyWith<$Res> {
  _$GetTransactionEntityCopyWithImpl(this._self, this._then);

  final GetTransactionEntity _self;
  final $Res Function(GetTransactionEntity) _then;

/// Create a copy of GetTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? message = null,Object? data = null,Object? success = null,Object? errors = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TransactionsDataEntity,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,errors: null == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of GetTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionsDataEntityCopyWith<$Res> get data {
  
  return $TransactionsDataEntityCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetTransactionEntity].
extension GetTransactionEntityPatterns on GetTransactionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetTransactionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetTransactionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetTransactionEntity value)  $default,){
final _that = this;
switch (_that) {
case _GetTransactionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetTransactionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _GetTransactionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int code,  String message,  TransactionsDataEntity data,  bool success,  List<String> errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetTransactionEntity() when $default != null:
return $default(_that.code,_that.message,_that.data,_that.success,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int code,  String message,  TransactionsDataEntity data,  bool success,  List<String> errors)  $default,) {final _that = this;
switch (_that) {
case _GetTransactionEntity():
return $default(_that.code,_that.message,_that.data,_that.success,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int code,  String message,  TransactionsDataEntity data,  bool success,  List<String> errors)?  $default,) {final _that = this;
switch (_that) {
case _GetTransactionEntity() when $default != null:
return $default(_that.code,_that.message,_that.data,_that.success,_that.errors);case _:
  return null;

}
}

}

/// @nodoc


class _GetTransactionEntity implements GetTransactionEntity {
  const _GetTransactionEntity({required this.code, required this.message, required this.data, required this.success, required final  List<String> errors}): _errors = errors;
  

@override final  int code;
@override final  String message;
@override final  TransactionsDataEntity data;
@override final  bool success;
 final  List<String> _errors;
@override List<String> get errors {
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errors);
}


/// Create a copy of GetTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTransactionEntityCopyWith<_GetTransactionEntity> get copyWith => __$GetTransactionEntityCopyWithImpl<_GetTransactionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTransactionEntity&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,code,message,data,success,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'GetTransactionEntity(code: $code, message: $message, data: $data, success: $success, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$GetTransactionEntityCopyWith<$Res> implements $GetTransactionEntityCopyWith<$Res> {
  factory _$GetTransactionEntityCopyWith(_GetTransactionEntity value, $Res Function(_GetTransactionEntity) _then) = __$GetTransactionEntityCopyWithImpl;
@override @useResult
$Res call({
 int code, String message, TransactionsDataEntity data, bool success, List<String> errors
});


@override $TransactionsDataEntityCopyWith<$Res> get data;

}
/// @nodoc
class __$GetTransactionEntityCopyWithImpl<$Res>
    implements _$GetTransactionEntityCopyWith<$Res> {
  __$GetTransactionEntityCopyWithImpl(this._self, this._then);

  final _GetTransactionEntity _self;
  final $Res Function(_GetTransactionEntity) _then;

/// Create a copy of GetTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,Object? data = null,Object? success = null,Object? errors = null,}) {
  return _then(_GetTransactionEntity(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TransactionsDataEntity,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of GetTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionsDataEntityCopyWith<$Res> get data {
  
  return $TransactionsDataEntityCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc
mixin _$TransactionsDataEntity {

 int get totalItems; int get pageNumber; int get pageSize; List<TransactionItemEntity> get items; int get totalPages;
/// Create a copy of TransactionsDataEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionsDataEntityCopyWith<TransactionsDataEntity> get copyWith => _$TransactionsDataEntityCopyWithImpl<TransactionsDataEntity>(this as TransactionsDataEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionsDataEntity&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}


@override
int get hashCode => Object.hash(runtimeType,totalItems,pageNumber,pageSize,const DeepCollectionEquality().hash(items),totalPages);

@override
String toString() {
  return 'TransactionsDataEntity(totalItems: $totalItems, pageNumber: $pageNumber, pageSize: $pageSize, items: $items, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $TransactionsDataEntityCopyWith<$Res>  {
  factory $TransactionsDataEntityCopyWith(TransactionsDataEntity value, $Res Function(TransactionsDataEntity) _then) = _$TransactionsDataEntityCopyWithImpl;
@useResult
$Res call({
 int totalItems, int pageNumber, int pageSize, List<TransactionItemEntity> items, int totalPages
});




}
/// @nodoc
class _$TransactionsDataEntityCopyWithImpl<$Res>
    implements $TransactionsDataEntityCopyWith<$Res> {
  _$TransactionsDataEntityCopyWithImpl(this._self, this._then);

  final TransactionsDataEntity _self;
  final $Res Function(TransactionsDataEntity) _then;

/// Create a copy of TransactionsDataEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalItems = null,Object? pageNumber = null,Object? pageSize = null,Object? items = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<TransactionItemEntity>,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionsDataEntity].
extension TransactionsDataEntityPatterns on TransactionsDataEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionsDataEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionsDataEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionsDataEntity value)  $default,){
final _that = this;
switch (_that) {
case _TransactionsDataEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionsDataEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionsDataEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalItems,  int pageNumber,  int pageSize,  List<TransactionItemEntity> items,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionsDataEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalItems,  int pageNumber,  int pageSize,  List<TransactionItemEntity> items,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _TransactionsDataEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalItems,  int pageNumber,  int pageSize,  List<TransactionItemEntity> items,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _TransactionsDataEntity() when $default != null:
return $default(_that.totalItems,_that.pageNumber,_that.pageSize,_that.items,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionsDataEntity implements TransactionsDataEntity {
  const _TransactionsDataEntity({required this.totalItems, required this.pageNumber, required this.pageSize, required final  List<TransactionItemEntity> items, required this.totalPages}): _items = items;
  

@override final  int totalItems;
@override final  int pageNumber;
@override final  int pageSize;
 final  List<TransactionItemEntity> _items;
@override List<TransactionItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int totalPages;

/// Create a copy of TransactionsDataEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionsDataEntityCopyWith<_TransactionsDataEntity> get copyWith => __$TransactionsDataEntityCopyWithImpl<_TransactionsDataEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionsDataEntity&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}


@override
int get hashCode => Object.hash(runtimeType,totalItems,pageNumber,pageSize,const DeepCollectionEquality().hash(_items),totalPages);

@override
String toString() {
  return 'TransactionsDataEntity(totalItems: $totalItems, pageNumber: $pageNumber, pageSize: $pageSize, items: $items, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$TransactionsDataEntityCopyWith<$Res> implements $TransactionsDataEntityCopyWith<$Res> {
  factory _$TransactionsDataEntityCopyWith(_TransactionsDataEntity value, $Res Function(_TransactionsDataEntity) _then) = __$TransactionsDataEntityCopyWithImpl;
@override @useResult
$Res call({
 int totalItems, int pageNumber, int pageSize, List<TransactionItemEntity> items, int totalPages
});




}
/// @nodoc
class __$TransactionsDataEntityCopyWithImpl<$Res>
    implements _$TransactionsDataEntityCopyWith<$Res> {
  __$TransactionsDataEntityCopyWithImpl(this._self, this._then);

  final _TransactionsDataEntity _self;
  final $Res Function(_TransactionsDataEntity) _then;

/// Create a copy of TransactionsDataEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalItems = null,Object? pageNumber = null,Object? pageSize = null,Object? items = null,Object? totalPages = null,}) {
  return _then(_TransactionsDataEntity(
totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<TransactionItemEntity>,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$TransactionItemEntity {

 int get id; DateTime get createdAt; String get senderId; String get sender; String get senderPhone; String get senderIpa; String get senderImage; String get receiverId; String get receiver; String get receiverPhone; String get receiverIpa; String get receiverImage; String get transactionType; String get currencyCode; double get amount; double get totalAmount; double get adjustedAmount; double get fees; String get paymentMethod; String get status; String get description; String get referenceNumber; bool get isSender; bool get isInternalTransfer; bool get isMultiCurrency; bool get isTransactionByPhone; String get senderBalance;
/// Create a copy of TransactionItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionItemEntityCopyWith<TransactionItemEntity> get copyWith => _$TransactionItemEntityCopyWithImpl<TransactionItemEntity>(this as TransactionItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.senderPhone, senderPhone) || other.senderPhone == senderPhone)&&(identical(other.senderIpa, senderIpa) || other.senderIpa == senderIpa)&&(identical(other.senderImage, senderImage) || other.senderImage == senderImage)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.receiverPhone, receiverPhone) || other.receiverPhone == receiverPhone)&&(identical(other.receiverIpa, receiverIpa) || other.receiverIpa == receiverIpa)&&(identical(other.receiverImage, receiverImage) || other.receiverImage == receiverImage)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.adjustedAmount, adjustedAmount) || other.adjustedAmount == adjustedAmount)&&(identical(other.fees, fees) || other.fees == fees)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.referenceNumber, referenceNumber) || other.referenceNumber == referenceNumber)&&(identical(other.isSender, isSender) || other.isSender == isSender)&&(identical(other.isInternalTransfer, isInternalTransfer) || other.isInternalTransfer == isInternalTransfer)&&(identical(other.isMultiCurrency, isMultiCurrency) || other.isMultiCurrency == isMultiCurrency)&&(identical(other.isTransactionByPhone, isTransactionByPhone) || other.isTransactionByPhone == isTransactionByPhone)&&(identical(other.senderBalance, senderBalance) || other.senderBalance == senderBalance));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,senderId,sender,senderPhone,senderIpa,senderImage,receiverId,receiver,receiverPhone,receiverIpa,receiverImage,transactionType,currencyCode,amount,totalAmount,adjustedAmount,fees,paymentMethod,status,description,referenceNumber,isSender,isInternalTransfer,isMultiCurrency,isTransactionByPhone,senderBalance]);

@override
String toString() {
  return 'TransactionItemEntity(id: $id, createdAt: $createdAt, senderId: $senderId, sender: $sender, senderPhone: $senderPhone, senderIpa: $senderIpa, senderImage: $senderImage, receiverId: $receiverId, receiver: $receiver, receiverPhone: $receiverPhone, receiverIpa: $receiverIpa, receiverImage: $receiverImage, transactionType: $transactionType, currencyCode: $currencyCode, amount: $amount, totalAmount: $totalAmount, adjustedAmount: $adjustedAmount, fees: $fees, paymentMethod: $paymentMethod, status: $status, description: $description, referenceNumber: $referenceNumber, isSender: $isSender, isInternalTransfer: $isInternalTransfer, isMultiCurrency: $isMultiCurrency, isTransactionByPhone: $isTransactionByPhone, senderBalance: $senderBalance)';
}


}

/// @nodoc
abstract mixin class $TransactionItemEntityCopyWith<$Res>  {
  factory $TransactionItemEntityCopyWith(TransactionItemEntity value, $Res Function(TransactionItemEntity) _then) = _$TransactionItemEntityCopyWithImpl;
@useResult
$Res call({
 int id, DateTime createdAt, String senderId, String sender, String senderPhone, String senderIpa, String senderImage, String receiverId, String receiver, String receiverPhone, String receiverIpa, String receiverImage, String transactionType, String currencyCode, double amount, double totalAmount, double adjustedAmount, double fees, String paymentMethod, String status, String description, String referenceNumber, bool isSender, bool isInternalTransfer, bool isMultiCurrency, bool isTransactionByPhone, String senderBalance
});




}
/// @nodoc
class _$TransactionItemEntityCopyWithImpl<$Res>
    implements $TransactionItemEntityCopyWith<$Res> {
  _$TransactionItemEntityCopyWithImpl(this._self, this._then);

  final TransactionItemEntity _self;
  final $Res Function(TransactionItemEntity) _then;

/// Create a copy of TransactionItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? senderId = null,Object? sender = null,Object? senderPhone = null,Object? senderIpa = null,Object? senderImage = null,Object? receiverId = null,Object? receiver = null,Object? receiverPhone = null,Object? receiverIpa = null,Object? receiverImage = null,Object? transactionType = null,Object? currencyCode = null,Object? amount = null,Object? totalAmount = null,Object? adjustedAmount = null,Object? fees = null,Object? paymentMethod = null,Object? status = null,Object? description = null,Object? referenceNumber = null,Object? isSender = null,Object? isInternalTransfer = null,Object? isMultiCurrency = null,Object? isTransactionByPhone = null,Object? senderBalance = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,sender: null == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as String,senderPhone: null == senderPhone ? _self.senderPhone : senderPhone // ignore: cast_nullable_to_non_nullable
as String,senderIpa: null == senderIpa ? _self.senderIpa : senderIpa // ignore: cast_nullable_to_non_nullable
as String,senderImage: null == senderImage ? _self.senderImage : senderImage // ignore: cast_nullable_to_non_nullable
as String,receiverId: null == receiverId ? _self.receiverId : receiverId // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,receiverPhone: null == receiverPhone ? _self.receiverPhone : receiverPhone // ignore: cast_nullable_to_non_nullable
as String,receiverIpa: null == receiverIpa ? _self.receiverIpa : receiverIpa // ignore: cast_nullable_to_non_nullable
as String,receiverImage: null == receiverImage ? _self.receiverImage : receiverImage // ignore: cast_nullable_to_non_nullable
as String,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,adjustedAmount: null == adjustedAmount ? _self.adjustedAmount : adjustedAmount // ignore: cast_nullable_to_non_nullable
as double,fees: null == fees ? _self.fees : fees // ignore: cast_nullable_to_non_nullable
as double,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,referenceNumber: null == referenceNumber ? _self.referenceNumber : referenceNumber // ignore: cast_nullable_to_non_nullable
as String,isSender: null == isSender ? _self.isSender : isSender // ignore: cast_nullable_to_non_nullable
as bool,isInternalTransfer: null == isInternalTransfer ? _self.isInternalTransfer : isInternalTransfer // ignore: cast_nullable_to_non_nullable
as bool,isMultiCurrency: null == isMultiCurrency ? _self.isMultiCurrency : isMultiCurrency // ignore: cast_nullable_to_non_nullable
as bool,isTransactionByPhone: null == isTransactionByPhone ? _self.isTransactionByPhone : isTransactionByPhone // ignore: cast_nullable_to_non_nullable
as bool,senderBalance: null == senderBalance ? _self.senderBalance : senderBalance // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionItemEntity].
extension TransactionItemEntityPatterns on TransactionItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _TransactionItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  DateTime createdAt,  String senderId,  String sender,  String senderPhone,  String senderIpa,  String senderImage,  String receiverId,  String receiver,  String receiverPhone,  String receiverIpa,  String receiverImage,  String transactionType,  String currencyCode,  double amount,  double totalAmount,  double adjustedAmount,  double fees,  String paymentMethod,  String status,  String description,  String referenceNumber,  bool isSender,  bool isInternalTransfer,  bool isMultiCurrency,  bool isTransactionByPhone,  String senderBalance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionItemEntity() when $default != null:
return $default(_that.id,_that.createdAt,_that.senderId,_that.sender,_that.senderPhone,_that.senderIpa,_that.senderImage,_that.receiverId,_that.receiver,_that.receiverPhone,_that.receiverIpa,_that.receiverImage,_that.transactionType,_that.currencyCode,_that.amount,_that.totalAmount,_that.adjustedAmount,_that.fees,_that.paymentMethod,_that.status,_that.description,_that.referenceNumber,_that.isSender,_that.isInternalTransfer,_that.isMultiCurrency,_that.isTransactionByPhone,_that.senderBalance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  DateTime createdAt,  String senderId,  String sender,  String senderPhone,  String senderIpa,  String senderImage,  String receiverId,  String receiver,  String receiverPhone,  String receiverIpa,  String receiverImage,  String transactionType,  String currencyCode,  double amount,  double totalAmount,  double adjustedAmount,  double fees,  String paymentMethod,  String status,  String description,  String referenceNumber,  bool isSender,  bool isInternalTransfer,  bool isMultiCurrency,  bool isTransactionByPhone,  String senderBalance)  $default,) {final _that = this;
switch (_that) {
case _TransactionItemEntity():
return $default(_that.id,_that.createdAt,_that.senderId,_that.sender,_that.senderPhone,_that.senderIpa,_that.senderImage,_that.receiverId,_that.receiver,_that.receiverPhone,_that.receiverIpa,_that.receiverImage,_that.transactionType,_that.currencyCode,_that.amount,_that.totalAmount,_that.adjustedAmount,_that.fees,_that.paymentMethod,_that.status,_that.description,_that.referenceNumber,_that.isSender,_that.isInternalTransfer,_that.isMultiCurrency,_that.isTransactionByPhone,_that.senderBalance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  DateTime createdAt,  String senderId,  String sender,  String senderPhone,  String senderIpa,  String senderImage,  String receiverId,  String receiver,  String receiverPhone,  String receiverIpa,  String receiverImage,  String transactionType,  String currencyCode,  double amount,  double totalAmount,  double adjustedAmount,  double fees,  String paymentMethod,  String status,  String description,  String referenceNumber,  bool isSender,  bool isInternalTransfer,  bool isMultiCurrency,  bool isTransactionByPhone,  String senderBalance)?  $default,) {final _that = this;
switch (_that) {
case _TransactionItemEntity() when $default != null:
return $default(_that.id,_that.createdAt,_that.senderId,_that.sender,_that.senderPhone,_that.senderIpa,_that.senderImage,_that.receiverId,_that.receiver,_that.receiverPhone,_that.receiverIpa,_that.receiverImage,_that.transactionType,_that.currencyCode,_that.amount,_that.totalAmount,_that.adjustedAmount,_that.fees,_that.paymentMethod,_that.status,_that.description,_that.referenceNumber,_that.isSender,_that.isInternalTransfer,_that.isMultiCurrency,_that.isTransactionByPhone,_that.senderBalance);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionItemEntity implements TransactionItemEntity {
  const _TransactionItemEntity({required this.id, required this.createdAt, required this.senderId, required this.sender, required this.senderPhone, required this.senderIpa, required this.senderImage, required this.receiverId, required this.receiver, required this.receiverPhone, required this.receiverIpa, required this.receiverImage, required this.transactionType, required this.currencyCode, required this.amount, required this.totalAmount, required this.adjustedAmount, required this.fees, required this.paymentMethod, required this.status, required this.description, required this.referenceNumber, required this.isSender, required this.isInternalTransfer, required this.isMultiCurrency, required this.isTransactionByPhone, required this.senderBalance});
  

@override final  int id;
@override final  DateTime createdAt;
@override final  String senderId;
@override final  String sender;
@override final  String senderPhone;
@override final  String senderIpa;
@override final  String senderImage;
@override final  String receiverId;
@override final  String receiver;
@override final  String receiverPhone;
@override final  String receiverIpa;
@override final  String receiverImage;
@override final  String transactionType;
@override final  String currencyCode;
@override final  double amount;
@override final  double totalAmount;
@override final  double adjustedAmount;
@override final  double fees;
@override final  String paymentMethod;
@override final  String status;
@override final  String description;
@override final  String referenceNumber;
@override final  bool isSender;
@override final  bool isInternalTransfer;
@override final  bool isMultiCurrency;
@override final  bool isTransactionByPhone;
@override final  String senderBalance;

/// Create a copy of TransactionItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionItemEntityCopyWith<_TransactionItemEntity> get copyWith => __$TransactionItemEntityCopyWithImpl<_TransactionItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.senderPhone, senderPhone) || other.senderPhone == senderPhone)&&(identical(other.senderIpa, senderIpa) || other.senderIpa == senderIpa)&&(identical(other.senderImage, senderImage) || other.senderImage == senderImage)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.receiverPhone, receiverPhone) || other.receiverPhone == receiverPhone)&&(identical(other.receiverIpa, receiverIpa) || other.receiverIpa == receiverIpa)&&(identical(other.receiverImage, receiverImage) || other.receiverImage == receiverImage)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.adjustedAmount, adjustedAmount) || other.adjustedAmount == adjustedAmount)&&(identical(other.fees, fees) || other.fees == fees)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.referenceNumber, referenceNumber) || other.referenceNumber == referenceNumber)&&(identical(other.isSender, isSender) || other.isSender == isSender)&&(identical(other.isInternalTransfer, isInternalTransfer) || other.isInternalTransfer == isInternalTransfer)&&(identical(other.isMultiCurrency, isMultiCurrency) || other.isMultiCurrency == isMultiCurrency)&&(identical(other.isTransactionByPhone, isTransactionByPhone) || other.isTransactionByPhone == isTransactionByPhone)&&(identical(other.senderBalance, senderBalance) || other.senderBalance == senderBalance));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,senderId,sender,senderPhone,senderIpa,senderImage,receiverId,receiver,receiverPhone,receiverIpa,receiverImage,transactionType,currencyCode,amount,totalAmount,adjustedAmount,fees,paymentMethod,status,description,referenceNumber,isSender,isInternalTransfer,isMultiCurrency,isTransactionByPhone,senderBalance]);

@override
String toString() {
  return 'TransactionItemEntity(id: $id, createdAt: $createdAt, senderId: $senderId, sender: $sender, senderPhone: $senderPhone, senderIpa: $senderIpa, senderImage: $senderImage, receiverId: $receiverId, receiver: $receiver, receiverPhone: $receiverPhone, receiverIpa: $receiverIpa, receiverImage: $receiverImage, transactionType: $transactionType, currencyCode: $currencyCode, amount: $amount, totalAmount: $totalAmount, adjustedAmount: $adjustedAmount, fees: $fees, paymentMethod: $paymentMethod, status: $status, description: $description, referenceNumber: $referenceNumber, isSender: $isSender, isInternalTransfer: $isInternalTransfer, isMultiCurrency: $isMultiCurrency, isTransactionByPhone: $isTransactionByPhone, senderBalance: $senderBalance)';
}


}

/// @nodoc
abstract mixin class _$TransactionItemEntityCopyWith<$Res> implements $TransactionItemEntityCopyWith<$Res> {
  factory _$TransactionItemEntityCopyWith(_TransactionItemEntity value, $Res Function(_TransactionItemEntity) _then) = __$TransactionItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, DateTime createdAt, String senderId, String sender, String senderPhone, String senderIpa, String senderImage, String receiverId, String receiver, String receiverPhone, String receiverIpa, String receiverImage, String transactionType, String currencyCode, double amount, double totalAmount, double adjustedAmount, double fees, String paymentMethod, String status, String description, String referenceNumber, bool isSender, bool isInternalTransfer, bool isMultiCurrency, bool isTransactionByPhone, String senderBalance
});




}
/// @nodoc
class __$TransactionItemEntityCopyWithImpl<$Res>
    implements _$TransactionItemEntityCopyWith<$Res> {
  __$TransactionItemEntityCopyWithImpl(this._self, this._then);

  final _TransactionItemEntity _self;
  final $Res Function(_TransactionItemEntity) _then;

/// Create a copy of TransactionItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? senderId = null,Object? sender = null,Object? senderPhone = null,Object? senderIpa = null,Object? senderImage = null,Object? receiverId = null,Object? receiver = null,Object? receiverPhone = null,Object? receiverIpa = null,Object? receiverImage = null,Object? transactionType = null,Object? currencyCode = null,Object? amount = null,Object? totalAmount = null,Object? adjustedAmount = null,Object? fees = null,Object? paymentMethod = null,Object? status = null,Object? description = null,Object? referenceNumber = null,Object? isSender = null,Object? isInternalTransfer = null,Object? isMultiCurrency = null,Object? isTransactionByPhone = null,Object? senderBalance = null,}) {
  return _then(_TransactionItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,sender: null == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as String,senderPhone: null == senderPhone ? _self.senderPhone : senderPhone // ignore: cast_nullable_to_non_nullable
as String,senderIpa: null == senderIpa ? _self.senderIpa : senderIpa // ignore: cast_nullable_to_non_nullable
as String,senderImage: null == senderImage ? _self.senderImage : senderImage // ignore: cast_nullable_to_non_nullable
as String,receiverId: null == receiverId ? _self.receiverId : receiverId // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,receiverPhone: null == receiverPhone ? _self.receiverPhone : receiverPhone // ignore: cast_nullable_to_non_nullable
as String,receiverIpa: null == receiverIpa ? _self.receiverIpa : receiverIpa // ignore: cast_nullable_to_non_nullable
as String,receiverImage: null == receiverImage ? _self.receiverImage : receiverImage // ignore: cast_nullable_to_non_nullable
as String,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,adjustedAmount: null == adjustedAmount ? _self.adjustedAmount : adjustedAmount // ignore: cast_nullable_to_non_nullable
as double,fees: null == fees ? _self.fees : fees // ignore: cast_nullable_to_non_nullable
as double,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,referenceNumber: null == referenceNumber ? _self.referenceNumber : referenceNumber // ignore: cast_nullable_to_non_nullable
as String,isSender: null == isSender ? _self.isSender : isSender // ignore: cast_nullable_to_non_nullable
as bool,isInternalTransfer: null == isInternalTransfer ? _self.isInternalTransfer : isInternalTransfer // ignore: cast_nullable_to_non_nullable
as bool,isMultiCurrency: null == isMultiCurrency ? _self.isMultiCurrency : isMultiCurrency // ignore: cast_nullable_to_non_nullable
as bool,isTransactionByPhone: null == isTransactionByPhone ? _self.isTransactionByPhone : isTransactionByPhone // ignore: cast_nullable_to_non_nullable
as bool,senderBalance: null == senderBalance ? _self.senderBalance : senderBalance // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
