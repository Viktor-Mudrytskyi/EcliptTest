part of 'sign_in_cubit.dart';

class SignInState {
  const SignInState({
    this.email = '',
    this.password = '',
    this.validateAlways = false,
  });
  final String email;
  final String password;
  final bool validateAlways;

  SignInState copyWith({
    String? email,
    String? password,
    bool? validateAlways,
  }) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
      validateAlways: validateAlways ?? this.validateAlways,
    );
  }
}
