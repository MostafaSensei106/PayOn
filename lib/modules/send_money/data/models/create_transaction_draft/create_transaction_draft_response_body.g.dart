// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transaction_draft_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateTransactionDraftResponseBody _$CreateTransactionDraftResponseBodyFromJson(
  Map<String, dynamic> json,
) => CreateTransactionDraftResponseBody(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: DraftData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CreateTransactionDraftResponseBodyToJson(
  CreateTransactionDraftResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
};

DraftData _$DraftDataFromJson(Map<String, dynamic> json) => DraftData(
  fees: (json['fees'] as num).toDouble(),
  draftIds: (json['draftIds'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  referenceNumber: json['referenceNumber'] as String,
  originalCurrency: json['originalCurrency'] as String,
  targetCurrency: json['targetCurrency'] as String?,
  originalAmount: (json['originalAmount'] as num).toDouble(),
  totalAmount: (json['totalAmount'] as num).toDouble(),
  state: json['state'] as String,
  commissionPaidBy: json['commissionPaidBy'] as String,
);

Map<String, dynamic> _$DraftDataToJson(DraftData instance) => <String, dynamic>{
  'fees': instance.fees,
  'draftIds': instance.draftIds,
  'referenceNumber': instance.referenceNumber,
  'originalCurrency': instance.originalCurrency,
  'targetCurrency': instance.targetCurrency,
  'originalAmount': instance.originalAmount,
  'totalAmount': instance.totalAmount,
  'state': instance.state,
  'commissionPaidBy': instance.commissionPaidBy,
};
