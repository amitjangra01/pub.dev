import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vip_number/app/modules/data/card.dart';

import 'provider.dart';

class PackagesView extends ConsumerWidget {
  const PackagesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String packageName = '';

    final height = MediaQuery.of(context).size.height;

    final width = MediaQuery.of(context).size.width;

    final snapshot = ref.watch(packageListProvider);

    return snapshot.when(
      data: (response) => response != null
          ? Scaffold(
              body: GestureDetector(
                onTap: () {
                  FocusScopeNode currentFocus = FocusScope.of(context);
                  if (!currentFocus.hasPrimaryFocus) {
                    currentFocus.unfocus();
                  }
                },
                child: ListView(children: [
                  Stack(children: [
                    Container(
                      height: height * 0.60,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              AssetImage('assets/images/search_background.png'),
                        ),
                      ),
                    ),
                    Positioned(
                      left: width / 4.7,
                      top: height / 5.7,
                      height: height / 25,
                      width: width / 5,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage('assets/images/dart_icon.png'),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: width / 2.5,
                      top: height / 7,
                      height: height / 10,
                      width: width,
                      child: Row(
                        children: const [
                          Text(
                            'pub.dev',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            textScaleFactor: 2.9,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: width / 12,
                      top: height / 3.7,
                      height: height / 17,
                      width: width / 1.2,
                      child: TextField(
                        onEditingComplete: () {},
                        decoration: const InputDecoration(
                          hintText: 'Search packgaes',
                          prefixIcon: Icon(Icons.search),
                          fillColor: Color(0xff35404d),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0)),
                          ),
                        ),
                      ),
                    ),
                  ]),
                  ...response.packages
                          ?.map(
                            (data) => DataCard(data: data),
                          )
                          .toList() ??
                      [],
                ]),
              ),
            )
          : const Text("package not found"),
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
