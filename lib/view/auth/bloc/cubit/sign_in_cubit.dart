import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_eclipt/view/global/bloc/auth/auth_bloc.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit({
    required GlobalKey<FormState> formKey,
    required AuthBloc authBloc,
  }) : _authBloc = authBloc,
       _formKey = formKey,
       super(const SignInState());

  final GlobalKey<FormState> _formKey;
  final AuthBloc _authBloc;

  void emailChanged(String value) {
    if (state.validateAlways) {
      _formKey.currentState?.validate();
    }
    emit(state.copyWith(email: value));
  }

  void passwordChanged(String value) {
    if (state.validateAlways) {
      _formKey.currentState?.validate();
    }
    emit(state.copyWith(password: value));
  }

  void signIn() {
    _formKey.currentState?.validate();
    emit(state.copyWith(validateAlways: true));
    if (_formKey.currentState?.validate() ?? false) {
      _authBloc.add(
        AuthEvent.signIn(email: state.email, password: state.password),
      );
    }
  }
}
