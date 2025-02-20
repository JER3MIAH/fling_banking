import 'package:fling_banking/src/shared/shared.dart';
import 'package:fling_banking/src/shared/theme/colors.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final double? height;
  final Color? color;
  final bool isStartAligned, isCentered;
  final TextDecoration? decoration;
  final TextAlign? textAlign;
  const AppText({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
    this.height,
    this.color,
    this.isStartAligned = false,
    this.isCentered = false,
    this.decoration,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize:
          isStartAligned || isCentered ? MainAxisSize.max : MainAxisSize.min,
      mainAxisAlignment:
          isCentered ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        Text(
          text,
          textAlign: textAlign,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color ?? appColors.white,
            height: height,
            decoration: decoration,
            overflow: TextOverflow.ellipsis,
            
          ),
        ),
      ],
    );
  }
}
