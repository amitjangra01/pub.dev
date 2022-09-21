import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'provider.dart';

class PackagesView extends ConsumerWidget {
  const PackagesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final snapshot = ref.watch(packageListProvider);
    return snapshot.when(
      data: (response) => response != null
          ? Scaffold(
              body: ListView(
                children: response.packages
                        ?.map(
                          (e) => ListTile(
                            title: Text(e.name ?? ''),
                            onTap: () => context
                                .push('/packageView?packageName=${e.name}'),
                          ),
                        )
                        .toList() ??
                    [],
              ),
            )
          : const Text("package not found"),
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
