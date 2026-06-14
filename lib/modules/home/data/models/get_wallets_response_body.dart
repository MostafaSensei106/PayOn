import 'package:json_annotation/json_annotation.dart';

import '../../logic/entitys/wallets_entity.dart';

part 'get_wallets_response_body.g.dart';

enum FilesStatus { rejected, approved }

@JsonSerializable()
class GetWalletsResponseBody {
  const GetWalletsResponseBody({
    required this.code,
    required this.message,
    required this.data,
    required this.success,
    required this.errors,
  });
  factory GetWalletsResponseBody.fromJson(Map<String, dynamic> json) =>
      _$GetWalletsResponseBodyFromJson(json);

  final int code;
  final String message;
  final WalletsDataModel data;
  final bool success;
  final List<String> errors;
}

@JsonSerializable()
class WalletsDataModel {
  const WalletsDataModel({
    required this.totalItems,
    required this.pageNumber,
    required this.pageSize,
    required this.items,
    required this.totalPages,
  });
  factory WalletsDataModel.fromJson(Map<String, dynamic> json) =>
      _$WalletsDataModelFromJson(json);

  final int totalItems;
  final int pageNumber;
  final int pageSize;
  final List<WalletItemModel> items;
  final int totalPages;
}

@JsonSerializable()
class WalletItemModel {
  const WalletItemModel({
    required this.walletId,
    required this.ipa,
    required this.currency,
    required this.currencyCode,
    required this.currencyId,
    required this.country,
    required this.balance,
    required this.isActive,
    required this.isPending,
    required this.isDefault,
    required this.filesVerified,
    required this.filesStatus,
    required this.accountTypeId,
    required this.accountType,
    required this.categoryId,
    required this.category,
    required this.createdAt,
  });
  factory WalletItemModel.fromJson(Map<String, dynamic> json) =>
      _$WalletItemModelFromJson(json);

  final String walletId;
  final String ipa;
  final String currency;
  final String currencyCode;
  final int? currencyId;
  final String? country;
  final double balance;
  final bool isActive;
  final bool isPending;
  final bool isDefault;
  final bool filesVerified;
  final List<String> filesStatus;
  final int accountTypeId;
  final String accountType;
  final int categoryId;
  final String category;
  final String createdAt;
}

extension GetWalletsBodyMapper on GetWalletsResponseBody {
  WalletsEntity toEntity() {
    final wallets = data.items
        .map(
          (item) => WalletItemEntity(
            walletId: item.walletId,
            ipa: item.ipa,
            currency: item.currency,
            currencyCode: item.currencyCode,
            balance: item.balance.toString(),
            isActive: item.isActive,
            isPending: item.isPending,
            isDefault: item.isDefault,
            filesVerified: item.filesVerified,
            country: item.country ?? '',
          ),
        )
        .toList();

    // Sort: Default wallet first
    wallets.sort((a, b) {
      if (a.isDefault && !b.isDefault) return -1;
      if (!a.isDefault && b.isDefault) return 1;
      return 0;
    });

    return WalletsEntity(wallets: wallets);
  }
}
