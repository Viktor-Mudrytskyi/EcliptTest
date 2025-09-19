import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_task_eclipt/service/logger_service.dart';

class SharedPrefService {
  final SharedPreferences _prefs;
  final LoggerService _logger;
  const SharedPrefService({
    required SharedPreferences prefs,
    required LoggerService logger,
  }) : _prefs = prefs,
       _logger = logger;

  static const String _onboardingKey = 'onboarding_completed';

  Future<void> setOnboardingCompleted(bool completed) async {
    await _prefs.setBool(_onboardingKey, completed);
    _logger.d('Onboarding completed set to $completed');
  }

  bool isOnboardingCompleted() {
    return _prefs.getBool(_onboardingKey) ?? false;
  }
}
