// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Section _$SectionFromJson(Map<String, dynamic> json) => Section(
      id: json['id'] as String?,
      title: json['title'] as String?,
      grantedPoints: json['grantedPoints'] as int?,
      maxPoints: json['maxPoints'] as int?,
      status: json['status'] as String?,
      summary: json['summary'] as String?,
    );

Map<String, dynamic> _$SectionToJson(Section instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'grantedPoints': instance.grantedPoints,
      'maxPoints': instance.maxPoints,
      'status': instance.status,
      'summary': instance.summary,
    };
