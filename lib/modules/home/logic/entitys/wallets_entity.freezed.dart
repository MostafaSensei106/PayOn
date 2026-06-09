// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallets_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalletsEntity implements DiagnosticableTreeMixin {

 List<WalletItemEntity> get wallets;
/// Create a copy of WalletsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletsEntityCopyWith<WalletsEntity> get copyWith => _$WalletsEntityCopyWithImpl<WalletsEntity>(this as WalletsEntity, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WalletsEntity'))
    ..add(DiagnosticsProperty('wallets', wallets));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletsEntity&&const DeepCollectionEquality().equals(other.wallets, wallets));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(wallets));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WalletsEntity(wallets: $wallets)';
}


}

/// @nodoc
abstract mixin class $WalletsEntityCopyWith<$Res>  {
  factory $WalletsEntityCopyWith(WalletsEntity value, $Res Function(WalletsEntity) _then) = _$WalletsEntityCopyWithImpl;
@useResult
$Res call({
 List<WalletItemEntity> wallets
});




}
/// @nodoc
class _$WalletsEntityCopyWithImpl<$Res>
    implements $WalletsEntityCopyWith<$Res> {
  _$WalletsEntityCopyWithImpl(this._self, this._then);

  final WalletsEntity _self;
  final $Res Function(WalletsEntity) _then;

/// Create a copy of WalletsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wallets = null,}) {
  return _then(_self.copyWith(
wallets: null == wallets ? _self.wallets : wallets // ignore: cast_nullable_to_non_nullable
as List<WalletItemEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletsEntity].
extension WalletsEntityPatterns on WalletsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletEntity value)  $default,){
final _that = this;
switch (_that) {
case _WalletEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WalletEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<WalletItemEntity> wallets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletEntity() when $default != null:
return $default(_that.wallets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<WalletItemEntity> wallets)  $default,) {final _that = this;
switch (_that) {
case _WalletEntity():
return $default(_that.wallets);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<WalletItemEntity> wallets)?  $default,) {final _that = this;
switch (_that) {
case _WalletEntity() when $default != null:
return $default(_that.wallets);case _:
  return null;

}
}

}

/// @nodoc


class _WalletEntity with DiagnosticableTreeMixin implements WalletsEntity {
  const _WalletEntity({required final  List<WalletItemEntity> wallets}): _wallets = wallets;
  

 final  List<WalletItemEntity> _wallets;
@override List<WalletItemEntity> get wallets {
  if (_wallets is EqualUnmodifiableListView) return _wallets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_wallets);
}


/// Create a copy of WalletsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletEntityCopyWith<_WalletEntity> get copyWith => __$WalletEntityCopyWithImpl<_WalletEntity>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WalletsEntity'))
    ..add(DiagnosticsProperty('wallets', wallets));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletEntity&&const DeepCollectionEquality().equals(other._wallets, _wallets));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_wallets));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WalletsEntity(wallets: $wallets)';
}


}

/// @nodoc
abstract mixin class _$WalletEntityCopyWith<$Res> implements $WalletsEntityCopyWith<$Res> {
  factory _$WalletEntityCopyWith(_WalletEntity value, $Res Function(_WalletEntity) _then) = __$WalletEntityCopyWithImpl;
@override @useResult
$Res call({
 List<WalletItemEntity> wallets
});




}
/// @nodoc
class __$WalletEntityCopyWithImpl<$Res>
    implements _$WalletEntityCopyWith<$Res> {
  __$WalletEntityCopyWithImpl(this._self, this._then);

  final _WalletEntity _self;
  final $Res Function(_WalletEntity) _then;

/// Create a copy of WalletsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wallets = null,}) {
  return _then(_WalletEntity(
wallets: null == wallets ? _self._wallets : wallets // ignore: cast_nullable_to_non_nullable
as List<WalletItemEntity>,
  ));
}


}

