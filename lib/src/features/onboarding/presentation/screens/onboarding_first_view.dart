import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class OnboardingFirstView extends StatelessWidget {
  const OnboardingFirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColors.black,
      body: Stack(
        children: [
          Image.asset(splashBg),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgAsset(assetName: flingTextLogo),
              Text(
                'Banking at the Speed of Life',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: appColors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
