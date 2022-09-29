import 'package:json_annotation/json_annotation.dart';

part 'dependencies.g.dart';

@JsonSerializable()
class Dependencies {
  String? ffi;

  Dependencies({this.ffi});

  factory Dependencies.fromJson(Map<String, dynamic> json) {
    return _$DependenciesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DependenciesToJson(this);
}
