import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_task_eclipt/service/di_service.dart';
import 'package:test_task_eclipt/view/app.dart';

void main() async {
  _setup();
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}

void _setup() {
  DiService.setup();
}
