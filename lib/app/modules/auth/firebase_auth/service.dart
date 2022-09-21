import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

class FirebaseAuthentication extends StateNotifier<User?> {
  FirebaseAuthentication() : super(null);
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  //SIGN UP METHOD
  Future<String?> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      await firestore.collection('users').doc('${credential.user?.email}').set({
        'email': email,
        'password': password,
        'uId': credential.user?.uid,
      });
      debugPrint(credential.user?.uid);
      state = credential.user;
      return null;
    } on FirebaseAuthException catch (e) {
      debugPrint(e.message);
      return e.message;
    }
  }

  /// SIGN UP METHOD WITH ONE TIME PASSWORD
  Future signUpWithOTP({
    required String phone,
    required String password,
  }) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: phone,
        password: password,
      );
      debugPrint(credential.user?.uid);
      state = credential.user;
      return null;
    } on FirebaseAuthException catch (e) {
      debugPrint(e.message);
      return e.message;
    }
  }

  //SIGN IN METHOD
  Future<UserCredential?> signIn(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      debugPrint(userCredential.user?.email);
      state = userCredential.user;
      return userCredential;
    } on FirebaseAuthException catch (e) {
      debugPrint(e.message);
/*      if (e.code == 'user-not-found') {
        await signUp(email: email, password: password, name: email);
      }*/
      return null;
    }
  }

  ///SIGN IN METHOD WITH ONE TIME PASSWORD
  Future signInWithOTP({required String phone}) async {
    try {
      ConfirmationResult userCredential = await _auth.signInWithPhoneNumber(
        phone,
      );
      debugPrint(userCredential.verificationId);
      return null;
    } on FirebaseAuthException catch (e) {
      debugPrint(e.message);
      return e.message;
    }
  }

  //SIGN OUT METHOD
  Future<void> signOut() async {
    await _auth.signOut();
    state = null;
    debugPrint('sign-out');
  }

  Future<User?> getCurrentUser() async {
    try {
      User? result = _auth.currentUser;
      debugPrint(result?.email);
      state = result;
      return result;
    } catch (error) {
      debugPrint(error.toString());
      state = null;
      return null;
    }
  }
}

final userProvider =
    StateNotifierProvider<FirebaseAuthentication, User?>((ref) {
  return FirebaseAuthentication();
});
