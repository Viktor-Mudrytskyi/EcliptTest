import 'package:flutter/material.dart';
import 'package:test_task_eclipt/theme/app_theme.dart';
import 'package:test_task_eclipt/view/splash/splash_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.lightTheme, home: const SplashScreen());
  }
}
