import 'package:fling_banking/src/features/auth/widgets/savings_or_current_container.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class SelectAccountTypeScreen extends StatelessWidget {
  const SelectAccountTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppColumn(
        shouldScroll: true,
        children: [
          BackAndTitleWidget(
            otherWidget: SvgAsset(
              assetName: flingTextLogo,
              height: 30.27,
            ),
          ),
          hBox5,
          const AppText(
            text: 'Select an account type',
            fontSize: 20,
            isCentered: true,
          ),
          hBox20,
          SavingsOrCurrentCont(
            isSavings: true,
            onProceed: () {},
          ),
          SavingsOrCurrentCont(
            isSavings: false,
            onProceed: () {},
          ),
        ],
      ),
    );
  }
}
