import 'package:json_annotation/json_annotation.dart';

part 'dev_dependencies.g.dart';

@JsonSerializable()
class DevDependencies {
  String? lints;
  @JsonKey(name: 'change_case')
  String? changeCase;

  DevDependencies({this.lints, this.changeCase});

  factory DevDependencies.fromJson(Map<String, dynamic> json) {
    return _$DevDependenciesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DevDependenciesToJson(this);
}
