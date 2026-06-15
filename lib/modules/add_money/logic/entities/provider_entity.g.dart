// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProviderEntity _$ProviderEntityFromJson(Map<String, dynamic> json) =>
    _ProviderEntity(
      providerid: json['providerid'] as String,
      providerName: json['providerName'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      providerPhone: json['providerPhone'] as String,
      providerAddress: json['providerAddress'] as String,
      providerImage: json['providerImage'] as String?,
    );

Map<String, dynamic> _$ProviderEntityToJson(_ProviderEntity instance) =>
    <String, dynamic>{
      'providerid': instance.providerid,
      'providerName': instance.providerName,
      'lat': instance.lat,
      'lng': instance.lng,
      'providerPhone': instance.providerPhone,
      'providerAddress': instance.providerAddress,
      'providerImage': instance.providerImage,
    };
