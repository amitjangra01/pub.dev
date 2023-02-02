import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'firebase_auth/service.dart';

class LogInScreen extends ConsumerWidget {
  LogInScreen({Key? key}) : super(key: key);
  // final FirebaseAuthentication firebase = FirebaseAuthentication();

  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String?> _signIn(
      LoginData data, FirebaseAuthentication authentication) async {
    await authentication.signIn(email: data.name, password: data.password);
    return null;
  }

  Future<String?> _signUp(
      SignupData data, FirebaseAuthentication authentication) async {
    if ((data.name?.isEmpty ?? false) || (data.password?.isEmpty ?? false)) {
      return "email and password not valid";
    }
    final String? signUp = await authentication.signUp(
      email: data.name!,
      password: data.password!,
    );
    return signUp;
  }

  Future<String?> _recoverPassword(String email) async {
    if (email.isEmpty) {
      return ('email is required');
    }

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      return null;
    } on FirebaseAuthException catch (e) {
      return "${e.code}: ${e.message}";
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(userProvider.notifier);
    return FlutterLogin(
      title: 'VIP Number',
      logo: const AssetImage('assets/images/logo.png'),
      onLogin: (data) => _signIn(data, auth),
      onSignup: (data) => _signUp(data, auth),
      savedEmail: kDebugMode ? 'abc@gmail.com' : '',
      savedPassword: kDebugMode ? '123456' : '',
      onSubmitAnimationCompleted: () {
        auth.getCurrentUser();
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
