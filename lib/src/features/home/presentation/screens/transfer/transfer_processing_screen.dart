import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TransferProcessingScreen extends HookWidget {
  const TransferProcessingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sourceAccountController =
        useTextEditingController(text: '6712345093');
    final availableBalanceController =
        useTextEditingController(text: '147,000');
    final nameController = useTextEditingController(text: 'Jeremiah');
    final amountController = useTextEditingController(text: '1500000');
    final narrationController = useTextEditingController(text: 'Hmmm...');
    final saveToB = useState<bool>(false);

    return Scaffold(
      body: AppColumn(
        children: [
          const BackAndTitleWidget(
            title: 'Transfer',
          ),
          AppText(
            text: 'Transfer to Fling Bank Account',
            color: appColors.grey,
          ),
          hBox30,
          AppTextField(
            controller: sourceAccountController,
            labelText: 'Source Account',
            readOnly: true,
            suffixIcon: Icon(
              Icons.keyboard_arrow_down,
              color: appColors.white,
            ),
          ),
          hBox15,
          AppTextField(
            controller: availableBalanceController,
            labelText: 'Available Balance',
            readOnly: true,
          ),
          hBox10,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppText(
                text: 'Choose Saved Beneficiary',
                color: appColors.green,
              ),
              Icon(
                Icons.keyboard_arrow_right,
                size: 18,
                color: appColors.green,
              ),
            ],
          ),
          hBox15,
          AppTextField(
            controller: nameController,
            labelText: 'Recipient Name',
          ),
          hBox15,
          AppTextField(
            controller: amountController,
            labelText: 'Amount',
            keyboardType: TextInputType.number,
          ),
          hBox15,
          AppTextField(
            controller: narrationController,
            labelText: 'Naration',
          ),
          hBox15,
          _buildSaveBeneficiary('Save Beneficiary', value: saveToB),
        ],
      ),
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 15).copyWith(bottom: 30),
        child: AppButton(
          title: 'Confirm Transfer',
          onTap: () {
            AppNavigator.pushNamed(HomeRoutes.confirmTransfer);
          },
        ),
      ),
    );
  }

  Widget _buildSaveBeneficiary(
    String title, {
    required ValueNotifier value,
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
            text: title,
            fontSize: 16,
          ),
          const Spacer(),
          SizedBox(
            height: 40,
            child: FittedBox(
              child: Switch(
                activeColor: appColors.green,
                value: value.value,
                onChanged: (_) {
                  value.value = !value.value;
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
