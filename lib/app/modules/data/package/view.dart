import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vip_number/app/modules/data/other_providers.dart';
import 'package:vip_number/app/modules/data/package/provider.dart';

const kPackageViewCounterColor = Color(0xff1967d2);

class PackageView extends ConsumerWidget {
  final String packageName;
  const PackageView({Key? key, required this.packageName}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final snapshot = ref.watch(packageProvider(packageName));
    final likes = ref.watch(likesProvider(packageName));

    return Scaffold(
      body: likes.when(
          data: (metrics) => snapshot.when(
                data: (data) => data != null
                    ? Scaffold(
                        appBar: AppBar(
                          title: const Text('Pub.dev'),
                        ),
                        floatingActionButton: FloatingActionButton(
                          onPressed: () {},
                          child: const Icon(Icons.thumb_up_alt_rounded),
                        ),
                        body: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      '${data.name}',
                                      textScaleFactor: 1.5,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  Text(
                                    '${data.latest?.version}',
                                    textScaleFactor: 1.5,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Text('${data.latest?.pubspec?.description}'),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '${metrics.score?.likeCount}',
                                        textScaleFactor: 2.5,
                                      ),
                                      const Text('Likes'),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.baseline,
                                        textBaseline: TextBaseline.alphabetic,
                                        children: [
                                          Text(
                                            '${metrics.score?.grantedPoints}',
                                            style: const TextStyle(
                                              fontSize: 40,
                                            ),
                                          ),
                                          Text(
                                            '/${metrics.score?.maxPoints}',
                                            style: const TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        'PUB POINTS',
                                        style: TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        (metrics.score?.popularityScore ?? 0)
                                            .toPopularity(),
                                        textScaleFactor: 2.5,
                                      ),
                                      const Text('Popularity'),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    : const Text('package not found'),
                error: (error, stackTrace) => Text(error.toString()),
                loading: () => const CircularProgressIndicator(),
              ),
          error: (error, stackTrace) => Text('Error $error'),
          loading: () => const CircularProgressIndicator()),
    );
  }
}

extension PopularityParsing on double {
  String toPopularity() => (this * 100).round().toString();
}
