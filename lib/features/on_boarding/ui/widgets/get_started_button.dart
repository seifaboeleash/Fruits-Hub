import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/app_colors.dart';
import 'package:fruits_hub/core/constants/app_text_styles.dart';


class GetStartedButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const GetStartedButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: const Text(
          'إبدأ الان',
          style: AppTextStyles.bold16Button,
        ),
      ),
    );
  }
}
