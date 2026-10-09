import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fruits_hub/features/Auth/presentation/widgets/custom_app_bar.dart';
import 'package:fruits_hub/features/Auth/presentation/widgets/dont_have_an_account_row.dart';
import 'package:fruits_hub/features/Auth/presentation/widgets/login_form.dart';
import 'package:fruits_hub/features/Auth/presentation/widgets/or_dvider.dart';
import 'package:fruits_hub/features/Auth/presentation/widgets/social_login_list.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  CustomAppBar(),
                  SizedBox(height: 24.h),
                  LoginForm(),
                  SizedBox(height: 16.h),
                  DontHaveAnAccountRow(),
                  SizedBox(height: 32.h),
                  OrDvider(),
                  SizedBox(height: 16.h),
                  SocialLoginList()
                ],
              ),
            )),
          )),
    );
  }
}
