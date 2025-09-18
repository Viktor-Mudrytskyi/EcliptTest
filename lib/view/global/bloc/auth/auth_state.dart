part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.initial() = _Initial;
  const factory AuthState.loggedIn({required User fbUser}) = _LoggedIn;
  const factory AuthState.loggedOut() = _LoggedOut;
}
