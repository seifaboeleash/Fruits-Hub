import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/constants/constants.dart';
import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hub/core/shared/custom_button.dart';
import 'package:fruits_hub/features/on_boarding/ui/widgets/onboarding_page_view.dart';
import 'package:fruits_hub/features/on_boarding/ui/widgets/page_indicator.dart';
import 'package:fruits_hub/core/constants/strings.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late final PageController pageController;
  var currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();

    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLastPage = currentPageIndex == 1;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: OnBoardingPageView(
                pageController: pageController,
              ),
            ),
            OnBoardingPageIndicator(
              currentPageIndex: currentPageIndex,
            ),
            SizedBox(height: 29.h),
            Visibility(
              visible: isLastPage,
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: CustomButton(
                   text: 'إبدأ الان',
                  onPressed: () {
                    Prefs.setBool(kIsOnBoardingViewed, true);
                    Navigator.pushReplacementNamed(
                      context,
                      loginScreen,
                    );
                  }
                ),
              ),
            ),
            SizedBox(height: 43.h),
          ],
        ),
      ),
    );
  }
}