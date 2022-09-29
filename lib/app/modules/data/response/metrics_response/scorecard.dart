import 'package:json_annotation/json_annotation.dart';

import 'dartdoc_report.dart';
import 'pana_report.dart';

part 'scorecard.g.dart';

@JsonSerializable()
class Scorecard {
  String? packageName;
  String? packageVersion;
  String? runtimeVersion;
  DateTime? updated;
  DateTime? packageCreated;
  DateTime? packageVersionCreated;
  List<String>? flags;
  DartdocReport? dartdocReport;
  PanaReport? panaReport;

  Scorecard({
    this.packageName,
    this.packageVersion,
    this.runtimeVersion,
    this.updated,
    this.packageCreated,
    this.packageVersionCreated,
    this.flags,
    this.dartdocReport,
    this.panaReport,
  });

  factory Scorecard.fromJson(Map<String, dynamic> json) {
    return _$ScorecardFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ScorecardToJson(this);
}
