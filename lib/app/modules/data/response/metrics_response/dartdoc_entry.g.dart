// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dartdoc_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DartdocEntry _$DartdocEntryFromJson(Map<String, dynamic> json) => DartdocEntry(
      uuid: json['uuid'] as String?,
      packageName: json['packageName'] as String?,
      packageVersion: json['packageVersion'] as String?,
      isLatest: json['isLatest'] as bool?,
      isObsolete: json['isObsolete'] as bool?,
      usesFlutter: json['usesFlutter'] as bool?,
      runtimeVersion: json['runtimeVersion'] as String?,
      sdkVersion: json['sdkVersion'] as String?,
      dartdocVersion: json['dartdocVersion'] as String?,
      flutterVersion: json['flutterVersion'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      runDuration: json['runDuration'] as int?,
      depsResolved: json['depsResolved'] as bool?,
      hasContent: json['hasContent'] as bool?,
      archiveSize: json['archiveSize'] as int?,
      totalSize: json['totalSize'] as int?,
      blobSize: json['blobSize'] as int?,
      blobIndexSize: json['blobIndexSize'] as int?,
    );

Map<String, dynamic> _$DartdocEntryToJson(DartdocEntry instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'packageName': instance.packageName,
      'packageVersion': instance.packageVersion,
      'isLatest': instance.isLatest,
      'isObsolete': instance.isObsolete,
      'usesFlutter': instance.usesFlutter,
      'runtimeVersion': instance.runtimeVersion,
      'sdkVersion': instance.sdkVersion,
      'dartdocVersion': instance.dartdocVersion,
      'flutterVersion': instance.flutterVersion,
      'timestamp': instance.timestamp?.toIso8601String(),
      'runDuration': instance.runDuration,
      'depsResolved': instance.depsResolved,
      'hasContent': instance.hasContent,
      'archiveSize': instance.archiveSize,
      'totalSize': instance.totalSize,
      'blobSize': instance.blobSize,
      'blobIndexSize': instance.blobIndexSize,
    };
