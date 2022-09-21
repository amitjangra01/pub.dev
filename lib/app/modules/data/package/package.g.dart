// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Package _$PackageFromJson(Map<String, dynamic> json) => Package(
      name: json['name'] as String?,
      latest: json['latest'] == null
          ? null
          : Latest.fromJson(json['latest'] as Map<String, dynamic>),
      versions: (json['versions'] as List<dynamic>?)
          ?.map((e) => Version.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PackageToJson(Package instance) => <String, dynamic>{
      'name': instance.name,
      'latest': instance.latest,
      'versions': instance.versions,
    };
