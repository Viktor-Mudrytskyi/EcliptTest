import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/subjects.dart';
import 'package:test_task_eclipt/repository/exception/auth_exception.dart';
import 'package:test_task_eclipt/service/auth_service.dart';
import 'package:test_task_eclipt/service/logger_service.dart';

enum UserAuthStatus { loggedIn, loggedOut }

class AuthRepository {
  final AuthService _authService;
  final LoggerService _logger;

  late BehaviorSubject<UserAuthStatus> subject;
  StreamSubscription<User?>? _authChangeSubscription;

  AuthRepository({
    required AuthService authService,
    required LoggerService logger,
  }) : _logger = logger,
       _authService = authService {
    subject = BehaviorSubject();
    _authChangeSubscription = _authService.authStatus.listen(
      _authStatusListener,
    );
  }

  Stream<UserAuthStatus> get authStatusStream => subject.stream;
  UserAuthStatus get authStatusValue => subject.value;
  User? get currentUser => _authService.currentUser;

  Future<UserCredential> login({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await _authService.login(
        email: email,
        password: password,
      );
      _logger.d('User logged in: ${credential.user?.uid}');

      return credential;
    } on FirebaseAuthException catch (e) {
      _logger.e('User auth exception: ${e.message}');
      throw AuthException.fromCode(e.code);
    } catch (e) {
      _logger.e('User auth uknown exception: ${e.toString()}');
      throw const AuthException();
    }
  }

  Future<UserCredential> signUp({
    required String password,
    required String email,
  }) async {
    try {
      final credential = await _authService.signUp(
        email: email,
        password: password,
      );
      _logger.d('User registered: ${credential.user?.uid}');

      return credential;
    } on FirebaseAuthException catch (e) {
      _logger.e('User auth exception: ${e.message}');
      throw AuthException.fromCode(e.code);
    } catch (e) {
      _logger.e('User auth uknown exception: ${e.toString()}');
      throw const AuthException();
    }
  }

  Future<void> logout() async {
    try {
      await _authService.logout();
      _logger.d('User logged out');
    } catch (e) {
      _logger.e('User logout exception: ${e.toString()}');
      throw const AuthException();
    }
  }

  void dispose() {
    subject.close();
    _authChangeSubscription?.cancel();
  }

  void _authStatusListener(User? user) {
    if (user == null) {
      _logger.d('User auth status changed: Logged out');
      subject.add(UserAuthStatus.loggedOut);
    } else {
      _logger.d('User auth status changed: Logged in ${user.uid}');
      subject.add(UserAuthStatus.loggedIn);
    }
  }
}