/// @nodoc
mixin _$WalletItemEntity implements DiagnosticableTreeMixin {

 String get walletId; String get ipa; String get currency; String get currencyCode; String get country; String get balance; bool get isActive; bool get isDefault; bool get filesVerified;
/// Create a copy of WalletItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletItemEntityCopyWith<WalletItemEntity> get copyWith => _$WalletItemEntityCopyWithImpl<WalletItemEntity>(this as WalletItemEntity, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WalletItemEntity'))
    ..add(DiagnosticsProperty('walletId', walletId))..add(DiagnosticsProperty('ipa', ipa))..add(DiagnosticsProperty('currency', currency))..add(DiagnosticsProperty('currencyCode', currencyCode))..add(DiagnosticsProperty('country', country))..add(DiagnosticsProperty('balance', balance))..add(DiagnosticsProperty('isActive', isActive))..add(DiagnosticsProperty('isDefault', isDefault))..add(DiagnosticsProperty('filesVerified', filesVerified));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletItemEntity&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.ipa, ipa) || other.ipa == ipa)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.filesVerified, filesVerified) || other.filesVerified == filesVerified));
}


@override
int get hashCode => Object.hash(runtimeType,walletId,ipa,currency,currencyCode,country,balance,isActive,isDefault,filesVerified);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WalletItemEntity(walletId: $walletId, ipa: $ipa, currency: $currency, currencyCode: $currencyCode, country: $country, balance: $balance, isActive: $isActive, isDefault: $isDefault, filesVerified: $filesVerified)';
}


}

