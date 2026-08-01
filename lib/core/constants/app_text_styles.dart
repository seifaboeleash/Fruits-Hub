import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/app_colors.dart';

abstract class AppTextStyles {
  static const TextStyle bold23Title = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.bold,
    color: AppColors.titleTextColor,
    fontFamily: 'Cairo',
  );

  static const TextStyle semiBold13Subtitle = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.subtitleTextColor,
    height: 1.5,
    fontFamily: 'Cairo',
  );

  static const TextStyle regular13Skip = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.skipTextColor,
    fontFamily: 'Cairo',
  );

  static const TextStyle bold16Button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: 'Cairo',
  );
}
