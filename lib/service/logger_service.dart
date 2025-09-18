import 'package:logger/logger.dart';

class LoggerService {
  final _logger = Logger(filter: DevelopmentFilter(), printer: PrettyPrinter());

  void d(
    String message, {
    Object? error,
    DateTime? time,
    StackTrace? stackTrace,
  }) => _logger.d(message, error: error, stackTrace: stackTrace, time: time);

  void i(
    String message, {
    Object? error,
    DateTime? time,
    StackTrace? stackTrace,
  }) => _logger.i(message, error: error, stackTrace: stackTrace, time: time);

  void w(
    String message, {
    Object? error,
    DateTime? time,
    StackTrace? stackTrace,
  }) => _logger.w(message, error: error, stackTrace: stackTrace, time: time);

  void e(
    String message, {
    Object? error,
    DateTime? time,
    StackTrace? stackTrace,
  }) => _logger.e(message, error: error, stackTrace: stackTrace, time: time);
}
