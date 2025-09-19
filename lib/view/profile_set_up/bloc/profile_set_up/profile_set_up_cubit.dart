import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task_eclipt/repository/auth_repository.dart';
import 'package:test_task_eclipt/repository/exception/remote_exception.dart';
import 'package:test_task_eclipt/repository/model/user_model.dart';
import 'package:test_task_eclipt/repository/user_repository.dart';
import 'package:test_task_eclipt/view/global/bloc/loader_overlay/loader_overlay_cubit.dart';
import 'package:test_task_eclipt/view/global/mixin/overlay_mixin.dart';
import 'package:test_task_eclipt/view/home/user/user_bloc.dart';

part 'profile_set_up_cubit.freezed.dart';
part 'profile_set_up_state.dart';

class ProfileSetUpCubit extends Cubit<ProfileSetUpState> with OverlayMixin {
  final UserBloc _userBloc;
  final GlobalKey<FormState> _formKey;
  final UserRepository _userRepository;
  final AuthRepository _authRepository;
  final LoaderOverlayCubit _loaderOverlayCubit;

  ProfileSetUpCubit({
    required GlobalKey<FormState> formKey,
    required UserRepository userRepository,
    required UserBloc userBloc,
    required AuthRepository authRepository,
    required LoaderOverlayCubit loaderOverlayCubit,
  }) : _formKey = formKey,
       _userBloc = userBloc,
       _loaderOverlayCubit = loaderOverlayCubit,
       _authRepository = authRepository,
       _userRepository = userRepository,
       super(const ProfileSetUpState(validateAlways: false, text: ''));

  void textChanged(String value) {
    if (state.validateAlways) {
      _formKey.currentState?.validate();
    }
    emit(state.copyWith(text: value));
  }

  Future<void> submit() async {
    _formKey.currentState?.validate();
    emit(state.copyWith(validateAlways: true));
    if (_formKey.currentState?.validate() ?? false) {
      try {
        _loaderOverlayCubit.showLoading();
        await _userRepository.setUser(
          UserModel(
            text: state.text,
            id: _authRepository.currentUser?.uid ?? '',
          ),
          _authRepository.currentUser?.uid ?? '',
        );
        _userBloc.add(const UserEvent.resolveState());
      } on RemoteException catch (e) {
        showErrorToast(e.message);
      } finally {
        _loaderOverlayCubit.hideLoading();
      }
    }
  }
}
