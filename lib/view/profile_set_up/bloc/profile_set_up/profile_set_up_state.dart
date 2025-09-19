part of 'profile_set_up_cubit.dart';

@freezed
abstract class ProfileSetUpState with _$ProfileSetUpState {
  const factory ProfileSetUpState({
    required String text,
    required bool validateAlways,
  }) = _State;
}
