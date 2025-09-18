import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_eclipt/core/extensions.dart';
import 'package:test_task_eclipt/core/validation/email_validator.dart';
import 'package:test_task_eclipt/core/validation/password_validator.dart';
import 'package:test_task_eclipt/theme/app_colors.dart';
import 'package:test_task_eclipt/theme/app_text_styles.dart';
import 'package:test_task_eclipt/theme/resources.dart';
import 'package:test_task_eclipt/view/auth/bloc/cubit/sign_in_cubit.dart';
import 'package:test_task_eclipt/view/common/app_button.dart';
import 'package:test_task_eclipt/view/common/app_svg_icon.dart';
import 'package:test_task_eclipt/view/common/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SignInCubit(formKey: _formKey, authBloc: context.read()),
      child: Builder(
        builder: (context) {
          final cubit = context.read<SignInCubit>();
          return Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Form(
                  key: _formKey,
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
                        onChanged: cubit.emailChanged,
                        validator: (value) {
                          return EmailValidator().validate(value);
                        },
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
                        onChanged: cubit.passwordChanged,
                        validator: (value) {
                          return PasswordValidator().validate(value);
                        },
                      ),
                      const SizedBox(height: 32),
                      AppButton(
                        text: 'Login',
                        onPressed: () {
                          cubit.signIn();
                        },
                      ),
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
            ),
          );
        },
      ),
    );
  }
}
