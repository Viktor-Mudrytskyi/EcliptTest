import 'package:test_task_eclipt/core/validation/validator.dart';

class TextValidator implements Validator<String> {
  @override
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Text cannot be empty';
    }
    return null;
  }
}
