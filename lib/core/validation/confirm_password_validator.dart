import 'package:test_task_eclipt/core/validation/validator.dart';

class ConfirmPasswordValidator
    implements Validator<(String pas, String conPas)> {
  @override
  String? validate((String, String)? value) {
    final (password, confirmPassword) = value ?? ('', '');
    if (confirmPassword.isEmpty) {
      return 'Confirm Password cannot be empty';
    }
    if (confirmPassword.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    if (password != confirmPassword) {
      return 'Passwords do not match';
    }
    return null;
  }
}
