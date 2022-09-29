import 'package:json_annotation/json_annotation.dart';

import 'flutter_versions.dart';

part 'pana_runtime_info.g.dart';

@JsonSerializable()
class PanaRuntimeInfo {
  String? panaVersion;
  String? sdkVersion;
  FlutterVersions? flutterVersions;

  PanaRuntimeInfo({
    this.panaVersion,
    this.sdkVersion,
    this.flutterVersions,
  });

  factory PanaRuntimeInfo.fromJson(Map<String, dynamic> json) {
    return _$PanaRuntimeInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PanaRuntimeInfoToJson(this);
}
