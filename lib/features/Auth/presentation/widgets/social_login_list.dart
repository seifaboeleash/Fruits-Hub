import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/features/Auth/presentation/widgets/social_login_button.dart';

class SocialLoginList extends StatelessWidget {
  const SocialLoginList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialLoginButton(
            image: 'assets/svgs/google_icon.svg',
            title: 'تسجيل بواسطة جوجل',
            onPressed: () {}),
        SizedBox(height: 16.h),
        SocialLoginButton(
            image: 'assets/svgs/facebook_icon.svg',
            title: 'تسجيل بواسطة فيسبوك',
            onPressed: () {}),
        SizedBox(height: 16.h),
        SocialLoginButton(
            image: 'assets/svgs/apple_icon.svg',
            title: 'تسجيل بواسطة ابل',
            onPressed: () {}),
      ],
    );
  }
}