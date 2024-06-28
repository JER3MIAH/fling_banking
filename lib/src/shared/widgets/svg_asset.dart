import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgAsset extends StatelessWidget {
  final String assetName;
  final Color? color;
  final double? height, width;
  final EdgeInsetsGeometry padding;
  const SvgAsset({
    super.key,
    required this.assetName,
    this.color,
    this.height,
    this.width,
    this.padding = const EdgeInsets.all(0),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SvgPicture.asset(
        height: height,
        width: width,
        assetName,
        colorFilter: color == null
            ? null
            : ColorFilter.mode(
                color!,
                BlendMode.srcIn,
              ),
      ),
    );
  }
}
