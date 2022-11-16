import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:vip_number/app/modules/data/card.dart';

import 'provider.dart';

const kHomePageGreyFontsColor = TextStyle(
  color: Color(0xFF868c93),
);

class PackagesView extends ConsumerWidget {
  const PackagesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
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
                  Stack(alignment: AlignmentDirectional.centerEnd, children: [
                    Container(
                      height: height * 0.61,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              AssetImage('assets/images/search_background.png'),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image: AssetImage(
                                        'assets/images/dart_icon.png'),
                                  ),
                                ),
                              ),
                              const Text(
                                'pub.dev',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                textScaleFactor: 2.8,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: TextFormField(
                              autofocus: false,
                              onTap: () {
                                context.push('/search');
                              },
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(1.0),
                                hintText: 'Search packgaes',
                                hintStyle: kHomePageGreyFontsColor,
                                prefixIcon: Icon(Icons.search),
                                fillColor: Color(0xff35404d),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(40.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 35.0,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.0),
                            child: Text(
                              'The official package repository for Dart and Flutter apps.',
                              textScaleFactor: 1.3,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'supported by ',
                                textScaleFactor: 1.2,
                                style: kHomePageGreyFontsColor,
                              ),
                              Text('Google',
                                  textScaleFactor: 2.7,
                                  style: kHomePageGreyFontsColor),
                            ],
                          )
                        ],
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      'Flutter Favorites',
                      textScaleFactor: 2.7,
                      style: TextStyle(
                        color: Color(0xFF254b77),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  ...response.packages
                          ?.map(
                            (data) => Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 1.3,
                              ),
                              child: DataCard(package: data),
                            ),
                          )
                          .toList() ??
                      [],
                ]),
              ),
            )
          : const Text("package not found"),
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
