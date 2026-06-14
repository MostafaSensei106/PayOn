// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_transaction_status_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetTransactionStatusRequestBody _$SetTransactionStatusRequestBodyFromJson(
  Map<String, dynamic> json,
) => SetTransactionStatusRequestBody(
  draftId: (json['draftId'] as num).toInt(),
  isApproved: json['isApproved'] as bool,
);

Map<String, dynamic> _$SetTransactionStatusRequestBodyToJson(
  SetTransactionStatusRequestBody instance,
) => <String, dynamic>{
  'draftId': instance.draftId,
  'isApproved': instance.isApproved,
};
