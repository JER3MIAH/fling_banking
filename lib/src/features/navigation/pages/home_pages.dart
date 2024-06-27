import 'package:fling_banking/src/features/home/presentation/screens/cards_screen.dart';
import 'package:fling_banking/src/features/home/presentation/screens/home_screen.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:get/get.dart';

List<GetPage> homePages = [
  GetPage(
    name: HomeRoutes.home,
    page: () => const HomeScreen(),
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: HomeRoutes.cards,
    page: () => const CardsScreen(),
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 500),
  ),
];
