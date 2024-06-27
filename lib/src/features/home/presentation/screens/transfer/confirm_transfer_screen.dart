import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ConfirmTransferScreen extends HookWidget {
  const ConfirmTransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pinController = useTextEditingController();

    return Scaffold(
      body: AppColumn(
        children: [
          const BackAndTitleWidget(
            title: 'Transfer',
          ),
          AppText(
            text: 'Confirm Transfer',
            color: appColors.grey,
          ),
          hBox30,
          const AppText(
            text: 'Transfer To',
            isStartAligned: true,
          ),
          hBox15,
          _buildKeyValue('Name', value: 'Hassan Bello Shikirat'),
          hBox15,
          _buildKeyValue('Amount', value: '10,000'),
          hBox15,
          AppTextField(
            controller: pinController,
            labelText: 'Transaction Pin',
            keyboardType: TextInputType.number,
            isObscure: true,
          ),
          hBox50,
          hBox10,
          AppButton(
            title: 'Transfer',
            onTap: () {
              if (pinController.text.trim().isEmpty) {
                AppSnackBar.showSnackbar(
                  message: 'Enter your transaction pin',
                  context: context,
                );
              } else if (pinController.text.trim().length < 4) {
                AppSnackBar.showSnackbar(
                  message: 'A pin less than 4 digits? Seriously??',
                  context: context,
                );
              } else if (pinController.text.trim().length < 6) {
                AppSnackBar.showSnackbar(
                  message: 'Oya put at least 6 digits',
                  context: context,
                );
              } else {
                AppNavigator.pushNamed(HomeRoutes.transferSuccessful);
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildKeyValue(
    String key, {
    required String value,
  }) {
    return Container(
      width: double.infinity,
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: appColors.elevatedSurface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          AppText(
            text: '$key:',
            fontSize: 16,
          ),
          const Spacer(),
          AppText(
            text: value,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
