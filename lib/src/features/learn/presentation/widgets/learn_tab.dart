import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class LearnTab extends StatelessWidget {
  const LearnTab({super.key});

  @override
  Widget build(BuildContext context) {
    final learnList = [
      'Budgeting',
      'Savings',
      'Investing',
      'Insurance',
      'Debt Management',
      'Bank Account'
    ];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                hBox15,
                SvgAsset(assetName: quickLearn),
                hBox20,
                const AppText(
                  text: 'Choose topic to start',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  isStartAligned: true,
                ),
                hBox20,
                Wrap(
                  children: [
                    ...learnList.map((e) => _buildTopic(e)),
                  ],
                ),
                hBox10,
              ],
            ),
          ),
          Container(
            height: 219,
            decoration: BoxDecoration(
              color: appColors.elevatedSurface,
            ),
          ),
          _endArrowTitle('Next Topic'),
          const AppText(
            text: 'Videos',
            fontWeight: FontWeight.w600,
            fontSize: 16,
            isCentered: true,
          ),
          hBox10,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildVideo('Type of Accounts'),
                    _buildVideo('Budgeting: The good'),
                  ],
                ),
                _endArrowTitle('Proceed'),
                const AppText(
                  text: 'Featured Article',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  isCentered: true,
                ),
                hBox10,
                Container(
                  height: 115,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: appColors.elevatedSurface,
                    border: Border.all(color: appColors.green, width: .5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const AppText(
                        text:
                            'Solution to the ban of Naira card for\nInternational shopping',
                        textAlign: TextAlign.center,
                      ),
                      hBox10,
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: '5 mins ',
                              style: TextStyle(color: appColors.green),
                              children: [
                                TextSpan(
                                  text: 'read ',
                                  style: TextStyle(color: appColors.white),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: appColors.white,
                            size: 13,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                _endArrowTitle('See all'),
                hBox10,
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVideo(String text) {
    return Container(
      height: 120,
      width: 155,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: appColors.elevatedSurface,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 75,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: appColors.grey,
            ),
          ),
          AppText(
            text: text,
            fontSize: 12,
          ),
        ],
      ),
    );
  }

  Widget _endArrowTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AppText(
            text: title,
            color: appColors.grey,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          wBox3,
          Icon(
            Icons.arrow_forward,
            color: appColors.grey,
            size: 18,
          ),
        ],
      ),
    );
  }

  Container _buildTopic(String topic) {
    return Container(
      height: 38,
      margin: const EdgeInsets.only(right: 25, bottom: 15),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: appColors.elevatedSurface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: AppText(
        text: topic,
      ),
    );
  }
}
