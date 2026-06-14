// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_transaction_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaveTransactionResponseBody _$SaveTransactionResponseBodyFromJson(
  Map<String, dynamic> json,
) => SaveTransactionResponseBody(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: SaveTransactionData.fromJson(json['data'] as Map<String, dynamic>),
  success: json['success'] as bool,
  errors: json['errors'] as List<dynamic>?,
);

Map<String, dynamic> _$SaveTransactionResponseBodyToJson(
  SaveTransactionResponseBody instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
  'success': instance.success,
  'errors': instance.errors,
};

SaveTransactionData _$SaveTransactionDataFromJson(Map<String, dynamic> json) =>
    SaveTransactionData(
      transactionIds: (json['transactionIds'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      statusCode: (json['statusCode'] as num).toInt(),
      isMultiCurrency: json['isMultiCurrency'] as bool,
      originalAmount: (json['originalAmount'] as num).toDouble(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      errors: json['errors'],
      originalCurrency: json['originalCurrency'] as String?,
      targetCurrency: json['targetCurrency'] as String?,
      convertedAmount: (json['convertedAmount'] as num?)?.toDouble(),
      exchangeRate: (json['exchangeRate'] as num?)?.toDouble(),
      backLink: json['backLink'] as String?,
    );

Map<String, dynamic> _$SaveTransactionDataToJson(
  SaveTransactionData instance,
) => <String, dynamic>{
  'transactionIds': instance.transactionIds,
  'errors': instance.errors,
  'statusCode': instance.statusCode,
  'isMultiCurrency': instance.isMultiCurrency,
  'originalCurrency': instance.originalCurrency,
  'targetCurrency': instance.targetCurrency,
  'originalAmount': instance.originalAmount,
  'totalAmount': instance.totalAmount,
  'convertedAmount': instance.convertedAmount,
  'exchangeRate': instance.exchangeRate,
  'backLink': instance.backLink,
};
