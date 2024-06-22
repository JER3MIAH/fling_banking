import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/features/onboarding/presentation/screens/onboarding_first_view.dart';
import 'package:fling_banking/src/features/onboarding/presentation/screens/onboarding_screens.dart';
import 'package:get/get.dart';

List<GetPage> onboardingPages = [
  GetPage(
    name: OnboardingRoutes.onboarding1,
    page: () => const OnboardingFirstView(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: OnboardingRoutes.onboarding2first,
    page: () => const OnboardingScreenFirst(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: OnboardingRoutes.onboarding2second,
    page: () => const OnboardingScreenSecond(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: OnboardingRoutes.onboarding2third,
    page: () => const OnboardingScreenThird(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 500),
  ),
];
