import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:vip_number/app/modules/auth/login.dart';
import 'package:vip_number/app/modules/data/package/view.dart';

import 'modules/auth/firebase_auth/service.dart';
import 'modules/home/view.dart';

final routerProvider = Provider<GoRouter>(
  (ref) {
    ref.read(userProvider.notifier).getCurrentUser();
    return GoRouter(
      redirect: (state) {
        final user = ref.read(userProvider);
        final bool loggedIn = (user != null);
        final bool loggingIn = state.subloc == '/login';
        if (!loggedIn) {
          return loggingIn ? null : '/login';
        }
        if (loggingIn) {
          return "/";
        }
        return null;
      },
      debugLogDiagnostics: kDebugMode,
      urlPathStrategy: UrlPathStrategy.path,
      refreshListenable: RouterNotifier(ref),
      routes: [
        GoRoute(
          path: '/login',
          builder: (context, state) {
            return LogInScreen();
          },
        ),
        GoRoute(
          path: '/packageView',
          builder: (context, state) {
            return PackageView(
              packageName: state.queryParams['packageName']!,
            );
          },
        ),
        GoRoute(
          path: '/',
          builder: (context, state) {
            return const HomeView();
          },
        ),
      ],
    );
  },
);

class RouterNotifier extends ChangeNotifier {
  final Ref _ref;

  RouterNotifier(this._ref) {
    _ref.listen<User?>(
      userProvider,
      (_, __) => notifyListeners(),
    );
  }
}
