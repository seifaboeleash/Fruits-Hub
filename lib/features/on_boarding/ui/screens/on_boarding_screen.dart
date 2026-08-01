import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/constants/constants.dart';
import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hub/features/on_boarding/logic/on_boarding_cubit.dart';
import 'package:fruits_hub/features/on_boarding/logic/on_boarding_state.dart';
import 'package:fruits_hub/features/on_boarding/ui/widgets/get_started_button.dart';
import 'package:fruits_hub/features/on_boarding/ui/widgets/onboarding_page_view.dart';
import 'package:fruits_hub/features/on_boarding/ui/widgets/page_indicator.dart';
import 'package:fruits_hub/core/constants/strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: const _OnBoardingScreenBody(),
    );
  }
}

class _OnBoardingScreenBody extends StatefulWidget {
  const _OnBoardingScreenBody();

  @override
  State<_OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<_OnBoardingScreenBody> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: OnBoardingPageView(
                pageController: _pageController,
                onPageChanged: (index) {
                  context.read<OnBoardingCubit>().changePage(index);
                },
              ),
            ),
            BlocBuilder<OnBoardingCubit, OnBoardingState>(
              builder: (context, state) {
                final cubit = context.read<OnBoardingCubit>();
                return OnBoardingPageIndicator(
                  currentPageIndex: cubit.currentPageIndex,
                );
              },
            ),
            const SizedBox(height: 29),
            BlocBuilder<OnBoardingCubit, OnBoardingState>(
              builder: (context, state) {
                final cubit = context.read<OnBoardingCubit>();
                final isLastPage = cubit.currentPageIndex == 1;
                return Visibility(
                  visible: isLastPage,
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: GetStartedButton(
                      onPressed: () {
                        Prefs.setBool(kIsOnBoardingViewed, true);
                        Navigator.pushReplacementNamed(
                          context,
                          loginScreen,
                        );
                      },
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 43),
          ],
        ),
      ),
    );
  }
}