/// @nodoc
abstract mixin class $WalletItemEntityCopyWith<$Res>  {
  factory $WalletItemEntityCopyWith(WalletItemEntity value, $Res Function(WalletItemEntity) _then) = _$WalletItemEntityCopyWithImpl;
@useResult
$Res call({
 String walletId, String ipa, String currency, String currencyCode, String country, String balance, bool isActive, bool isDefault, bool filesVerified
});




}
/// @nodoc
class _$WalletItemEntityCopyWithImpl<$Res>
    implements $WalletItemEntityCopyWith<$Res> {
  _$WalletItemEntityCopyWithImpl(this._self, this._then);

  final WalletItemEntity _self;
  final $Res Function(WalletItemEntity) _then;

/// Create a copy of WalletItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? walletId = null,Object? ipa = null,Object? currency = null,Object? currencyCode = null,Object? country = null,Object? balance = null,Object? isActive = null,Object? isDefault = null,Object? filesVerified = null,}) {
  return _then(_self.copyWith(
walletId: null == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as String,ipa: null == ipa ? _self.ipa : ipa // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,filesVerified: null == filesVerified ? _self.filesVerified : filesVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletItemEntity].
extension WalletItemEntityPatterns on WalletItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletItemEntity value)?  $default,{TResult Function( _Placeholder value)?  placeholder,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletItemEntity() when $default != null:
return $default(_that);case _Placeholder() when placeholder != null:
return placeholder(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletItemEntity value)  $default,{required TResult Function( _Placeholder value)  placeholder,}){
final _that = this;
switch (_that) {
case _WalletItemEntity():
return $default(_that);case _Placeholder():
return placeholder(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletItemEntity value)?  $default,{TResult? Function( _Placeholder value)?  placeholder,}){
final _that = this;
switch (_that) {
case _WalletItemEntity() when $default != null:
return $default(_that);case _Placeholder() when placeholder != null:
return placeholder(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String walletId,  String ipa,  String currency,  String currencyCode,  String country,  String balance,  bool isActive,  bool isDefault,  bool filesVerified)?  $default,{TResult Function( String walletId,  String ipa,  String currency,  String currencyCode,  String country,  String balance,  bool isActive,  bool isDefault,  bool filesVerified)?  placeholder,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletItemEntity() when $default != null:
return $default(_that.walletId,_that.ipa,_that.currency,_that.currencyCode,_that.country,_that.balance,_that.isActive,_that.isDefault,_that.filesVerified);case _Placeholder() when placeholder != null:
return placeholder(_that.walletId,_that.ipa,_that.currency,_that.currencyCode,_that.country,_that.balance,_that.isActive,_that.isDefault,_that.filesVerified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String walletId,  String ipa,  String currency,  String currencyCode,  String country,  String balance,  bool isActive,  bool isDefault,  bool filesVerified)  $default,{required TResult Function( String walletId,  String ipa,  String currency,  String currencyCode,  String country,  String balance,  bool isActive,  bool isDefault,  bool filesVerified)  placeholder,}) {final _that = this;
switch (_that) {
case _WalletItemEntity():
return $default(_that.walletId,_that.ipa,_that.currency,_that.currencyCode,_that.country,_that.balance,_that.isActive,_that.isDefault,_that.filesVerified);case _Placeholder():
return placeholder(_that.walletId,_that.ipa,_that.currency,_that.currencyCode,_that.country,_that.balance,_that.isActive,_that.isDefault,_that.filesVerified);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String walletId,  String ipa,  String currency,  String currencyCode,  String country,  String balance,  bool isActive,  bool isDefault,  bool filesVerified)?  $default,{TResult? Function( String walletId,  String ipa,  String currency,  String currencyCode,  String country,  String balance,  bool isActive,  bool isDefault,  bool filesVerified)?  placeholder,}) {final _that = this;
switch (_that) {
case _WalletItemEntity() when $default != null:
return $default(_that.walletId,_that.ipa,_that.currency,_that.currencyCode,_that.country,_that.balance,_that.isActive,_that.isDefault,_that.filesVerified);case _Placeholder() when placeholder != null:
return placeholder(_that.walletId,_that.ipa,_that.currency,_that.currencyCode,_that.country,_that.balance,_that.isActive,_that.isDefault,_that.filesVerified);case _:
  return null;

}
}

}

/// @nodoc


class _WalletItemEntity with DiagnosticableTreeMixin implements WalletItemEntity {
  const _WalletItemEntity({required this.walletId, required this.ipa, required this.currency, required this.currencyCode, required this.country, required this.balance, required this.isActive, required this.isDefault, required this.filesVerified});
  

@override final  String walletId;
@override final  String ipa;
@override final  String currency;
@override final  String currencyCode;
@override final  String country;
@override final  String balance;
@override final  bool isActive;
@override final  bool isDefault;
@override final  bool filesVerified;

/// Create a copy of WalletItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletItemEntityCopyWith<_WalletItemEntity> get copyWith => __$WalletItemEntityCopyWithImpl<_WalletItemEntity>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WalletItemEntity'))
    ..add(DiagnosticsProperty('walletId', walletId))..add(DiagnosticsProperty('ipa', ipa))..add(DiagnosticsProperty('currency', currency))..add(DiagnosticsProperty('currencyCode', currencyCode))..add(DiagnosticsProperty('country', country))..add(DiagnosticsProperty('balance', balance))..add(DiagnosticsProperty('isActive', isActive))..add(DiagnosticsProperty('isDefault', isDefault))..add(DiagnosticsProperty('filesVerified', filesVerified));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletItemEntity&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.ipa, ipa) || other.ipa == ipa)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.filesVerified, filesVerified) || other.filesVerified == filesVerified));
}


@override
int get hashCode => Object.hash(runtimeType,walletId,ipa,currency,currencyCode,country,balance,isActive,isDefault,filesVerified);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WalletItemEntity(walletId: $walletId, ipa: $ipa, currency: $currency, currencyCode: $currencyCode, country: $country, balance: $balance, isActive: $isActive, isDefault: $isDefault, filesVerified: $filesVerified)';
}


}

