import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class SignupStep2Screen extends StatelessWidget {
  const SignupStep2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AppColumn(
        children: [
          BackAndTitleWidget(
            title: 'Step 2: Employment Information',
          ),
          hBox10,
        ],
      ),
    );
  }
}
