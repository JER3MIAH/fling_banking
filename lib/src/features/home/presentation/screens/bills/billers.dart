import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BillersScreen extends HookWidget {
  const BillersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sourceAccountController =
        useTextEditingController(text: '6712345093');
    final availableBalanceController =
        useTextEditingController(text: '147,000');
    final categoryController =
        useTextEditingController(text: 'DSTV Portal Payment');
    final planController =
        useTextEditingController(text: 'DSTV Portal Payment');
    final nameController = useTextEditingController(text: 'Orimolade Kindness');
    final amountController = useTextEditingController(text: '4500');
    final cardNumberController = useTextEditingController(text: '0012345768');
    final saveToB = useState<bool>(false);

    return Scaffold(
      body: AppColumn(
        children: [
          const BackAndTitleWidget(
            title: 'Billers',
          ),
          AppText(
            text: 'Transfer to a biller',
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
          hBox15,
          AppTextField(
            controller: categoryController,
            labelText: 'Category',
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
            controller: planController,
            labelText: 'Select Plan',
            readOnly: true,
          ),
          hBox15,
          AppTextField(
            controller: cardNumberController,
            labelText: 'DSTV Smart Card Number',
          ),
          hBox15,
          AppTextField(
            controller: nameController,
            labelText: 'Name on Smart Card',
          ),
          hBox15,
          AppTextField(
            controller: amountController,
            labelText: 'Amount',
            keyboardType: TextInputType.number,
          ),
          hBox15,
          _buildSaveBeneficiary('Save Beneficiary', value: saveToB),
          hBox30,
          AppButton(
            title: 'Confirm Transfer',
            onTap: () {
              AppNavigator.pushNamed(HomeRoutes.confirmTransfer);
            },
          ),
        ],
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
