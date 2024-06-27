import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class InvestmentScreen extends StatelessWidget {
  const InvestmentScreen({super.key});

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
            text: 'Investment',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: AppColumn(
        children: [
          Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              text:
                  'Different types of investment programs curated according to your ',
              style: const TextStyle(fontWeight: FontWeight.w500, height: 1.5),
              children: [
                TextSpan(
                  text: 'NEEDS',
                  style: TextStyle(color: appColors.green),
                ),
              ],
            ),
          ),
          hBox15,
          Container(
            height: 40,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: appColors.black,
              border: Border.all(
                color: appColors.white.withOpacity(.17),
              ),
            ),
            child: const AppText(
              text: 'Total balance: N150,000',
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          hBox15,
          const AppText(
            text: 'Recommendations',
            fontSize: 16,
            fontWeight: FontWeight.w600,
            isStartAligned: true,
          ),
          hBox10,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildRecommendation('Student Roi'),
                ...List.generate(
                    5, (index) => _buildRecommendation('Medics & Health'))
              ],
            ),
          ),
          hBox30,
          AppTile(
            title: 'Fixed Deposit',
            onTap: () {},
          ),
          AppTile(
            title: 'Government Bonds',
            onTap: () {},
          ),
          AppTile(
            title: 'Stocks',
            onTap: () {},
          ),
          AppTile(
            title: 'Exchange Traded Funds(EFTs)',
            onTap: () {},
          ),
          AppTile(
            title: 'Mutual Funds',
            onTap: () {},
          ),
          hBox30,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildRetirementCont(),
              wBox15,
              _buildRetirementCont(),
            ],
          ),
          hBox20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildRetirementCont(),
              wBox15,
              _buildRetirementCont(),
            ],
          ),
          hBox30,
        ],
      ),
    );
  }

  Widget _buildRetirementCont() {
    return Expanded(
      child: Container(
        // width: 155,
        height: 128,
        decoration: BoxDecoration(
          color: appColors.elevatedSurface,
          borderRadius: BorderRadius.circular(14.62),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgAsset(assetName: toolsIcon),
            hBox5,
            const Text(
              'Retirement\nCalculator',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecommendation(String title) {
    return Container(
      width: 146,
      height: 88,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: appColors.elevatedSurface,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(
            text: title,
            fontWeight: FontWeight.w500,
            isCentered: true,
          ),
          hBox10,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: '12% p.a',
                color: appColors.green,
                fontSize: 12,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: appColors.green,
                size: 13,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
