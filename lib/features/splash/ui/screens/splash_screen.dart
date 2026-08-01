import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/constants/constants.dart';
import 'package:fruits_hub/core/constants/strings.dart';
import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _executeNavigation();
  }

  void _executeNavigation() {
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      final bool isOnBoardingViewed = Prefs.getBool(kIsOnBoardingViewed);
      if (isOnBoardingViewed) {
        Navigator.pushReplacementNamed(context, loginScreen);
      } else {
        Navigator.pushReplacementNamed(context, onBoardingScreen);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [SvgPicture.asset('assets/svgs/plant.svg')],
              ),
              SvgPicture.asset('assets/svgs/logo.svg'),
              SvgPicture.asset('assets/svgs/splash_bottom.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
