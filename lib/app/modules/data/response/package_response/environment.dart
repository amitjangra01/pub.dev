import 'package:json_annotation/json_annotation.dart';

part 'environment.g.dart';

@JsonSerializable()
class Environment {
  String? sdk;

  Environment({this.sdk});

  factory Environment.fromJson(Map<String, dynamic> json) {
    return _$EnvironmentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EnvironmentToJson(this);
}
