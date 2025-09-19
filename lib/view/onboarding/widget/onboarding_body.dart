import 'package:flutter/material.dart';
import 'package:test_task_eclipt/theme/app_colors.dart';
import 'package:test_task_eclipt/theme/app_text_styles.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          SizedBox(
            height: 425,
            child: Align(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Image.asset(image, fit: BoxFit.contain),
              ),
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.base.copyWith(
              color: AppColors.appBlack,
              fontWeight: FontWeight.w800,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.base.copyWith(
              color: AppColors.appGrey,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
