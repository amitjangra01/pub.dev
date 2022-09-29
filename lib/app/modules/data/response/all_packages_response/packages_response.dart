import 'package:json_annotation/json_annotation.dart';

import '../package_response/package.dart';

part 'packages_response.g.dart';

@JsonSerializable()
class AllPackagesResponse {
  @JsonKey(name: 'next_url')
  String? nextUrl;
  List<Package>? packages;

  AllPackagesResponse({this.nextUrl, this.packages});

  factory AllPackagesResponse.fromJson(Map<String, dynamic> json) {
    return _$AllPackagesResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AllPackagesResponseToJson(this);
}
