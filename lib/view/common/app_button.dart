import 'package:flutter/material.dart';
import 'package:test_task_eclipt/theme/app_colors.dart';
import 'package:test_task_eclipt/theme/app_text_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(4),
      color: AppColors.appPink,
      child: InkWell(
        splashColor: Colors.black26,
        highlightColor: Colors.black26,
        borderRadius: BorderRadius.circular(4),
        onTap: onPressed,
        child: SizedBox(
          height: 56,
          width: double.infinity,
          child: Center(
            child: Text(
              text,
              style: AppTextStyles.base.copyWith(
                color: AppColors.appWhite,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
