import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task_eclipt/repository/auth_repository.dart';
import 'package:test_task_eclipt/service/shared_pref_service.dart';
import 'package:test_task_eclipt/view/global/bloc/auth/auth_bloc.dart';

part 'onboarding_cubit.freezed.dart';
part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final SharedPrefService _sharedPrefService;
  final AuthBloc _authBloc;
  final AuthRepository _authRepository;
  OnboardingCubit({
    required SharedPrefService sharedPrefService,
    required AuthRepository authRepository,
    required AuthBloc authBloc,
  }) : _authBloc = authBloc,
       _authRepository = authRepository,
       _sharedPrefService = sharedPrefService,
       super(const OnboardingState());

  Future<void> completeOnboarding() async {
    await _sharedPrefService.setOnboardingCompleted(true);
    final status = _authRepository.authStatusValue;
    _authBloc.add(AuthEvent.resolveState(status: status));
  }
}
