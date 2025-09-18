import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task_eclipt/repository/auth_repository.dart';
import 'package:test_task_eclipt/repository/exception/auth_exception.dart';
import 'package:test_task_eclipt/route/navigaion_mixin.dart';
import 'package:test_task_eclipt/view/auth/sign_in_screen.dart';
import 'package:test_task_eclipt/view/global/bloc/loader_overlay/loader_overlay_cubit.dart';
import 'package:test_task_eclipt/view/global/mixin/overlay_mixin.dart';
import 'package:test_task_eclipt/view/home/home_screen.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState>
    with OverlayMixin, NavigaionMixin {
  final AuthRepository _authRepo;

  final GlobalKey<NavigatorState> _navigatorKey;
  final LoaderOverlayCubit _loaderOverlayCubit;

  StreamSubscription<UserAuthStatus?>? _authStatusSubscription;

  AuthBloc({
    required AuthRepository authRepo,
    required GlobalKey<NavigatorState> navigatorKey,
    required LoaderOverlayCubit loaderOverlayCubit,
  }) : _authRepo = authRepo,
       _loaderOverlayCubit = loaderOverlayCubit,
       _navigatorKey = navigatorKey,
       super(const _Initial()) {
    on<AuthEvent>(_mapper);
  }

  Future<void> _mapper(AuthEvent event, Emitter<AuthState> emit) async {
    await event.map(
      signIn: (event) async => await _signIn(event, emit),
      signUp: (event) async => await _signUp(event, emit),
      resolveState: (event) async => await _resolveState(event, emit),
      signOut: (event) async => await _signOut(event, emit),
      init: (event) async => await _init(event, emit),
    );
  }

  Future<void> _init(_Init event, Emitter<AuthState> emit) async {
    _authStatusSubscription = _authRepo.authStatus.listen((status) {
      add(AuthEvent.resolveState(status: status));
    });
  }

  Future<void> _signIn(_SignIn event, Emitter<AuthState> emit) async {
    _loaderOverlayCubit.showLoading();
    try {
      await _authRepo.login(email: event.email, password: event.password);
    } on AuthException catch (e) {
      showErrorToast(e.message);
      _loaderOverlayCubit.hideLoading();
    }
  }

  Future<void> _signUp(_SignUp event, Emitter<AuthState> emit) async {
    _loaderOverlayCubit.showLoading();
    try {
      await _authRepo.signUp(email: event.email, password: event.password);
    } on AuthException catch (e) {
      showErrorToast(e.message);
      _loaderOverlayCubit.hideLoading();
    }
  }

  Future<void> _resolveState(_Resolve event, Emitter<AuthState> emit) async {
    final bool shouldAnimate = state.maybeMap(
      orElse: () => true,
      initial: (value) => false,
    );

    if (event.status == UserAuthStatus.loggedOut) {
      _loaderOverlayCubit.hideLoading();
      unawaited(
        replaceAllWithKey(
          key: _navigatorKey,
          page: const SignInScreen(),
          animate: shouldAnimate,
        ),
      );
      emit(const AuthState.loggedOut());
      return;
    }

    if (event.status == UserAuthStatus.loggedIn) {
      _loaderOverlayCubit.hideLoading();
      unawaited(
        replaceAllWithKey(
          key: _navigatorKey,
          page: const HomeScreen(),
          animate: shouldAnimate,
        ),
      );
      emit(AuthState.loggedIn(fbUser: _authRepo.currentUser!));
    }
  }

  Future<void> _signOut(_SignOut event, Emitter<AuthState> emit) async {
    _loaderOverlayCubit.showLoading();

    try {
      await _authRepo.logout();
    } on AuthException catch (e) {
      showErrorToast(e.message);
      _loaderOverlayCubit.hideLoading();
    }
  }

  @override
  Future<void> close() {
    _authStatusSubscription?.cancel();
    return super.close();
  }
}
