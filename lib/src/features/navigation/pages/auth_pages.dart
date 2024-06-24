import 'package:fling_banking/src/features/auth/screens/screens.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:get/get.dart';

List<GetPage> authPages = [
  GetPage(
    name: AuthRoutes.login,
    page: () => const LoginScreen(),
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: AuthRoutes.selectAccountTpe,
    page: () => const SelectAccountTypeScreen(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: AuthRoutes.viewSignUpSteps,
    page: () => const ViewSignUpStepsScreen(),
    transition: Transition.rightToLeftWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: AuthRoutes.signUpStep1,
    page: () => const SignupStep1Screen(),
    transition: Transition.rightToLeftWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: AuthRoutes.signUpStep2,
    page: () => const SignupStep2Screen(),
    transition: Transition.rightToLeftWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: AuthRoutes.signUpStep3,
    page: () => const SignupStep3Screen(),
    transition: Transition.rightToLeftWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: AuthRoutes.signUpStep4,
    page: () => const SignupStep4Screen(),
    transition: Transition.rightToLeftWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
];
