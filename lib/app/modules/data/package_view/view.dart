import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vip_number/app/modules/data/package_view/provider.dart';

class PackageView extends ConsumerWidget {
  final String packageName;
  const PackageView({Key? key, required this.packageName}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final snapshot = ref.watch(packageProvider(packageName));
    return snapshot.when(
      data: (data) => data != null
          ? Scaffold(
              appBar: AppBar(
                title: Text(data.name.toString()),
              ),
              body: ListTile(
                title: Text(data.name ?? ''),
              ))
          : const Text('package not found'),
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
