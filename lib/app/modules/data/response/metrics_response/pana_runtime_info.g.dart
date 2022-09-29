// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pana_runtime_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PanaRuntimeInfo _$PanaRuntimeInfoFromJson(Map<String, dynamic> json) =>
    PanaRuntimeInfo(
      panaVersion: json['panaVersion'] as String?,
      sdkVersion: json['sdkVersion'] as String?,
      flutterVersions: json['flutterVersions'] == null
          ? null
          : FlutterVersions.fromJson(
              json['flutterVersions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PanaRuntimeInfoToJson(PanaRuntimeInfo instance) =>
    <String, dynamic>{
      'panaVersion': instance.panaVersion,
      'sdkVersion': instance.sdkVersion,
      'flutterVersions': instance.flutterVersions,
    };
