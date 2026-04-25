// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppInfoModel _$AppInfoModelFromJson(Map<String, dynamic> json) => AppInfoModel(
  appName: json['appName'] as String,
  packageName: json['packageName'] as String,
  version: json['version'] as String,
  buildNumber: json['buildNumber'] as String,
  operatingSystemName: json['operatingSystemName'] as String,
  operatingSystemVersion: json['operatingSystemVersion'] as String,
  dartChanal: json['dartChanal'] as String?,
  dartVersion: json['dartVersion'] as String,
  flutterChanal: json['flutterChanal'] as String?,
  flutterVersion: json['flutterVersion'] as String?,
  installDate: json['installDate'] == null
      ? null
      : DateTime.parse(json['installDate'] as String),
  updateTime: json['updateTime'] == null
      ? null
      : DateTime.parse(json['updateTime'] as String),
  installerStore: json['installerStore'] as String?,
  isDebug: json['isDebug'] as bool,
);

Map<String, dynamic> _$AppInfoModelToJson(AppInfoModel instance) =>
    <String, dynamic>{
      'appName': instance.appName,
      'packageName': instance.packageName,
      'version': instance.version,
      'buildNumber': instance.buildNumber,
      'operatingSystemName': instance.operatingSystemName,
      'operatingSystemVersion': instance.operatingSystemVersion,
      'dartChanal': instance.dartChanal,
      'dartVersion': instance.dartVersion,
      'flutterChanal': instance.flutterChanal,
      'flutterVersion': instance.flutterVersion,
      'installDate': instance.installDate?.toIso8601String(),
      'updateTime': instance.updateTime?.toIso8601String(),
      'installerStore': instance.installerStore,
      'isDebug': instance.isDebug,
    };
