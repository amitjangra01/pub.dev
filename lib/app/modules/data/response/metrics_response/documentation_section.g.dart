// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documentation_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentationSection _$DocumentationSectionFromJson(
        Map<String, dynamic> json) =>
    DocumentationSection(
      id: json['id'] as String?,
      title: json['title'] as String?,
      grantedPoints: json['grantedPoints'] as int?,
      maxPoints: json['maxPoints'] as int?,
      status: json['status'] as String?,
      summary: json['summary'] as String?,
    );

Map<String, dynamic> _$DocumentationSectionToJson(
        DocumentationSection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'grantedPoints': instance.grantedPoints,
      'maxPoints': instance.maxPoints,
      'status': instance.status,
      'summary': instance.summary,
    };
