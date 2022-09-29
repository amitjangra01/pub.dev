import 'package:json_annotation/json_annotation.dart';

import 'license.dart';
import 'pana_runtime_info.dart';
import 'report.dart';
import 'result.dart';

part 'pana_report.g.dart';

@JsonSerializable()
class PanaReport {
  DateTime? timestamp;
  PanaRuntimeInfo? panaRuntimeInfo;
  String? reportStatus;
  List<String>? derivedTags;
  List<String>? allDependencies;
  List<License>? licenses;
  Report? report;
  Result? result;
  List<String>? screenshots;
  List<String>? urlProblems;

  PanaReport({
    this.timestamp,
    this.panaRuntimeInfo,
    this.reportStatus,
    this.derivedTags,
    this.allDependencies,
    this.licenses,
    this.report,
    this.result,
    this.screenshots,
    this.urlProblems,
  });

  factory PanaReport.fromJson(Map<String, dynamic> json) {
    return _$PanaReportFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PanaReportToJson(this);
}
