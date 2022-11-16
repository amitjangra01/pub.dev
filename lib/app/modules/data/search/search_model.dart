import 'package:json_annotation/json_annotation.dart';

import 'package.dart';

part 'search_model.g.dart';

@JsonSerializable()
class SearchModel {
  List<Package>? packages;
  String? next;

  SearchModel({this.packages, this.next});

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return _$SearchModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchModelToJson(this);
}
