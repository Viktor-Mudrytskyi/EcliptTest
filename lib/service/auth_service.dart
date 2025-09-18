import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  AuthService();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<User?> get authStatus => _auth.authStateChanges();
  User? get currentUser => _auth.currentUser;

  Future<void> reloadUser() async {
    if (currentUser == null) {
      return;
    }
    await _auth.currentUser!.reload();
  }

  Future<bool> isUserLoggedIn() async {
    bool isUserLoggedIn = false;
    try {
      await _auth.currentUser?.getIdToken(true);
      isUserLoggedIn = _auth.currentUser != null;
    } catch (e) {
      isUserLoggedIn = false;
    }
    return isUserLoggedIn;
  }

  Future<UserCredential> login({
    required String email,
    required String password,
  }) async {
    final credential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    return credential;
  }

  Future<UserCredential> signUp({
    required String password,
    required String email,
  }) async {
    final userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    return userCredential;
  }
}
