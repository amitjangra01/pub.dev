import 'package:json_annotation/json_annotation.dart';

import 'section.dart';

part 'report.g.dart';

@JsonSerializable()
class Report {
  List<Section>? sections;

  Report({this.sections});

  factory Report.fromJson(Map<String, dynamic> json) {
    return _$ReportFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReportToJson(this);
}
