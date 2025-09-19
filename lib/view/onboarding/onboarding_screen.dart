import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_eclipt/service/di_service.dart';
import 'package:test_task_eclipt/theme/resources.dart';
import 'package:test_task_eclipt/view/common/app_tab_view.dart';
import 'package:test_task_eclipt/view/onboarding/cubit/onboarding_cubit.dart';
import 'package:test_task_eclipt/view/onboarding/widget/onboarding_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(
        sharedPrefService: DiService.get(),
        authRepository: DiService.get(),
        authBloc: context.read(),
      ),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: AppTabView(
              onFinish: () {
                context.read<OnboardingCubit>().completeOnboarding();
              },
              tabs: [
                const OnboardingBody(
                  image: AppImages.onb1,
                  title: 'Choose Products',
                  subtitle:
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                ),
                const OnboardingBody(
                  image: AppImages.onb2,
                  title: 'Make Payment',
                  subtitle:
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                ),
                const OnboardingBody(
                  image: AppImages.onb3,
                  title: 'Get Your Order',
                  subtitle:
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
