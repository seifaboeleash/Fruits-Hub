import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/app_colors.dart';
import 'package:fruits_hub/core/constants/app_text_styles.dart';

class DontHaveAnAccountRow extends StatelessWidget {
  const DontHaveAnAccountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'لا تمتلك حساب؟ ',
          style: AppTextStyles.semiBold16Green.copyWith(
            color: AppColors.skipTextColor,
          ),
        ),
        Text('قم بإنشاء حساب', style: AppTextStyles.semiBold16Green),
      ],
    );
  }
}
