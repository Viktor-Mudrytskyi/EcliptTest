import 'package:flutter/material.dart';
import 'package:test_task_eclipt/core/extensions.dart';
import 'package:test_task_eclipt/theme/app_colors.dart';
import 'package:test_task_eclipt/theme/app_text_styles.dart';
import 'package:test_task_eclipt/theme/resources.dart';
import 'package:test_task_eclipt/view/common/app_button.dart';
import 'package:test_task_eclipt/view/common/app_svg_icon.dart';
import 'package:test_task_eclipt/view/common/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20 + context.padding.top),
              Text(
                'Welcome\nBack!',
                style: AppTextStyles.base.copyWith(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 36),
              CustomTextField(
                hintText: 'Email',
                prefixConstraints: const BoxConstraints(minWidth: 38),
                prefix: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: AppSvgIcon(
                    assetPath: AppIcons.user,
                    color: AppColors.appHint,
                    height: 24,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              CustomTextField(
                hintText: 'Password',
                prefixConstraints: const BoxConstraints(minWidth: 38),
                toggleVisibility: true,
                prefix: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: AppSvgIcon(
                    assetPath: AppIcons.lock,
                    color: AppColors.appHint,
                    height: 20,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              AppButton(text: 'Login', onPressed: () {}),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Create An Account ',
                    style: AppTextStyles.base.copyWith(
                      fontSize: 12,
                      color: AppColors.foundationGrey500,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Sign Up',
                      style: AppTextStyles.base.copyWith(
                        fontSize: 12,
                        color: AppColors.appPink,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.appPink,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
