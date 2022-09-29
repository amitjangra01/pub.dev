import 'package:json_annotation/json_annotation.dart';

import 'dartdoc_entry.dart';
import 'documentation_section.dart';

part 'dartdoc_report.g.dart';

@JsonSerializable()
class DartdocReport {
  DateTime? timestamp;
  String? reportStatus;
  DartdocEntry? dartdocEntry;
  DocumentationSection? documentationSection;

  DartdocReport({
    this.timestamp,
    this.reportStatus,
    this.dartdocEntry,
    this.documentationSection,
  });

  factory DartdocReport.fromJson(Map<String, dynamic> json) {
    return _$DartdocReportFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DartdocReportToJson(this);
}
