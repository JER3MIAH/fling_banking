import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class AppCheckBox extends StatelessWidget {
  const AppCheckBox({
    super.key,
    required this.isSelected,
    this.isCircle = false,
    this.onTap,
  });
  final bool isSelected;
  final bool isCircle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 16,
            width: 16,
            padding: const EdgeInsets.all(1.4),
            margin: const EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
                color: appColors.white,
                shape: BoxShape.rectangle,
                borderRadius: isCircle
                    ? BorderRadius.circular(12)
                    : BorderRadius.circular(4),
                border: Border.all(
                  width: 0.8,
                )),
            child: Container(
              decoration: BoxDecoration(
                color: isSelected ? appColors.green : appColors.white,
                shape: BoxShape.rectangle,
                borderRadius: isCircle
                    ? BorderRadius.circular(12)
                    : BorderRadius.circular(2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
