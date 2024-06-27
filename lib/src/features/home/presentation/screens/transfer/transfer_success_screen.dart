import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class TransferSuccessfulScreen extends StatelessWidget {
  const TransferSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(15).copyWith(top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AppInkWell(
                  onTap: () {
                    AppNavigator.popUntil(HomeRoutes.home);
                  },
                  child: const Icon(Icons.clear),
                ),
              ],
            ),
            const Spacer(),
            SvgAsset(assetName: successIcon),
            hBox50,
            const AppText(
              text: 'Transfer Succesful!',
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
            hBox5,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                  text: 'Download Receipt',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: appColors.green,
                ),
                SvgAsset(assetName: downloadIcon)
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
