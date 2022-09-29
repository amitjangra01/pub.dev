// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Repository _$RepositoryFromJson(Map<String, dynamic> json) => Repository(
      provider: json['provider'] as String?,
      host: json['host'] as String?,
      repository: json['repository'] as String?,
      branch: json['branch'] as String?,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$RepositoryToJson(Repository instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'host': instance.host,
      'repository': instance.repository,
      'branch': instance.branch,
      'path': instance.path,
    };
