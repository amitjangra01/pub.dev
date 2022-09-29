import 'package:json_annotation/json_annotation.dart';

import 'pubspec.dart';

part 'latest.g.dart';

@JsonSerializable()
class Latest {
  String? version;
  Pubspec? pubspec;
  @JsonKey(name: 'archive_url')
  String? archiveUrl;
  @JsonKey(name: 'package_url')
  String? packageUrl;
  String? url;

  Latest({
    this.version,
    this.pubspec,
    this.archiveUrl,
    this.packageUrl,
    this.url,
  });

  factory Latest.fromJson(Map<String, dynamic> json) {
    return _$LatestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LatestToJson(this);
}
