import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_eclipt/core/extensions.dart';
import 'package:test_task_eclipt/core/validation/confirm_password_validator.dart';
import 'package:test_task_eclipt/core/validation/email_validator.dart';
import 'package:test_task_eclipt/core/validation/password_validator.dart';
import 'package:test_task_eclipt/theme/app_colors.dart';
import 'package:test_task_eclipt/theme/app_text_styles.dart';
import 'package:test_task_eclipt/theme/resources.dart';
import 'package:test_task_eclipt/view/auth/bloc/sign_up/sign_up_cubit.dart';
import 'package:test_task_eclipt/view/auth/sign_in_screen.dart';
import 'package:test_task_eclipt/view/common/app_button.dart';
import 'package:test_task_eclipt/view/common/app_svg_icon.dart';
import 'package:test_task_eclipt/view/common/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SignUpCubit(formKey: _formKey, authBloc: context.read()),
      child: Builder(
        builder: (context) {
          final cubit = context.read<SignUpCubit>();
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
                        'Create\nan account!',
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
                      CustomTextField(
                        hintText: 'Confirm Password',
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
                        onChanged: cubit.confirmPasswordChanged,
                        validator: (value) {
                          return ConfirmPasswordValidator().validate((
                            cubit.state.password,
                            value ?? '',
                          ));
                        },
                      ),
                      const SizedBox(height: 32),
                      AppButton(
                        text: 'Create Account',
                        onPressed: () {
                          cubit.signIn();
                        },
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'I Already Have an Account ',
                            style: AppTextStyles.base.copyWith(
                              fontSize: 12,
                              color: AppColors.foundationGrey500,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).replace(
                                oldRoute: ModalRoute.of(context)!,
                                newRoute: MaterialPageRoute(
                                  builder: (context) => const SignInScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Login',
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
