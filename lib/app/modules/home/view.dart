import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vip_number/app/modules/data/all_packages/view.dart';

const kExpansionTileTextStyle =
    TextStyle(color: Color(0xFFa8afb6), fontWeight: FontWeight.w400);

// const kExpnasionTile

class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  Future<String?> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      return null;
    } on FirebaseAuthException catch (ex) {
      return "${ex.code}: ${ex.message}";
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pub.dev'),
          centerTitle: true,
        ),
        drawer: Drawer(
          backgroundColor: const Color(0xFF1e3045),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      children: [
                        TextButton(
                          child: const Text(
                            'Sign in',
                            textScaleFactor: 1.1,
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 1.0,
                    color: Color(0xFF4a5969),
                  ),
                  const ExpansionTile(
                    tilePadding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                    collapsedTextColor: Colors.white,
                    textColor: Colors.white,
                    collapsedIconColor: Colors.white,
                    iconColor: Colors.white,
                    title: Text(
                      'Pub.dev',
                      textScaleFactor: 1.3,
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    children: [
                      ListTile(
                        title: Text('Searching for packages',
                            style: kExpansionTileTextStyle),
                      ),
                      ListTile(
                        title: Text('Package scoring and pub points',
                            style: kExpansionTileTextStyle),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1.0,
                    color: Color(0xFF4a5969),
                  ),
                  const ExpansionTile(
                    tilePadding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                    collapsedTextColor: Colors.white,
                    textColor: Colors.white,
                    collapsedIconColor: Colors.white,
                    iconColor: Colors.white,
                    title: Text(
                      'Flutter',
                      textScaleFactor: 1.3,
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    children: [
                      ListTile(
                        title: Text('Using packages',
                            style: kExpansionTileTextStyle),
                      ),
                      ListTile(
                        title: Text(
                          'Developing packages and plugins',
                          style: TextStyle(
                              color: Color(0xFFa8afb6),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      ListTile(
                        title: Text('Publishing a packages',
                            style: kExpansionTileTextStyle),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1.0,
                    color: Color(0xFF4a5969),
                  ),
                  const ExpansionTile(
                    tilePadding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                    collapsedTextColor: Colors.white,
                    textColor: Colors.white,
                    collapsedIconColor: Colors.white,
                    iconColor: Colors.white,
                    title: Text(
                      'Dart',
                      textScaleFactor: 1.3,
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    children: [
                      ListTile(
                        title: Text('Using packages',
                            style: kExpansionTileTextStyle),
                      ),
                      ListTile(
                        title: Text('Publishing a packages',
                            style: kExpansionTileTextStyle),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1.0,
                    color: Color(0xFF4a5969),
                  ),
                ],
              )
            ],
          ),
        ),
        body: const PackagesView(),
      ),
    );
  }
}
