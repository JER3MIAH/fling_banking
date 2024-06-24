import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

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

class LottieAsset extends StatelessWidget {
  final String assetPath;
  final double? height, width;
  const LottieAsset({
    super.key,
    required this.assetPath,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      assetPath,
      height: height,
      width: width,
    );
  }
}
