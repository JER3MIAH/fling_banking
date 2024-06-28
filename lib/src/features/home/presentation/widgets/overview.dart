import 'package:fl_chart/fl_chart.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class DashboardOverview extends StatelessWidget {
  const DashboardOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return AppAnimatedColumn(
      children: [
        Row(
          children: [
            AppText(
              text: 'Last 7 days overview',
              color: appColors.grey,
            ),
            wBox10,
            Icon(
              Icons.keyboard_arrow_down,
              color: appColors.grey,
            ),
          ],
        ),
        hBox15,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _overViewBox(topText: 'Total Transactions', bottomText: '24'),
            _overViewBox(topText: 'Total Amount', bottomText: 'NGN 50,000'),
          ],
        ),
        hBox20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _overViewBox(
                topText: 'Expense',
                bottomText: 'NGN 30,000',
                color: appColors.error.withOpacity(.3)),
            _overViewBox(
                topText: 'Income',
                bottomText: 'NGN 20,000',
                color: appColors.green.withOpacity(.3)),
          ],
        ),
        hBox20,
        const AppText(
          text: 'Graphical Overview',
          isStartAligned: true,
        ),
        hBox15,
        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 186,
                height: 186,
                child: PieChart(
                  PieChartData(
                    sections: [
                      PieChartSectionData(
                        title: 'Expense',
                        showTitle: false,
                        color: appColors.error,
                        radius: 15,
                      ),
                      PieChartSectionData(
                        title: 'Income',
                        showTitle: false,
                        color: appColors.green,
                        radius: 15,
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildGraphDetail(true),
                  hBox10,
                  _buildGraphDetail(false)
                ],
              ),
            ],
          ),
        ),
        hBox15,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 16,
              width: 16,
              child: FittedBox(
                child: Icon(Icons.arrow_upward, color: appColors.green),
              ),
            ),
            AppText(text: '40% ', color: appColors.green),
            AppText(text: 'vs last month', color: appColors.grey),
          ],
        ),
        hBox15,
      ],
    );
  }

  Row _buildGraphDetail(bool isExpense) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: isExpense ? appColors.error : appColors.green,
            shape: BoxShape.circle,
          ),
        ),
        wBox7,
        AppText(text: isExpense ? 'Expense' : 'Income'),
      ],
    );
  }

  Widget _overViewBox({
    Color? color,
    required String topText,
    required String bottomText,
  }) {
    return Container(
      height: 84,
      width: 152,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: color ?? appColors.elevatedSurface,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              topText == 'Income'
                  ? Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgAsset(assetName: income),
                    )
                  : topText == 'Expense'
                      ? Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SvgAsset(assetName: expense),
                        )
                      : const SizedBox.shrink(),
              AppText(
                text:
                    '$topText${topText == 'Income' ? '      ' : topText == 'Expense' ? '      ' : ''}',
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          AppText(
            text: bottomText,
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
