import 'package:json_annotation/json_annotation.dart';

import 'latest.dart';
import 'version.dart';

part 'package.g.dart';

@JsonSerializable()
class Package {
  String? name;
  Latest? latest;
  List<Version>? versions;

  Package({this.name, this.latest, this.versions});

  factory Package.fromJson(Map<String, dynamic> json) {
    return _$PackageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PackageToJson(this);
}
