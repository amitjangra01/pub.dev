// /*
// // Example Usage
// Map<String, dynamic> map = jsonDecode(<myJSONString>);
// var myRootNode = Root.fromJson(map);
// */
// class MetricsResponse {
//     String? uuid;
//     String? packageName;
//     String? packageVersion;
//     bool? isLatest;
//     bool? isObsolete;
//     bool? usesFlutter;
//     String? runtimeVersion;
//     String? sdkVersion;
//     String? dartdocVersion;
//     String? flutterVersion;
//     DateTime? timestamp;
//     int? runDuration;
//     bool? depsResolved;
//     bool? hasContent;
//     int? archiveSize;
//     int? totalSize;
//     int? blobSize;
//     int? blobIndexSize;

//     MetricsResponse({this.uuid, this.packageName, this.packageVersion, this.isLatest, this.isObsolete, this.usesFlutter, this.runtimeVersion, this.sdkVersion, this.dartdocVersion, this.flutterVersion, this.timestamp, this.runDuration, this.depsResolved, this.hasContent, this.archiveSize, this.totalSize, this.blobSize, this.blobIndexSize});

//     MetricsResponse.fromJson(Map<String, dynamic> json) {
//         uuid = json['uuid'];
//         packageName = json['packageName'];
//         packageVersion = json['packageVersion'];
//         isLatest = json['isLatest'];
//         isObsolete = json['isObsolete'];
//         usesFlutter = json['usesFlutter'];
//         runtimeVersion = json['runtimeVersion'];
//         sdkVersion = json['sdkVersion'];
//         dartdocVersion = json['dartdocVersion'];
//         flutterVersion = json['flutterVersion'];
//         timestamp = json['timestamp'];
//         runDuration = json['runDuration'];
//         depsResolved = json['depsResolved'];
//         hasContent = json['hasContent'];
//         archiveSize = json['archiveSize'];
//         totalSize = json['totalSize'];
//         blobSize = json['blobSize'];
//         blobIndexSize = json['blobIndexSize'];
//     }

//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = Map<String, dynamic>();
//         data['uuid'] = uuid;
//         data['packageName'] = packageName;
//         data['packageVersion'] = packageVersion;
//         data['isLatest'] = isLatest;
//         data['isObsolete'] = isObsolete;
//         data['usesFlutter'] = usesFlutter;
//         data['runtimeVersion'] = runtimeVersion;
//         data['sdkVersion'] = sdkVersion;
//         data['dartdocVersion'] = dartdocVersion;
//         data['flutterVersion'] = flutterVersion;
//         data['timestamp'] = timestamp;
//         data['runDuration'] = runDuration;
//         data['depsResolved'] = depsResolved;
//         data['hasContent'] = hasContent;
//         data['archiveSize'] = archiveSize;
//         data['totalSize'] = totalSize;
//         data['blobSize'] = blobSize;
//         data['blobIndexSize'] = blobIndexSize;
//         return data;
//     }
// }

// class DartdocReport {
//     DateTime? timestamp;
//     String? reportStatus;
//     MetricsResponse? dartdocEntry;
//     DocumentationSection? documentationSection;

//     DartdocReport({this.timestamp, this.reportStatus, this.dartdocEntry, this.documentationSection});

//     DartdocReport.fromJson(Map<String, dynamic> json) {
//         timestamp = json['timestamp'];
//         reportStatus = json['reportStatus'];
//         dartdocEntry = json['dartdocEntry'] != null ? MetricsResponse?.fromJson(json['dartdocEntry']) : null;
//         documentationSection = json['documentationSection'] != null ? DocumentationSection?.fromJson(json['documentationSection']) : null;
//     }

//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = Map<String, dynamic>();
//         data['timestamp'] = timestamp;
//         data['reportStatus'] = reportStatus;
//         data['dartdocEntry'] = dartdocEntry!.toJson();
//         data['documentationSection'] = documentationSection!.toJson();
//         return data;
//     }
// }

// class DocumentationSection {
//     String? id;
//     String? title;
//     int? grantedPoints;
//     int? maxPoints;
//     String? status;
//     String? summary;

//     DocumentationSection({this.id, this.title, this.grantedPoints, this.maxPoints, this.status, this.summary});

