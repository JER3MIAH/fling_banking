import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class SignupStep3Screen extends StatelessWidget {
  const SignupStep3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AppColumn(
        children: [
          BackAndTitleWidget(
            title: 'Step 3: Next of kin Section',
          ),
          hBox10,
        ],
      ),
    );
  }
}
