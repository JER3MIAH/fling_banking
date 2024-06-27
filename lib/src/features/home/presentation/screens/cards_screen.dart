import 'package:fling_banking/src/features/home/presentation/widgets/widgets.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CardsScreen extends HookWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final blockCard = useState<bool>(false);
    final withdrawals = useState<bool>(false);
    final cardSettings = useState<bool>(true);

    return Scaffold(
      body: AppColumn(
        children: [
          BackAndTitleWidget(
            title: 'Cards',
            trailingWidget: _buildAddButon(),
          ),
          hBox30,
          _buildCard(),
          hBox20,
          const AppText(
            text: 'Quick Actions',
            fontSize: 16,
            fontWeight: FontWeight.w600,
            isStartAligned: true,
          ),
          hBox15,
          _buildQuickAction(
            'Block Card',
            value: blockCard,
          ),
          hBox15,
          _buildQuickAction(
            'ATM Withrawals',
            value: withdrawals,
          ),
          hBox30,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _selectionTile(
                title: 'Card Settings',
                isSelected: cardSettings.value,
                onTap: () {
                  if (!cardSettings.value) {
                    cardSettings.value = true;
                  }
                },
              ),
              _selectionTile(
                title: 'Transactions',
                isSelected: !cardSettings.value,
                onTap: () {
                  if (cardSettings.value) {
                    cardSettings.value = false;
                  }
                },
              ),
            ],
          ),
          hBox20,
          cardSettings.value ? const CardSettings() : const TransactionList(),
        ],
      ),
    );
  }

  Widget _selectionTile({
    required String title,
    required VoidCallback onTap,
    bool isSelected = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        padding: EdgeInsets.only(
            right: title == 'Card Settings' ? 20 : 15, left: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(48),
          border: isSelected
              ? Border(
                  bottom: BorderSide(width: 1, color: appColors.green),
                  left: BorderSide(width: 1.5, color: appColors.green),
                )
              : null,
        ),
        child: AppText(
          text: title,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildQuickAction(
    String title, {
    required ValueNotifier value,
  }) {
    return Container(
      width: double.infinity,
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: appColors.elevatedSurface,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 28,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: appColors.blackBg,
              borderRadius: BorderRadius.circular(5),
            ),
            child: SvgAsset(assetName: cardIcon),
          ),
          wBox15,
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

  Widget _buildCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border(
          bottom: BorderSide(
            color: appColors.elevatedSurface,
            width: 7,
          ),
        ),
      ),
      child: SvgAsset(assetName: card),
    );
  }

  Widget _buildAddButon() {
    return BounceInAnimation(
      child: Container(
        width: 30,
        height: 26,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: appColors.green,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          Icons.add,
          color: appColors.white,
        ),
      ),
    );
  }
}
