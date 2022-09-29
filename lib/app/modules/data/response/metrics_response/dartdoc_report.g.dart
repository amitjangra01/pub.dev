// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dartdoc_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DartdocReport _$DartdocReportFromJson(Map<String, dynamic> json) =>
    DartdocReport(
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      reportStatus: json['reportStatus'] as String?,
      dartdocEntry: json['dartdocEntry'] == null
          ? null
          : DartdocEntry.fromJson(json['dartdocEntry'] as Map<String, dynamic>),
      documentationSection: json['documentationSection'] == null
          ? null
          : DocumentationSection.fromJson(
              json['documentationSection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DartdocReportToJson(DartdocReport instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp?.toIso8601String(),
      'reportStatus': instance.reportStatus,
      'dartdocEntry': instance.dartdocEntry,
      'documentationSection': instance.documentationSection,
    };
