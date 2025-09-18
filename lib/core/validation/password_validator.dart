import 'package:test_task_eclipt/core/validation/validator.dart';

class PasswordValidator implements Validator<String> {
  @override
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }
}