/// @nodoc
abstract mixin class _$WalletItemEntityCopyWith<$Res> implements $WalletItemEntityCopyWith<$Res> {
  factory _$WalletItemEntityCopyWith(_WalletItemEntity value, $Res Function(_WalletItemEntity) _then) = __$WalletItemEntityCopyWithImpl;
@override @useResult
$Res call({
 String walletId, String ipa, String currency, String currencyCode, String country, String balance, bool isActive, bool isDefault, bool filesVerified
});




}
/// @nodoc
class __$WalletItemEntityCopyWithImpl<$Res>
    implements _$WalletItemEntityCopyWith<$Res> {
  __$WalletItemEntityCopyWithImpl(this._self, this._then);

  final _WalletItemEntity _self;
  final $Res Function(_WalletItemEntity) _then;

/// Create a copy of WalletItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? walletId = null,Object? ipa = null,Object? currency = null,Object? currencyCode = null,Object? country = null,Object? balance = null,Object? isActive = null,Object? isDefault = null,Object? filesVerified = null,}) {
  return _then(_WalletItemEntity(
walletId: null == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as String,ipa: null == ipa ? _self.ipa : ipa // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,filesVerified: null == filesVerified ? _self.filesVerified : filesVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Placeholder with DiagnosticableTreeMixin implements WalletItemEntity {
  const _Placeholder({this.walletId = '', this.ipa = '', this.currency = '', this.currencyCode = '', this.country = '', this.balance = '0.00', this.isActive = false, this.isDefault = false, this.filesVerified = false});
  

@override@JsonKey() final  String walletId;
@override@JsonKey() final  String ipa;
@override@JsonKey() final  String currency;
@override@JsonKey() final  String currencyCode;
@override@JsonKey() final  String country;
@override@JsonKey() final  String balance;
@override@JsonKey() final  bool isActive;
@override@JsonKey() final  bool isDefault;
@override@JsonKey() final  bool filesVerified;

/// Create a copy of WalletItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceholderCopyWith<_Placeholder> get copyWith => __$PlaceholderCopyWithImpl<_Placeholder>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WalletItemEntity.placeholder'))
    ..add(DiagnosticsProperty('walletId', walletId))..add(DiagnosticsProperty('ipa', ipa))..add(DiagnosticsProperty('currency', currency))..add(DiagnosticsProperty('currencyCode', currencyCode))..add(DiagnosticsProperty('country', country))..add(DiagnosticsProperty('balance', balance))..add(DiagnosticsProperty('isActive', isActive))..add(DiagnosticsProperty('isDefault', isDefault))..add(DiagnosticsProperty('filesVerified', filesVerified));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Placeholder&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.ipa, ipa) || other.ipa == ipa)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.filesVerified, filesVerified) || other.filesVerified == filesVerified));
}


@override
int get hashCode => Object.hash(runtimeType,walletId,ipa,currency,currencyCode,country,balance,isActive,isDefault,filesVerified);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WalletItemEntity.placeholder(walletId: $walletId, ipa: $ipa, currency: $currency, currencyCode: $currencyCode, country: $country, balance: $balance, isActive: $isActive, isDefault: $isDefault, filesVerified: $filesVerified)';
}


}

/// @nodoc
abstract mixin class _$PlaceholderCopyWith<$Res> implements $WalletItemEntityCopyWith<$Res> {
  factory _$PlaceholderCopyWith(_Placeholder value, $Res Function(_Placeholder) _then) = __$PlaceholderCopyWithImpl;
@override @useResult
$Res call({
 String walletId, String ipa, String currency, String currencyCode, String country, String balance, bool isActive, bool isDefault, bool filesVerified
});




}
/// @nodoc
class __$PlaceholderCopyWithImpl<$Res>
    implements _$PlaceholderCopyWith<$Res> {
  __$PlaceholderCopyWithImpl(this._self, this._then);

  final _Placeholder _self;
  final $Res Function(_Placeholder) _then;

/// Create a copy of WalletItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? walletId = null,Object? ipa = null,Object? currency = null,Object? currencyCode = null,Object? country = null,Object? balance = null,Object? isActive = null,Object? isDefault = null,Object? filesVerified = null,}) {
  return _then(_Placeholder(
walletId: null == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as String,ipa: null == ipa ? _self.ipa : ipa // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,filesVerified: null == filesVerified ? _self.filesVerified : filesVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
