import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class AppSelectionTile extends StatelessWidget {
  final String title;
  final Widget? otherWidget;
  final VoidCallback? onTap;

  const AppSelectionTile({
    super.key,
    required this.title,
    this.otherWidget,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          border: Border.all(
            color: appColors.grey,
            width: .9,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText(
              text: title,
              fontSize: 16,
              color: appColors.white.withOpacity(.7),
            ),
            otherWidget ??
                Icon(
                  Icons.keyboard_arrow_down,
                  color: appColors.white.withOpacity(.7),
                ),
          ],
        ),
      ),
    );
  }
}
