import 'package:fling_banking/src/features/auth/data/data.dart';
import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignupStep1Screen extends HookWidget {
  const SignupStep1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final numberController = useTextEditingController();
    final emailController = useTextEditingController();

    return Scaffold(
      body: AppColumn(
        children: [
          const BackAndTitleWidget(
            title: 'Step 1: Personal Information',
          ),
          hBox30,
          buildProgressWIdget(SignUpProgress.first),
          hBox30,
          AppTextField(
            controller: nameController,
            labelText: 'Name',
          ),
          hBox15,
          const AppSelectionTile(title: 'Gender'),
          hBox15,
          AppSelectionTile(
            title: 'Date of birth',
            otherWidget: Padding(
              padding: const EdgeInsets.only(right: 4),
              child: SvgAsset(assetName: calendarIcon),
            ),
          ),
          hBox15,
          const AppSelectionTile(title: 'Nationality'),
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
          hBox15,
          AppTextField(
            controller: emailController,
            labelText: 'Email Address',
          ),
          hBox15,
          const AppSelectionTile(title: 'Country of residence'),
          hBox15,
          const Row(
            children: [
              Expanded(
                child: AppSelectionTile(title: 'City'),
              ),
              wBox10,
              Expanded(
                child: AppSelectionTile(title: 'State'),
              ),
            ],
          ),
          hBox45,
          AppButton(
            title: 'Next',
            onTap: () {
              AppNavigator.pushNamed(AuthRoutes.signUpStep2);
            },
          ),
        ],
      ),
    );
  }
}

Widget buildProgressWIdget(SignUpProgress signUpProgress) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        stepContainer(appColors.green),
        stepContainer(
          signUpProgress != SignUpProgress.first
              ? appColors.green
              : appColors.elevatedSurface,
        ),
        stepContainer(
          signUpProgress == SignUpProgress.third ||
                  signUpProgress == SignUpProgress.last
              ? appColors.green
              : appColors.elevatedSurface,
        ),
        stepContainer(
          signUpProgress == SignUpProgress.last
              ? appColors.green
              : appColors.elevatedSurface,
        ),
      ],
    ),
  );
}

Container stepContainer(Color color) {
  return Container(
    height: 2,
    width: 64,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(3),
    ),
  );
}
