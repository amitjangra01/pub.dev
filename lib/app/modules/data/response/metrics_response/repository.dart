import 'package:json_annotation/json_annotation.dart';

part 'repository.g.dart';

@JsonSerializable()
class Repository {
  String? provider;
  String? host;
  String? repository;
  String? branch;
  String? path;

  Repository({
    this.provider,
    this.host,
    this.repository,
    this.branch,
    this.path,
  });

  factory Repository.fromJson(Map<String, dynamic> json) {
    return _$RepositoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RepositoryToJson(this);
}
