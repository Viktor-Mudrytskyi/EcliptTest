import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_eclipt/core/extensions.dart';
import 'package:test_task_eclipt/repository/model/user_model.dart';
import 'package:test_task_eclipt/service/di_service.dart';
import 'package:test_task_eclipt/theme/app_colors.dart';
import 'package:test_task_eclipt/theme/app_text_styles.dart';
import 'package:test_task_eclipt/theme/resources.dart';
import 'package:test_task_eclipt/view/common/app_button.dart';
import 'package:test_task_eclipt/view/global/bloc/auth/auth_bloc.dart';
import 'package:test_task_eclipt/view/home/loading_screen.dart';
import 'package:test_task_eclipt/view/home/user/user_bloc.dart';
import 'package:test_task_eclipt/view/profile_set_up/profile_set_up_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UserBloc(userRepo: DiService.get(), authRepository: DiService.get())
            ..add(const UserEvent.init()),
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const LoadingScreen(),
            processing: (_) => const LoadingScreen(),
            profileSetUp: (_) => const ProfileSetUpScreen(),
            home: (home) => _Home(model: home.model, userEmail: home.userEmail),
          );
        },
      ),
    );
  }
}

class _Home extends StatelessWidget {
  const _Home({required this.model, required this.userEmail});

  final UserModel model;
  final String userEmail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.homeBg),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: context.mqSize.height * 0.45,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.63),
                  ],
                  stops: [0, 0.24],
                ),
              ),
            ),
          ),
          Positioned(
            top: context.padding.top + 36,
            child: SizedBox(
              width: context.mqSize.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Test completed',
                    style: AppTextStyles.base.copyWith(
                      fontSize: 24,
                      color: AppColors.appWhite,
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'You are signed in as:\n $userEmail',
                    style: AppTextStyles.base.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.appGrey2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Your text is:\n ${model.text}',
                    style: AppTextStyles.base.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.appGrey2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: context.padding.bottom == 0 ? 10 : context.padding.bottom,
            child: SizedBox(
              width: context.mqSize.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: AppButton(
                  text: 'Log out',
                  onPressed: () {
                    context.read<AuthBloc>().add(const AuthEvent.signOut());
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
