import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/constants/app_text_styles.dart';
import 'package:fruits_hub/features/on_boarding/presentation/widgets/skip_button.dart';

class OnBoardingPageItem extends StatelessWidget {
  final String imagePath;
  final String backgroundImagePath;
  final Widget titleWidget;
  final String subtitle;
  final bool isVisibleSkip;

  const OnBoardingPageItem({
    super.key,
    required this.imagePath,
    required this.backgroundImagePath,
    required this.titleWidget,
    required this.subtitle,
    required this.isVisibleSkip,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImagePath,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  imagePath,
                ),
              ),
              Visibility(
                visible: isVisibleSkip,
                child: Positioned(
                  top: 16.h,
                  right: 16.w,
                  child: const SkipButton(),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 24.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: titleWidget,
        ),
        SizedBox(height: 24.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 36.w),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.semiBold13Subtitle,
          ),
        ),
      ],
    );
  }
}
