import 'package:fling_banking/src/features/auth/data/data.dart';
import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../widgets/widgets.dart';
import 'signup_screens.dart';

class SignupStep4Screen extends HookWidget {
  const SignupStep4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppColumn(
        children: [
          const BackAndTitleWidget(
            title: 'Step 4: Identification Section',
             isTitleLarge: false,
          ),
          hBox30,
          buildProgressWIdget(SignUpProgress.last),
          hBox25,
          const Text(
            'Upload a clear Image of Valid ID document',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          hBox10,
          const UploadImageContainer(isImage: false),
          const Text(
            'Upload a clear image of a recent passport-sized photograph.',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          hBox10,
          const UploadImageContainer(),
          const Text(
            'Provide an electronic signature (drawn or typed)',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          hBox10,
          const UploadImageContainer(),
          hBox20,
          AppButton(
            title: 'See account',
            onTap: () {
              AppNavigator.pushNamed(HomeRoutes.home);
            },
          ),
          hBox30,
        ],
      ),
    );
  }
}
