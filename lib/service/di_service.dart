import 'package:get_it/get_it.dart';
import 'package:test_task_eclipt/repository/auth_repository.dart';
import 'package:test_task_eclipt/repository/user_repository.dart';
import 'package:test_task_eclipt/service/auth_service.dart';
import 'package:test_task_eclipt/service/logger_service.dart';

class DiService {
  static final GetIt _getIt = GetIt.instance;

  static void setup() {
    // Service
    _getIt.registerLazySingleton<LoggerService>(() => LoggerService());
    _getIt.registerLazySingleton<AuthService>(() => AuthService());

    // Repository
    _getIt.registerLazySingleton<AuthRepository>(
      () => AuthRepository(
        authService: _getIt<AuthService>(),
        logger: _getIt<LoggerService>(),
      ),
    );

    _getIt.registerLazySingleton<UserRepository>(
      () => UserRepository(logger: _getIt<LoggerService>()),
    );
  }

  static T get<T extends Object>() => _getIt<T>();
}
