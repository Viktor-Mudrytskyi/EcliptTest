part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.processing() = _Processing;
  const factory UserState.profileSetUp() = _ProfileSetUp;
  const factory UserState.home(UserModel model) = _Home;
}
