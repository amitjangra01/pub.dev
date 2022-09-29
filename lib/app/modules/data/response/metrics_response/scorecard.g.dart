// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scorecard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Scorecard _$ScorecardFromJson(Map<String, dynamic> json) => Scorecard(
      packageName: json['packageName'] as String?,
      packageVersion: json['packageVersion'] as String?,
      runtimeVersion: json['runtimeVersion'] as String?,
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
      packageCreated: json['packageCreated'] == null
          ? null
          : DateTime.parse(json['packageCreated'] as String),
      packageVersionCreated: json['packageVersionCreated'] == null
          ? null
          : DateTime.parse(json['packageVersionCreated'] as String),
      flags:
          (json['flags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      dartdocReport: json['dartdocReport'] == null
          ? null
          : DartdocReport.fromJson(
              json['dartdocReport'] as Map<String, dynamic>),
      panaReport: json['panaReport'] == null
          ? null
          : PanaReport.fromJson(json['panaReport'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScorecardToJson(Scorecard instance) => <String, dynamic>{
      'packageName': instance.packageName,
      'packageVersion': instance.packageVersion,
      'runtimeVersion': instance.runtimeVersion,
      'updated': instance.updated?.toIso8601String(),
      'packageCreated': instance.packageCreated?.toIso8601String(),
      'packageVersionCreated':
          instance.packageVersionCreated?.toIso8601String(),
      'flags': instance.flags,
      'dartdocReport': instance.dartdocReport,
      'panaReport': instance.panaReport,
    };
