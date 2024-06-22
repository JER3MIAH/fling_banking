import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppInkWell(
      onTap: () {
        AppNavigator.popRoute();
      },
      child: const Center(
        child: Icon(Icons.arrow_back_ios, size: 18),
      ),
    );
  }
}
