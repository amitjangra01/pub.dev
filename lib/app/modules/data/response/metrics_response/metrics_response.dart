import 'package:json_annotation/json_annotation.dart';

import 'score.dart';
import 'scorecard.dart';

part 'metrics_response.g.dart';

@JsonSerializable()
class MetricsResponse {
  Score? score;
  Scorecard? scorecard;

  MetricsResponse({this.score, this.scorecard});

  factory MetricsResponse.fromJson(Map<String, dynamic> json) {
    return _$MetricsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MetricsResponseToJson(this);
}
