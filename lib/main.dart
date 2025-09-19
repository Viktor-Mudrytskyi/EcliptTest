import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:test_task_eclipt/firebase_options.dart';
import 'package:test_task_eclipt/service/di_service.dart';
import 'package:test_task_eclipt/view/app.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await _setup();
  runApp(const MainApp());
}

Future<void> _setup() {
  return DiService.setup();
}