//     DocumentationSection.fromJson(Map<String, dynamic> json) {
//         id = json['id'];
//         title = json['title'];
//         grantedPoints = json['grantedPoints'];
//         maxPoints = json['maxPoints'];
//         status = json['status'];
//         summary = json['summary'];
//     }

//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = Map<String, dynamic>();
//         data['id'] = id;
//         data['title'] = title;
//         data['grantedPoints'] = grantedPoints;
//         data['maxPoints'] = maxPoints;
//         data['status'] = status;
//         data['summary'] = summary;
//         return data;
//     }
// }

// class FlutterVersions {
//     String? frameworkVersion;
//     String? channel;
//     String? repositoryUrl;
//     String? frameworkRevision;
//     String? frameworkCommitDate;
//     String? engineRevision;
//     String? dartSdkVersion;
//     String? devToolsVersion;
//     String? flutterRoot;

//     FlutterVersions({this.frameworkVersion, this.channel, this.repositoryUrl, this.frameworkRevision, this.frameworkCommitDate, this.engineRevision, this.dartSdkVersion, this.devToolsVersion, this.flutterRoot});

//     FlutterVersions.fromJson(Map<String, dynamic> json) {
//         frameworkVersion = json['frameworkVersion'];
//         channel = json['channel'];
//         repositoryUrl = json['repositoryUrl'];
//         frameworkRevision = json['frameworkRevision'];
//         frameworkCommitDate = json['frameworkCommitDate'];
//         engineRevision = json['engineRevision'];
//         dartSdkVersion = json['dartSdkVersion'];
//         devToolsVersion = json['devToolsVersion'];
//         flutterRoot = json['flutterRoot'];
//     }

//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = Map<String, dynamic>();
//         data['frameworkVersion'] = frameworkVersion;
//         data['channel'] = channel;
//         data['repositoryUrl'] = repositoryUrl;
//         data['frameworkRevision'] = frameworkRevision;
//         data['frameworkCommitDate'] = frameworkCommitDate;
//         data['engineRevision'] = engineRevision;
//         data['dartSdkVersion'] = dartSdkVersion;
//         data['devToolsVersion'] = devToolsVersion;
//         data['flutterRoot'] = flutterRoot;
//         return data;
//     }
// }

// class License {
//     String? path;
//     String? spdxIdentifier;

//     License({this.path, this.spdxIdentifier});

//     License.fromJson(Map<String, dynamic> json) {
//         path = json['path'];
//         spdxIdentifier = json['spdxIdentifier'];
//     }

//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = Map<String, dynamic>();
//         data['path'] = path;
//         data['spdxIdentifier'] = spdxIdentifier;
//         return data;
//     }
// }

// class PanaReport {
//     DateTime? timestamp;
//     PanaRuntimeInfo? panaRuntimeInfo;
//     String? reportStatus;
//     List<String?>? derivedTags;
//     List<String?>? allDependencies;
//     List<License?>? licenses;
//     Report? report;
//     Result? result;
//     List<String?>? screenshots;
//     List<String?>? urlProblems;

//     PanaReport({this.timestamp, this.panaRuntimeInfo, this.reportStatus, this.derivedTags, this.allDependencies, this.licenses, this.report, this.result, this.screenshots, this.urlProblems});

//     PanaReport.fromJson(Map<String, dynamic> json) {
//         timestamp = json['timestamp'];
//         panaRuntimeInfo = json['panaRuntimeInfo'] != null ? PanaRuntimeInfo?.fromJson(json['panaRuntimeInfo']) : null;
//         reportStatus = json['reportStatus'];
//         if (json['derivedTags'] != null) {
//          derivedTags = <>[];
//          json['derivedTags'].forEach((v) {
//          derivedTags!.add(.fromJson(v));
//         });
//       }
//         if (json['allDependencies'] != null) {
//          allDependencies = <>[];
//          json['allDependencies'].forEach((v) {
//          allDependencies!.add(.fromJson(v));
//         });
//       }
//         if (json['licenses'] != null) {
//          licenses = <License>[];
//          json['licenses'].forEach((v) {
//          licenses!.add(License.fromJson(v));
//         });
//       }
//         report = json['report'] != null ? Report?.fromJson(json['report']) : null;
//         result = json['result'] != null ? Result?.fromJson(json['result']) : null;
//         if (json['screenshots'] != null) {
//          screenshots = <>[];
//          json['screenshots'].forEach((v) {
//          screenshots!.add(.fromJson(v));
//         });
//       }
//         if (json['urlProblems'] != null) {
//          urlProblems = <>[];
//          json['urlProblems'].forEach((v) {
//          urlProblems!.add(.fromJson(v));
//         });
//       }
//     }

