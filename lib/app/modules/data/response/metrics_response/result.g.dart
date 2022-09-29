// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      repositoryUrl: json['repositoryUrl'] as String?,
      issueTrackerUrl: json['issueTrackerUrl'] as String?,
      repository: json['repository'] == null
          ? null
          : Repository.fromJson(json['repository'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'repositoryUrl': instance.repositoryUrl,
      'issueTrackerUrl': instance.issueTrackerUrl,
      'repository': instance.repository,
    };
