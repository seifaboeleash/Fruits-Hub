import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/constants/app_colors.dart';

class OnBoardingPageIndicator extends StatelessWidget {
  final int currentPageIndex;
  final int dotCount;

  const OnBoardingPageIndicator({
    super.key,
    required this.currentPageIndex,
    this.dotCount = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        dotCount,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          width: 11.r,
          height: 11.r,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentPageIndex == index
                ? AppColors.activeDotColor
                : AppColors.inactiveDotColor,
          ),
        ),
      ),
    );
  }
}