//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = Map<String, dynamic>();
//         data['timestamp'] = timestamp;
//         data['panaRuntimeInfo'] = panaRuntimeInfo!.toJson();
//         data['reportStatus'] = reportStatus;
//         data['derivedTags'] =derivedTags != null ? derivedTags!.map((v) => v?.toJson()).toList() : null;
//         data['allDependencies'] =allDependencies != null ? allDependencies!.map((v) => v?.toJson()).toList() : null;
//         data['licenses'] =licenses != null ? licenses!.map((v) => v?.toJson()).toList() : null;
//         data['report'] = report!.toJson();
//         data['result'] = result!.toJson();
//         data['screenshots'] =screenshots != null ? screenshots!.map((v) => v?.toJson()).toList() : null;
//         data['urlProblems'] =urlProblems != null ? urlProblems!.map((v) => v?.toJson()).toList() : null;
//         return data;
//     }
// }

// class PanaRuntimeInfo {
//     String? panaVersion;
//     String? sdkVersion;
//     FlutterVersions? flutterVersions;

//     PanaRuntimeInfo({this.panaVersion, this.sdkVersion, this.flutterVersions});

//     PanaRuntimeInfo.fromJson(Map<String, dynamic> json) {
//         panaVersion = json['panaVersion'];
//         sdkVersion = json['sdkVersion'];
//         flutterVersions = json['flutterVersions'] != null ? FlutterVersions?.fromJson(json['flutterVersions']) : null;
//     }

//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = Map<String, dynamic>();
//         data['panaVersion'] = panaVersion;
//         data['sdkVersion'] = sdkVersion;
//         data['flutterVersions'] = flutterVersions!.toJson();
//         return data;
//     }
// }

// class Report {
//     List<Section?>? sections;

//     Report({this.sections});

//     Report.fromJson(Map<String, dynamic> json) {
//         if (json['sections'] != null) {
//          sections = <Section>[];
//          json['sections'].forEach((v) {
//          sections!.add(Section.fromJson(v));
//         });
//       }
//     }

//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = Map<String, dynamic>();
//         data['sections'] =sections != null ? sections!.map((v) => v?.toJson()).toList() : null;
//         return data;
//     }
// }

// class Repository {
//     String? provider;
//     String? host;
//     String? repository;
//     String? branch;
//     String? path;

//     Repository({this.provider, this.host, this.repository, this.branch, this.path});

//     Repository.fromJson(Map<String, dynamic> json) {
//         provider = json['provider'];
//         host = json['host'];
//         repository = json['repository'];
//         branch = json['branch'];
//         path = json['path'];
//     }

//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = Map<String, dynamic>();
//         data['provider'] = provider;
//         data['host'] = host;
//         data['repository'] = repository;
//         data['branch'] = branch;
//         data['path'] = path;
//         return data;
//     }
// }

// class Result {
//     String? repositoryUrl;
//     String? issueTrackerUrl;
//     Repository? repository;

//     Result({this.repositoryUrl, this.issueTrackerUrl, this.repository});

//     Result.fromJson(Map<String, dynamic> json) {
//         repositoryUrl = json['repositoryUrl'];
//         issueTrackerUrl = json['issueTrackerUrl'];
//         repository = json['repository'] != null ? Repository?.fromJson(json['repository']) : null;
//     }

//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = Map<String, dynamic>();
//         data['repositoryUrl'] = repositoryUrl;
//         data['issueTrackerUrl'] = issueTrackerUrl;
//         data['repository'] = repository!.toJson();
//         return data;
//     }
// }

// class Root {
//     Score? score;
//     Scorecard? scorecard;

//     Root({this.score, this.scorecard});

