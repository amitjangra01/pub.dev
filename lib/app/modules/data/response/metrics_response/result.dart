import 'package:json_annotation/json_annotation.dart';

import 'repository.dart';

part 'result.g.dart';

@JsonSerializable()
class Result {
  String? repositoryUrl;
  String? issueTrackerUrl;
  Repository? repository;

  Result({this.repositoryUrl, this.issueTrackerUrl, this.repository});

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
