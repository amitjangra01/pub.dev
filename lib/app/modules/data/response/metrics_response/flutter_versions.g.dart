// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flutter_versions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlutterVersions _$FlutterVersionsFromJson(Map<String, dynamic> json) =>
    FlutterVersions(
      frameworkVersion: json['frameworkVersion'] as String?,
      channel: json['channel'] as String?,
      repositoryUrl: json['repositoryUrl'] as String?,
      frameworkRevision: json['frameworkRevision'] as String?,
      frameworkCommitDate: json['frameworkCommitDate'] as String?,
      engineRevision: json['engineRevision'] as String?,
      dartSdkVersion: json['dartSdkVersion'] as String?,
      devToolsVersion: json['devToolsVersion'] as String?,
      flutterRoot: json['flutterRoot'] as String?,
    );

Map<String, dynamic> _$FlutterVersionsToJson(FlutterVersions instance) =>
    <String, dynamic>{
      'frameworkVersion': instance.frameworkVersion,
      'channel': instance.channel,
      'repositoryUrl': instance.repositoryUrl,
      'frameworkRevision': instance.frameworkRevision,
      'frameworkCommitDate': instance.frameworkCommitDate,
      'engineRevision': instance.engineRevision,
      'dartSdkVersion': instance.dartSdkVersion,
      'devToolsVersion': instance.devToolsVersion,
      'flutterRoot': instance.flutterRoot,
    };