//     Root.fromJson(Map<String, dynamic> json) {
//         score = json['score'] != null ? Score?.fromJson(json['score']) : null;
//         scorecard = json['scorecard'] != null ? Scorecard?.fromJson(json['scorecard']) : null;
//     }

//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = Map<String, dynamic>();
//         data['score'] = score!.toJson();
//         data['scorecard'] = scorecard!.toJson();
//         return data;
//     }
// }

// class Score {
//     int? grantedPoints;
//     int? maxPoints;
//     int? likeCount;
//     double? popularityScore;
//     List<String?>? tags;
//     DateTime? lastUpdated;

//     Score({this.grantedPoints, this.maxPoints, this.likeCount, this.popularityScore, this.tags, this.lastUpdated});

//     Score.fromJson(Map<String, dynamic> json) {
//         grantedPoints = json['grantedPoints'];
//         maxPoints = json['maxPoints'];
//         likeCount = json['likeCount'];
//         popularityScore = json['popularityScore'];
//         if (json['tags'] != null) {
//          tags = <>[];
//          json['tags'].forEach((v) {
//          tags!.add(.fromJson(v));
//         });
//       }
//         lastUpdated = json['lastUpdated'];
//     }

//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = Map<String, dynamic>();
//         data['grantedPoints'] = grantedPoints;
//         data['maxPoints'] = maxPoints;
//         data['likeCount'] = likeCount;
//         data['popularityScore'] = popularityScore;
//         data['tags'] =tags != null ? tags!.map((v) => v?.toJson()).toList() : null;
//         data['lastUpdated'] = lastUpdated;
//         return data;
//     }
// }

// class Scorecard {
//     String? packageName;
//     String? packageVersion;
//     String? runtimeVersion;
//     DateTime? updated;
//     DateTime? packageCreated;
//     DateTime? packageVersionCreated;
//     List<String?>? flags;
//     DartdocReport? dartdocReport;
//     PanaReport? panaReport;

//     Scorecard({this.packageName, this.packageVersion, this.runtimeVersion, this.updated, this.packageCreated, this.packageVersionCreated, this.flags, this.dartdocReport, this.panaReport});

//     Scorecard.fromJson(Map<String, dynamic> json) {
//         packageName = json['packageName'];
//         packageVersion = json['packageVersion'];
//         runtimeVersion = json['runtimeVersion'];
//         updated = json['updated'];
//         packageCreated = json['packageCreated'];
//         packageVersionCreated = json['packageVersionCreated'];
//         if (json['flags'] != null) {
//          flags = <>[];
//          json['flags'].forEach((v) {
//          flags!.add(.fromJson(v));
//         });
//       }
//         dartdocReport = json['dartdocReport'] != null ? DartdocReport?.fromJson(json['dartdocReport']) : null;
//         panaReport = json['panaReport'] != null ? PanaReport?.fromJson(json['panaReport']) : null;
//     }

//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = Map<String, dynamic>();
//         data['packageName'] = packageName;
//         data['packageVersion'] = packageVersion;
//         data['runtimeVersion'] = runtimeVersion;
//         data['updated'] = updated;
//         data['packageCreated'] = packageCreated;
//         data['packageVersionCreated'] = packageVersionCreated;
//         data['flags'] =flags != null ? flags!.map((v) => v?.toJson()).toList() : null;
//         data['dartdocReport'] = dartdocReport!.toJson();
//         data['panaReport'] = panaReport!.toJson();
//         return data;
//     }
// }

// class Section {
//     String? id;
//     String? title;
//     int? grantedPoints;
//     int? maxPoints;
//     String? status;
//     String? summary;

//     Section({this.id, this.title, this.grantedPoints, this.maxPoints, this.status, this.summary});

//     Section.fromJson(Map<String, dynamic> json) {
//         id = json['id'];
//         title = json['title'];
//         grantedPoints = json['grantedPoints'];
//         maxPoints = json['maxPoints'];
//         status = json['status'];
//         summary = json['summary'];
//     }

//     Map<String, dynamic> toJson() {
//         final Map<String, dynamic> data = Map<String, dynamic>();
//         data['id'] = id;
//         data['title'] = title;
//         data['grantedPoints'] = grantedPoints;
//         data['maxPoints'] = maxPoints;
//         data['status'] = status;
//         data['summary'] = summary;
//         return data;
//     }
// }
