import 'package:fling_banking/src/features/auth/data/data.dart';
import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'signup_screens.dart';

class SignupStep3Screen extends HookWidget {
  const SignupStep3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final numberController = useTextEditingController();
    final nextOfKinController = useTextEditingController();

    return Scaffold(
      body: AppColumn(
        children: [
          const BackAndTitleWidget(
            title: 'Step 3: Next of kin Section',
          ),
          hBox30,
          buildProgressWIdget(SignUpProgress.third),
          hBox30,
          AppTextField(
            controller: nextOfKinController,
            labelText: 'Name of next of Kin',
          ),
          hBox15,
          const AppSelectionTile(title: 'Relationship'),
          hBox15,
          Row(
            children: [
              const SizedBox(
                width: 100,
                child: AppSelectionTile(title: '+234'),
              ),
              wBox10,
              Expanded(
                child: AppTextField(
                    controller: numberController, labelText: 'Number'),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 15).copyWith(bottom: 40),
        child: AppButton(
          title: 'Next',
          onTap: () {
            AppNavigator.pushNamed(AuthRoutes.signUpStep4);
          },
        ),
      ),
    );
  }
}
