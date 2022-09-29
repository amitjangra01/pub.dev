// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pana_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PanaReport _$PanaReportFromJson(Map<String, dynamic> json) => PanaReport(
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      panaRuntimeInfo: json['panaRuntimeInfo'] == null
          ? null
          : PanaRuntimeInfo.fromJson(
              json['panaRuntimeInfo'] as Map<String, dynamic>),
      reportStatus: json['reportStatus'] as String?,
      derivedTags: (json['derivedTags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      allDependencies: (json['allDependencies'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      licenses: (json['licenses'] as List<dynamic>?)
          ?.map((e) => License.fromJson(e as Map<String, dynamic>))
          .toList(),
      report: json['report'] == null
          ? null
          : Report.fromJson(json['report'] as Map<String, dynamic>),
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
      screenshots: (json['screenshots'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      urlProblems: (json['urlProblems'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PanaReportToJson(PanaReport instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp?.toIso8601String(),
      'panaRuntimeInfo': instance.panaRuntimeInfo,
      'reportStatus': instance.reportStatus,
      'derivedTags': instance.derivedTags,
      'allDependencies': instance.allDependencies,
      'licenses': instance.licenses,
      'report': instance.report,
      'result': instance.result,
      'screenshots': instance.screenshots,
      'urlProblems': instance.urlProblems,
    };
