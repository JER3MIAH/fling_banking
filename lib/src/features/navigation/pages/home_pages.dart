import 'package:fling_banking/src/features/home/presentation/screens/cards_screen.dart';
import 'package:fling_banking/src/features/home/presentation/screens/home_screen.dart';
import 'package:fling_banking/src/features/home/presentation/screens/transfer/confirm_transfer_screen.dart';
import 'package:fling_banking/src/features/home/presentation/screens/transfer/transfer_processing_screen.dart';
import 'package:fling_banking/src/features/home/presentation/screens/transfer/transfer_screen.dart';
import 'package:fling_banking/src/features/home/presentation/screens/transfer/transfer_success_screen.dart';
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
  GetPage(
    name: HomeRoutes.transfer,
    page: () => const TransferScreen(),
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: HomeRoutes.transferProcessing,
    page: () => const TransferProcessingScreen(),
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: HomeRoutes.confirmTransfer,
    page: () => const ConfirmTransferScreen(),
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: HomeRoutes.transferSuccessful,
    page: () => const TransferSuccessfulScreen(),
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 500),
  ),
];
