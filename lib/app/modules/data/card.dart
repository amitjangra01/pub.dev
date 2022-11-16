import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'other_providers.dart';
import 'response/package_response/package.dart';

class DataCard extends ConsumerWidget {
  final Package package;
  const DataCard({
    Key? key,
    required this.package,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final likes = ref.watch(metricsProvider('${package.name}'));
    return GestureDetector(
      onTap: () {
        context.push('/packageView?packageName=${package.name}');
      },
      child: Card(
        shadowColor: Colors.grey,
        child: Container(
          decoration: const BoxDecoration(),
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(package.name.toString(),
                  textScaleFactor: 1.3,
                  style: const TextStyle(color: Colors.blue),
                  textAlign: TextAlign.start),
              SizedBox(
                height: height * 0.01,
              ),
              Text(package.latest?.pubspec?.description ?? ''),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  const Text('Publisher'),
                  TextButton(
                    onPressed: () {
                      context.push('/packageView?packageName=${package.name}');
                    },
                    child: Text(
                        '${likes.whenData((value) => value.score?.tags?[1])}'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

extension TitleCase on String {
  String toTitleCase() {
    return toLowerCase().replaceAllMapped(
        RegExp(
            r'[A-Z]{2,}(?=[A-Z][a-z]+[0-9]*|\b)|[A-Z]?[a-z]+[0-9]*|[A-Z]|[0-9]+'),
        (Match match) {
      return "${match[0]?[0].toUpperCase()}${match[0]?.substring(1).toLowerCase()}";
    }).replaceAll(RegExp(r'(_|-)+'), ' ');
  }
}
