// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_wallets_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetWalletsResponseBody _$GetWalletsResponseBodyFromJson(
  Map<String, dynamic> json,
) => GetWalletsResponseBody(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: WalletsDataModel.fromJson(json['data'] as Map<String, dynamic>),
  success: json['success'] as bool,
  errors: (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$GetWalletsResponseBodyToJson(
  GetWalletsResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'success': instance.success,
  'errors': instance.errors,
};

WalletsDataModel _$WalletsDataModelFromJson(Map<String, dynamic> json) =>
    WalletsDataModel(
      totalItems: (json['totalItems'] as num).toInt(),
      pageNumber: (json['pageNumber'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => WalletItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$WalletsDataModelToJson(WalletsDataModel instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'items': instance.items,
      'totalPages': instance.totalPages,
    };

WalletItemModel _$WalletItemModelFromJson(Map<String, dynamic> json) =>
    WalletItemModel(
      walletId: json['walletId'] as String,
      ipa: json['ipa'] as String,
      currency: json['currency'] as String,
      currencyCode: json['currencyCode'] as String,
      currencyId: (json['currencyId'] as num).toInt(),
      country: json['country'] as String,
      balance: (json['balance'] as num).toDouble(),
      isActive: json['isActive'] as bool,
      isPending: json['isPending'] as bool,
      isDefault: json['isDefault'] as bool,
      filesVerified: json['filesVerified'] as bool,
      filesStatus: (json['filesStatus'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      accountTypeId: (json['accountTypeId'] as num).toInt(),
      accountType: json['accountType'] as String,
      categoryId: (json['categoryId'] as num).toInt(),
      category: json['category'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$WalletItemModelToJson(WalletItemModel instance) =>
    <String, dynamic>{
      'walletId': instance.walletId,
      'ipa': instance.ipa,
      'currency': instance.currency,
      'currencyCode': instance.currencyCode,
      'currencyId': instance.currencyId,
      'country': instance.country,
      'balance': instance.balance,
      'isActive': instance.isActive,
      'isPending': instance.isPending,
      'isDefault': instance.isDefault,
      'filesVerified': instance.filesVerified,
      'filesStatus': instance.filesStatus,
      'accountTypeId': instance.accountTypeId,
      'accountType': instance.accountType,
      'categoryId': instance.categoryId,
      'category': instance.category,
      'createdAt': instance.createdAt,
    };
