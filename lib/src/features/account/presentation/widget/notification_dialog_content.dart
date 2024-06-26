import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class NotificationDialogContent extends StatelessWidget {
  const NotificationDialogContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                  onTap: () {
                    AppNavigator.popDialog();
                  },
                  child: const Icon(Icons.close)),
            ],
          ),
          hBox10,
          const AppText(
            text: 'Updates you missed!',
            fontSize: 20,
            fontWeight: FontWeight.w500,
            isStartAligned: true,
          ),
          hBox15,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgAsset(assetName: notifOutline),
              wBox10,
              Expanded(
                child: Text(
                  'Introducing  Fling’s virtual dollar card which allows users to make international pa...',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: appColors.white,
                  ),
                ),
              ),
            ],
          ),
          hBox10,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgAsset(assetName: notifOutline),
              wBox10,
              Expanded(
                child: Text(
                  'Solution to the ban of Naira card for International shopping',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: appColors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
