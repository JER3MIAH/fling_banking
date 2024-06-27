import 'package:fling_banking/src/features/home/data/data.dart';
import 'package:fling_banking/src/features/home/data/models/biller.dart';
import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AirtimeScreen extends HookWidget {
  const AirtimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sourceAccountController =
        useTextEditingController(text: '6712345093');
    final availableBalanceController =
        useTextEditingController(text: '147,000');
    final numberController = useTextEditingController();
    final productTypeController = useTextEditingController(text: 'Airtime');
    final amountController = useTextEditingController(text: '4500');
    final saveToB = useState<bool>(false);

    final selectedProvider = useState<String>('MTN');

    return Scaffold(
      body: AppColumn(
        children: [
          const BackAndTitleWidget(
            title: 'Airtime Recharge',
          ),
          AppText(
            text: 'Service Provider',
            color: appColors.grey,
          ),
          hBox30,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              billerList.length,
              (index) {
                final biller = billerList[index];
                return _buildBiller(
                  biller: biller,
                  isSelected: biller.title == selectedProvider.value,
                  onTap: () {
                    selectedProvider.value = biller.title;
                  },
                );
              },
            ),
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
            controller: productTypeController,
            labelText: 'Product Type',
            readOnly: true,
          ),
          hBox15,
          AppTextField(
            controller: numberController,
            labelText: 'Number',
            keyboardType: TextInputType.number,
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

  Widget _buildBiller({
    required Biller biller,
    required VoidCallback onTap,
    bool isSelected = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 69.75,
        height: 104,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? appColors.green : Colors.transparent,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgAsset(assetName: biller.logo),
            AppText(
              text: biller.title,
              fontSize: 12,
            ),
          ],
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
