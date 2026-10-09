import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/constants/app_colors.dart';
import 'package:fruits_hub/core/constants/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double? width;
  final double height;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final double borderRadius;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.width,
    this.height = 54,
    this.backgroundColor,
    this.textStyle,
    this.borderRadius = 16,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width?.w ?? double.infinity,
      height: height.h,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius.r),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle ?? AppTextStyles.bold16Button,
        ),
      ),
    );
  }
}