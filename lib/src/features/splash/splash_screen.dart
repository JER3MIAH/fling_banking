import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.delayed(
        const Duration(milliseconds: 2000),
        () {
          AppNavigator.replaceAllNamed(OnboardingRoutes.onboarding1);
        },
      );
      return null;
    }, const []);
    return Scaffold(
      backgroundColor: appColors.blackBg,
      body: Image.asset(splashBg),
    );
  }
}
