import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return AppAnimatedColumn(
      children: [
        _buildTransaction(
          title: 'Netflix',
          icon: netflix,
          day: 'Today',
          amount: 'NGN 3,500',
          debit: true,
          description: 'Subscription',
        ),
        _buildTransaction(
          title: 'Paypal',
          icon: paypal,
          day: '05.04.23',
          amount: 'NGN 12,000',
          debit: false,
          description: 'Recieved Payment',
        ),
        _buildTransaction(
          title: 'Paypal',
          icon: paypal,
          day: '03.04.23',
          amount: 'NGN 4,500',
          debit: true,
          description: 'Transfer',
        ),
        _buildTransaction(
          title: 'Udemy',
          icon: udemy,
          day: '05.04.23',
          amount: 'NGN 6,800',
          debit: true,
          description: 'Subscription',
        ),
      ],
    );
  }

  Widget _buildTransaction({
    required String title,
    required String icon,
    required String day,
    required String amount,
    required bool debit,
    required String description,
  }) {
    return Container(
      height: 49,
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgAsset(assetName: icon),
          wBox15,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: title,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              AppText(text: day),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: '${debit ? '-' : '+'}$amount',
                fontWeight: FontWeight.w600,
                color: debit ? appColors.error : appColors.green,
              ),
              AppText(text: description),
            ],
          ),
        ],
      ),
    );
  }
}
