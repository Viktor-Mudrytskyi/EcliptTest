part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.init() = _Started;
  const factory UserEvent.resolveState() = _ResolveState;
}
