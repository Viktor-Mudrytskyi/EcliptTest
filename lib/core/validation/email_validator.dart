import 'package:test_task_eclipt/core/validation/validator.dart';

class EmailValidator implements Validator<String> {
  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  @override
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email cannot be empty';
    } else if (!_emailRegExp.hasMatch(value)) {
      return 'Invalid email format';
    }
    return null;
  }
}
