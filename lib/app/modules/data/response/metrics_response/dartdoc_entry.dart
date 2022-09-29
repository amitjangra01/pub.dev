import 'package:json_annotation/json_annotation.dart';

part 'dartdoc_entry.g.dart';

@JsonSerializable()
class DartdocEntry {
  String? uuid;
  String? packageName;
  String? packageVersion;
  bool? isLatest;
  bool? isObsolete;
  bool? usesFlutter;
  String? runtimeVersion;
  String? sdkVersion;
  String? dartdocVersion;
  String? flutterVersion;
  DateTime? timestamp;
  int? runDuration;
  bool? depsResolved;
  bool? hasContent;
  int? archiveSize;
  int? totalSize;
  int? blobSize;
  int? blobIndexSize;

  DartdocEntry({
    this.uuid,
    this.packageName,
    this.packageVersion,
    this.isLatest,
    this.isObsolete,
    this.usesFlutter,
    this.runtimeVersion,
    this.sdkVersion,
    this.dartdocVersion,
    this.flutterVersion,
    this.timestamp,
    this.runDuration,
    this.depsResolved,
    this.hasContent,
    this.archiveSize,
    this.totalSize,
    this.blobSize,
    this.blobIndexSize,
  });

  factory DartdocEntry.fromJson(Map<String, dynamic> json) {
    return _$DartdocEntryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DartdocEntryToJson(this);
}
