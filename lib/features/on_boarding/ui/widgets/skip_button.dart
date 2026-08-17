import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/constants/app_text_styles.dart';
import 'package:fruits_hub/core/constants/constants.dart';
import 'package:fruits_hub/core/constants/strings.dart';
import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';

class SkipButton extends StatelessWidget {
  final VoidCallback? onTap;

  const SkipButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ??
          () {
            Prefs.setBool(kIsOnBoardingViewed, true);
            Navigator.pushReplacementNamed(context, loginScreen);
          },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        child: Text(
          'تخطٍ',
          style: AppTextStyles.regular13Skip,
        ),
      ),
    );
  }
}
