import 'package:fling_banking/src/features/onboarding/presentation/screens/onboarding_first_view.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class SavingsOrCurrentCont extends StatelessWidget {
  final bool isSavings;
  final VoidCallback onProceed;
  const SavingsOrCurrentCont({
    super.key,
    required this.isSavings,
    required this.onProceed,
  });

  @override
  Widget build(BuildContext context) {
    List<String> savingsList = [
      'Bvn',
      'E-signature',
      'Photograph',
      'Utility Bill',
      'Valid ID card'
    ];
    List<String> currentList = [
      'Photograph',
      'Valid ID card',
      'Bvn',
      'Utility Bill',
      'E-Signature',
      '2 Reference'
    ];
    return Container(
      height: isSavings ? 396 : 425,
      width: 295,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: appColors.elevatedSurface,
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 143,
            decoration: BoxDecoration(
              color: appColors.white.withOpacity(.5),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          hBox15,
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      text: '${isSavings ? 'Savings' : 'Current'} Account',
                      fontSize: 16,
                      isStartAligned: true,
                    ),
                    AppText(
                      text: 'Documents needed',
                      fontSize: 12,
                      // height: 2,
                      color: appColors.white.withOpacity(.7),
                      decoration: TextDecoration.underline,
                      isStartAligned: true,
                    ),
                    if (isSavings)
                      ...savingsList.map(
                        (item) => _greedDotAndText(item),
                      ),
                    if (!isSavings)
                      ...currentList.map(
                        (item) => _greedDotAndText(item),
                      ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    BounceInAnimation(
                      onTap: onProceed,
                      child: proceedWidget(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _greedDotAndText(String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 5,
          width: 5,
          decoration: BoxDecoration(
            color: appColors.green,
            shape: BoxShape.circle,
          ),
        ),
        wBox7,
        AppText(text: text),
      ],
    );
  }
}
