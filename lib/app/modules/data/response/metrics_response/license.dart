import 'package:json_annotation/json_annotation.dart';

part 'license.g.dart';

@JsonSerializable()
class License {
  String? path;
  String? spdxIdentifier;

  License({this.path, this.spdxIdentifier});

  factory License.fromJson(Map<String, dynamic> json) {
    return _$LicenseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LicenseToJson(this);
}
