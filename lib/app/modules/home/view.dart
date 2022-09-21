import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vip_number/app/modules/data/all_packages_list_view/view.dart';

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
    double turns = 0.0;
    

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pub.dev'),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        child: const Text(
                          'Sign in',
                          textScaleFactor: 1.3,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          const Text(
                            'Pub.dev',
                            textScaleFactor: 1.5,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          const Text(
                            'Flutter',
                            textScaleFactor: 1.5,
                          ),
                          AnimatedRotation(
                            duration: const Duration(milliseconds: 500),
                            turns: turns,
                            child: const Icon(
                              Icons.arrow_forward_ios,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      child: Row(
                        children: [
                          const Text(
                            'Dart',
                            textScaleFactor: 1.5,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
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
