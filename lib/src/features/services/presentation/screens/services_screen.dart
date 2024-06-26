import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(54),
        child: AppBar(
          backgroundColor: appColors.blackBg,
          centerTitle: true,
          automaticallyImplyLeading: false,
          scrolledUnderElevation: 0,
          title: const AppText(
            text: 'Services',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: AppColumn(
        children: [
          _buildHeader('Spend'),
          hBox15,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildService('Bill Payment', billPayment),
              _buildService('Airtime', airtime),
              _buildService('Transfers', transfer),
            ],
          ),
          hBox15,
          _buildHeader('Manage'),
          hBox15,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildService('Card', cards),
              _buildService('Transaction History', transactionHistory),
              _buildService('Limit Transfers', limitTransfers),
            ],
          ),
          hBox15,
          _buildHeader('Grow wealth & Insights'),
          hBox15,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildService('Analytics', analytics),
              _buildService('Loan', loan),
              _buildService('Invest', invest),
            ],
          ),
          hBox15,
          _buildHeader('Financial Education'),
          hBox15,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildService('Financial resources', toolsIcon),
            ],
          ),
          hBox15,
          _buildHeader('Tools'),
          hBox15,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildService('Retirement Calculator', cards),
              _buildService('Expense Analysis', transactionHistory),
              _buildService('Currency Convertor', transfer),
            ],
          ),
          hBox20,
        ],
      ),
    );
  }

  Widget _buildHeader(String title) {
    return AppText(
      text: title,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      isStartAligned: true,
    );
  }

  Widget _buildService(String title, String icon, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        width: 104,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: appColors.elevatedSurface,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgAsset(assetName: icon),
            hBox4,
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
