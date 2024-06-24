import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class SignupStep4Screen extends StatelessWidget {
  const SignupStep4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AppColumn(
        children: [
          BackAndTitleWidget(
            title: 'Step 4: Identification Section',
          ),
          hBox10,
        ],
      ),
    );
  }
}
