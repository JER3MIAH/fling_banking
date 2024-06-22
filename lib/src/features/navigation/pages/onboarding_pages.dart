import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/features/onboarding/presentation/screens/onboarding_first_view.dart';
import 'package:fling_banking/src/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:get/get.dart';

List<GetPage> onboardingPages = [
  GetPage(
    name: OnboardingRoutes.onboarding1,
    page: () => const OnboardingFirstView(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: OnboardingRoutes.onboarding2,
    page: () => const OnboardingScreen(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
];
