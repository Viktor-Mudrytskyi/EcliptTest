import 'package:flutter/material.dart';
import 'package:test_task_eclipt/service/di_service.dart';
import 'package:test_task_eclipt/view/app.dart';

void main() {
  _setup();
  runApp(const MainApp());
}

void _setup() {
  DiService.setup();
}
