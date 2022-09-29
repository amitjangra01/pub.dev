import 'package:json_annotation/json_annotation.dart';

part 'section.g.dart';

@JsonSerializable()
class Section {
  String? id;
  String? title;
  int? grantedPoints;
  int? maxPoints;
  String? status;
  String? summary;

  Section({
    this.id,
    this.title,
    this.grantedPoints,
    this.maxPoints,
    this.status,
    this.summary,
  });

  factory Section.fromJson(Map<String, dynamic> json) {
    return _$SectionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SectionToJson(this);
}
