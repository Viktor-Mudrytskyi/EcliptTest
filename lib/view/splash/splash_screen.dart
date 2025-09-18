import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:test_task_eclipt/view/global/bloc/auth/auth_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isTimerFinished = false;
  bool _isAuthStateResolved = false;

  @override
  void initState() {
    context.read<AuthBloc>().add(const AuthEvent.init());
    Timer(const Duration(seconds: 3), () {
      _isTimerFinished = true;
      if (_isAuthStateResolved) {
        FlutterNativeSplash.remove();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        _isAuthStateResolved = true;
        if (_isTimerFinished &&
            !state.maybeMap(orElse: () => false, initial: (_) => true)) {
          FlutterNativeSplash.remove();
        }
      },
      child: const Scaffold(),
    );
  }
}
