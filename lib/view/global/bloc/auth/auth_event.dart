part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn({
    required String email,
    required String password,
  }) = _SignIn;
  const factory AuthEvent.signUp({
    required String email,
    required String password,
  }) = _SignUp;
  const factory AuthEvent.resolveState({
    required UserAuthStatus status,
    String? password,
  }) = _Resolve;
  const factory AuthEvent.init() = _Init;
  const factory AuthEvent.signOut() = _SignOut;
}
