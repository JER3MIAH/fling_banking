import 'package:fling_banking/src/features/auth/data/data.dart';
import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'signup_screens.dart';

class SignupStep2Screen extends HookWidget {
  const SignupStep2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final incomeController = useTextEditingController();
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();

    return Scaffold(
      body: AppColumn(
        children: [
          const BackAndTitleWidget(
            title: 'Step 2: Employment Information',
          ),
          hBox30,
          buildProgressWIdget(SignUpProgress.secong),
          hBox30,
          const AppSelectionTile(title: 'Employment Status'),
          hBox15,
          const AppSelectionTile(title: 'Occupation'),
          hBox15,
          AppTextField(
            controller: firstNameController,
            labelText: 'First Name',
          ),
          hBox15,
          AppTextField(
            controller: lastNameController,
            labelText: 'Last Name',
          ),
          hBox15,
          Row(
            children: [
              const SizedBox(
                width: 84,
                child: AppSelectionTile(title: 'NG'),
              ),
              wBox10,
              Expanded(
                child: AppTextField(
                    controller: incomeController, labelText: 'Monthly Income'),
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
            AppNavigator.pushNamed(AuthRoutes.signUpStep3);
          },
        ),
      ),
    );
  }
}
