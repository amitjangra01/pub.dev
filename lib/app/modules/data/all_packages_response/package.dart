import 'package:json_annotation/json_annotation.dart';

import 'latest.dart';

part 'package.g.dart';

@JsonSerializable()
class Package {
  String? name;
  Latest? latest;

  Package({this.name, this.latest});

  factory Package.fromJson(Map<String, dynamic> json) {
    return _$PackageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PackageToJson(this);
}
