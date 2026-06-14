import 'package:json_annotation/json_annotation.dart';

import '../../../logic/entity/create_tracnsaction_draft_entity.dart';

part 'create_transaction_draft_response_body.g.dart';

@JsonSerializable()
class CreateTransactionDraftResponseBody {
  CreateTransactionDraftResponseBody({
    required this.code,
    required this.message,
    required this.data,
  });

  factory CreateTransactionDraftResponseBody.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateTransactionDraftResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreateTransactionDraftResponseBodyToJson(this);

  final int code;
  final String message;
  final DraftData data;
}

@JsonSerializable()
class DraftData {
  DraftData({
    required this.fees,
    required this.draftIds,
    required this.referenceNumber,
    required this.originalCurrency,
    required this.targetCurrency,
    required this.originalAmount,
    required this.totalAmount,
    required this.state,
    required this.commissionPaidBy,
  });

  factory DraftData.fromJson(Map<String, dynamic> json) =>
      _$DraftDataFromJson(json);

  Map<String, dynamic> toJson() => _$DraftDataToJson(this);

  final double fees;
  final List<int> draftIds;
  final String referenceNumber;
  final String originalCurrency;

  /// dont use this is will be removed
  final String? targetCurrency;

  final double originalAmount;
  final double totalAmount;

  final String state;
  final String commissionPaidBy;
}

extension CreateTransactionDraftMapper on CreateTransactionDraftResponseBody {
  CreateTracnsactionDraftEntity toEntity() {
    return CreateTracnsactionDraftEntity(
      fess: data.fees,
      draftIds: data.draftIds,
      referenceNumber: data.referenceNumber,
      originalCurrency: data.originalCurrency,
      originalAmount: data.originalAmount,
      totalAmount: data.totalAmount,
      state: data.state,
      commissionPaidBy: data.commissionPaidBy,
    );
  }
}
