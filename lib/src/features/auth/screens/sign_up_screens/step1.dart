import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class SignupStep1Screen extends StatelessWidget {
  const SignupStep1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AppColumn(
        children: [
          BackAndTitleWidget(
            title: 'Step 1: Personal Information',
          ),
          hBox10,
        ],
      ),
    );
  }
}
