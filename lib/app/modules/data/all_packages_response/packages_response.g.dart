// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packages_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllPackagesResponse _$PackagesResponseFromJson(Map<String, dynamic> json) =>
    AllPackagesResponse(
      nextUrl: json['next_url'] as String?,
      packages: (json['packages'] as List<dynamic>?)
          ?.map((e) => Package.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PackagesResponseToJson(AllPackagesResponse instance) =>
    <String, dynamic>{
      'next_url': instance.nextUrl,
      'packages': instance.packages,
    };
