// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetricsResponse _$MetricsResponseFromJson(Map<String, dynamic> json) =>
    MetricsResponse(
      score: json['score'] == null
          ? null
          : Score.fromJson(json['score'] as Map<String, dynamic>),
      scorecard: json['scorecard'] == null
          ? null
          : Scorecard.fromJson(json['scorecard'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MetricsResponseToJson(MetricsResponse instance) =>
    <String, dynamic>{
      'score': instance.score,
      'scorecard': instance.scorecard,
    };
