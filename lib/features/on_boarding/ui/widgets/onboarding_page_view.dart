import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/app_colors.dart';
import 'package:fruits_hub/core/constants/app_images.dart';
import 'package:fruits_hub/core/constants/app_text_styles.dart';
import 'package:fruits_hub/features/on_boarding/ui/widgets/onboarding_page_item.dart';

class OnBoardingPageView extends StatelessWidget {
  final PageController pageController;
  final ValueChanged<int> onPageChanged;

  const OnBoardingPageView({
    super.key,
    required this.pageController,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      onPageChanged: onPageChanged,
      children: [
        OnBoardingPageItem(
          imagePath: AppImages.pageViewItem1Image,
          backgroundImagePath: AppImages.pageViewItem1BackgroundImage,
          isVisibleSkip: true,
          titleWidget: Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: 'مرحبًا بك في ',
                  style: AppTextStyles.bold23Title,
                ),
                TextSpan(
                  text: 'Fruit',
                  style: AppTextStyles.bold23Title.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                TextSpan(
                  text: 'HUB',
                  style: AppTextStyles.bold23Title.copyWith(
                    color: AppColors.secondaryColor,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
        ),
        OnBoardingPageItem(
          imagePath: AppImages.pageViewItem2Image,
          backgroundImagePath: AppImages.pageViewItem2BackgroundImage,
          isVisibleSkip: false,
          titleWidget: const Text(
            'ابحث وتسوق',
            textAlign: TextAlign.center,
            style: AppTextStyles.bold23Title,
          ),
          subtitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
        ),
      ],
    );
  }
}
