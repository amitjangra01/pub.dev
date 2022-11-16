import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:vip_number/app/extension_methods.dart';
import 'package:vip_number/app/modules/data/search/provider.dart';
import 'search_model.dart';

class SearchView extends ConsumerWidget {
  const SearchView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchProvider = ref.watch(searchStateProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search packages'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              // leading: const BackButton(),
              title: TextField(
                onChanged: (value) {
                  searchProvider.search(page: 0, query: value);
                },
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(left: 16.0),
                  hintText: 'Search packgaes',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40.0),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: StreamBuilder<SearchModel?>(
                stream: searchProvider.stream,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        CircularProgressIndicator(),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Loading...')
                      ],
                    );
                  }

                  if (!snapshot.hasData) {
                    return const Center(
                      child: Text(
                        "Data Not Found",
                        textScaleFactor: 2.0,
                      ),
                    );
                  }

                  return ListView(
                    children: snapshot.data!.packages!
                        .map(
                          (e) => ListTile(
                            contentPadding: const EdgeInsets.only(left: 24.0),
                            title: Text(
                              e.package!.toTitleCase(),
                            ),
                            onTap: () {
                              context.push(
                                  '/packageView?packageName=${e.package}');
                            },
                          ),
                        )
                        .toList(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
