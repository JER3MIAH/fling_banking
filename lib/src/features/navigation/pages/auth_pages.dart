import 'package:fling_banking/src/features/auth/screens/login_screen.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:get/get.dart';

List<GetPage> authPages = [
  GetPage(
    name: AuthRoutes.login,
    page: () => const LoginScreen(),
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 500),
  ),
];
