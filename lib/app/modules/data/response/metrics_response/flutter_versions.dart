import 'package:json_annotation/json_annotation.dart';

part 'flutter_versions.g.dart';

@JsonSerializable()
class FlutterVersions {
  String? frameworkVersion;
  String? channel;
  String? repositoryUrl;
  String? frameworkRevision;
  String? frameworkCommitDate;
  String? engineRevision;
  String? dartSdkVersion;
  String? devToolsVersion;
  String? flutterRoot;

  FlutterVersions({
    this.frameworkVersion,
    this.channel,
    this.repositoryUrl,
    this.frameworkRevision,
    this.frameworkCommitDate,
    this.engineRevision,
    this.dartSdkVersion,
    this.devToolsVersion,
    this.flutterRoot,
  });

  factory FlutterVersions.fromJson(Map<String, dynamic> json) {
    return _$FlutterVersionsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FlutterVersionsToJson(this);
}
