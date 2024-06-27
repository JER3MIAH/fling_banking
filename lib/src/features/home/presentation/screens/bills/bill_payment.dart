import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class BillPaymentScreen extends StatelessWidget {
  const BillPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> payments = [
      'Billers',
      'E-bills',
    ];
    List<String> billPaymentManagements = [
      'Transaction History',
      'Schedule Payment',
      'Bill Reminders',
      'Saved Beneficiaries',
    ];

    return Scaffold(
      body: AppColumn(
        children: [
          const BackAndTitleWidget(
            title: 'Bill Payment',
          ),
          hBox20,
          AppText(
            text: 'Payment',
            color: appColors.grey,
            isStartAligned: true,
          ),
          hBox10,
          ...payments.map(
            (type) => AppTile(
              title: type,
              onTap: () {
                AppNavigator.pushNamed(HomeRoutes.billers);
              },
            ),
          ),
          hBox30,
          AppText(
            text: 'Bill Payment Management',
            color: appColors.grey,
            isStartAligned: true,
          ),
          hBox10,
          ...billPaymentManagements.map(
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
