import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class DashboardActionWidget extends StatelessWidget {
  final String text, icon;
  const DashboardActionWidget({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: appColors.elevatedSurface,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgAsset(assetName: icon),
          ),
          AppText(text: text, fontSize: 14),
        ],
      ),
    );
  }
}
