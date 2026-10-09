import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/constants/app_colors.dart';
import 'package:fruits_hub/core/constants/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'البريد الالكتروني',
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16.h),
          CustomTextFormField(
            hintText: 'كلمة المرور',
            textInputType: TextInputType.text,
            isPassword: true,
          ),
          SizedBox(height: 16.h),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'نسيت كلمة المرور؟',
                style: AppTextStyles.semiBold13Subtitle
                    .copyWith(color: AppColors.forgetPassTextColor),
              ),
            ),
          ),
          SizedBox(height: 32.h),
          CustomButton(
              text: 'تسجيل دخول',
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                }
              }),
        ],
      ),
    );
  }
}
