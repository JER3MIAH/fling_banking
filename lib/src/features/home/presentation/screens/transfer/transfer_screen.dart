import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> transferTypes = [
      'Transfer to Fling',
      'Transfer to other Banks',
      'Transfer to Fx Bank',
      'Transfer to Multiple Accounts',
    ];
    List<String> transferManagements = [
      'Transaction History',
      'Transfer Limit',
      'Saved Beneficiaries',
    ];

    return Scaffold(
      body: AppColumn(
        children: [
          const BackAndTitleWidget(
            title: 'Transfer',
          ),
          hBox20,
          AppText(
            text: 'Transfer Type',
            color: appColors.grey,
            isStartAligned: true,
          ),
          hBox10,
          ...transferTypes.map(
            (type) => AppTile(
              title: type,
              onTap: () {
                if (!type.endsWith('ts')) {
                  AppNavigator.pushNamed(HomeRoutes.transferProcessing);
                }
              },
            ),
          ),
          hBox30,
          AppText(
            text: 'Transfer Management',
            color: appColors.grey,
            isStartAligned: true,
          ),
          hBox10,
          ...transferManagements.map(
            (type) => AppTile(
              title: type,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
