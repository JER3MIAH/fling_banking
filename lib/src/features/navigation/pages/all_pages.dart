import 'package:fling_banking/src/features/navigation/pages/onboarding_pages.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import '../nav.dart';
import 'auth_pages.dart';
import 'home_pages.dart';

class AppPages {
  static const initial = SplashRoute.splash;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: SplashRoute.splash,
      page: () => const SplashScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    ...onboardingPages,
    ...authPages,
    ...homePages,
  ];
}

