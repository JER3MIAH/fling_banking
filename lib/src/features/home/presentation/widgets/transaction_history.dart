import 'package:fling_banking/src/features/home/data/data.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class DashboradTransactionHistory extends StatelessWidget {
  const DashboradTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return AppAnimatedColumn(
      children: [
        ...transactions.map(
          (transaction) => _transaction(transaction),
        ),
      ],
    );
  }

  _transaction(Transaction transaction) {
    return Container(
      height: 53,
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: appColors.elevatedSurface,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SvgAsset(
            assetName: transaction.isIncome ? moneyIn : moneyOut,
          ),
          wBox15,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: transaction.description,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              AppText(
                text: transaction.date,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              AppText(
                text:
                    '${transaction.isIncome ? '+' : '-'}NGN${transaction.amount}',
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: transaction.isIncome ? appColors.green : appColors.error,
              ),
              AppText(
                text: transaction.time,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
