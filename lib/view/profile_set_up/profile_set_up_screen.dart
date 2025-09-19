import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_eclipt/core/extensions.dart';
import 'package:test_task_eclipt/core/validation/text_validator.dart';
import 'package:test_task_eclipt/service/di_service.dart';
import 'package:test_task_eclipt/theme/app_colors.dart';
import 'package:test_task_eclipt/theme/app_text_styles.dart';
import 'package:test_task_eclipt/theme/resources.dart';
import 'package:test_task_eclipt/view/common/app_button.dart';
import 'package:test_task_eclipt/view/common/app_svg_icon.dart';
import 'package:test_task_eclipt/view/common/custom_text_field.dart';
import 'package:test_task_eclipt/view/profile_set_up/bloc/profile_set_up/profile_set_up_cubit.dart';

class ProfileSetUpScreen extends StatefulWidget {
  const ProfileSetUpScreen({super.key});

  @override
  State<ProfileSetUpScreen> createState() => _ProfileSetUpScreenState();
}

class _ProfileSetUpScreenState extends State<ProfileSetUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileSetUpCubit(
        formKey: _formKey,
        userRepository: DiService.get(),
        userBloc: context.read(),
        authRepository: DiService.get(),
        loaderOverlayCubit: context.read(),
      ),
      child: Builder(
        builder: (context) {
          final cubit = context.read<ProfileSetUpCubit>();
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
                        'Set up\naccount',
                        style: AppTextStyles.base.copyWith(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 36),
                      CustomTextField(
                        hintText: 'Enter any text',
                        prefixConstraints: const BoxConstraints(minWidth: 38),
                        prefix: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: AppSvgIcon(
                            assetPath: AppIcons.user,
                            color: AppColors.appHint,
                            height: 24,
                          ),
                        ),
                        onChanged: cubit.textChanged,
                        validator: (value) {
                          return TextValidator().validate(value);
                        },
                      ),
                      const SizedBox(height: 32),
                      AppButton(
                        text: 'Finish',
                        onPressed: () {
                          cubit.submit();
                        },
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
