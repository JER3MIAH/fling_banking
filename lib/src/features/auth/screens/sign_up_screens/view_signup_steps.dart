import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class ViewSignUpStepsScreen extends StatelessWidget {
  const ViewSignUpStepsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppColumn(
        children: [
          BackAndTitleWidget(
            otherWidget: SvgAsset(
              assetName: flingTextLogo,
              height: 30.27,
            ),
          ),
          hBox15,
          const AppText(
            text: 'Savings Account',
            isCentered: true,
          ),
          const AppText(
            text: 'In these few steps, your account will be ready',
            isCentered: true,
          ),
        ],
      ),
    );
  }
}
