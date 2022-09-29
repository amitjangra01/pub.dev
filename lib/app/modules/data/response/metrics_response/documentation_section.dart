import 'package:json_annotation/json_annotation.dart';

part 'documentation_section.g.dart';

@JsonSerializable()
class DocumentationSection {
  String? id;
  String? title;
  int? grantedPoints;
  int? maxPoints;
  String? status;
  String? summary;

  DocumentationSection({
    this.id,
    this.title,
    this.grantedPoints,
    this.maxPoints,
    this.status,
    this.summary,
  });

  factory DocumentationSection.fromJson(Map<String, dynamic> json) {
    return _$DocumentationSectionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DocumentationSectionToJson(this);
}
