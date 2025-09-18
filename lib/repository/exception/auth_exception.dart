class AuthException implements Exception {
  factory AuthException.fromCode(String code) {
    const String errorText =
        'The email or password you entered is incorrect.\nPlease try again.';

    switch (code) {
      case 'invalid-email':
        return const AuthException(errorText);
      case 'user-disabled':
        return const AuthException(errorText);
      case 'user-not-found':
        return const AuthException(errorText);
      case 'wrong-password':
        return const AuthException(errorText);
      case 'invalid-credential':
        return const AuthException(errorText);
      case 'email-already-in-use':
        return const AuthException(
          'The email address is already in use by another account.',
        );
      case 'too-many-requests':
        return const AuthException(
          'Too many requests.\nWe have blocked all requests from this device.\nTry again later',
        );

      default:
        return const AuthException();
    }
  }
  const AuthException([this.message = 'An unknown exception occurred.']);

  final String message;
}
