part of 'sign_up_cubit.dart';

class SignUpState {
  const SignUpState({
    this.email = '',
    this.password = '',
    this.confirmPassword = '',
    this.validateAlways = false,
  });
  final String email;
  final String password;
  final String confirmPassword;
  final bool validateAlways;

  SignUpState copyWith({
    String? email,
    String? password,
    String? confirmPassword,
    bool? validateAlways,
  }) {
    return SignUpState(
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      validateAlways: validateAlways ?? this.validateAlways,
    );
  }
}
