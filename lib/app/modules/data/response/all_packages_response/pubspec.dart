import 'package:json_annotation/json_annotation.dart';

import 'dependencies.dart';
import 'dev_dependencies.dart';
import 'environment.dart';

part 'pubspec.g.dart';

@JsonSerializable()
class Pubspec {
  String? name;
  String? description;
  String? version;
  String? homepage;
  String? repository;
  Environment? environment;
  Dependencies? dependencies;
  @JsonKey(name: 'dev_dependencies')
  DevDependencies? devDependencies;

  Pubspec({
    this.name,
    this.description,
    this.version,
    this.homepage,
    this.repository,
    this.environment,
    this.dependencies,
    this.devDependencies,
  });

  factory Pubspec.fromJson(Map<String, dynamic> json) {
    return _$PubspecFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PubspecToJson(this);
}
