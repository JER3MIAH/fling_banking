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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgAsset(assetName: flingTextLogo),
                GradientText(
                  'Banking at the Speed of Life',
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFF0F0F0),
                      Color(0xFF2BBA8F),
                    ],
                    begin: Alignment.center,
                    end: Alignment.bottomRight,
                  ),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: appColors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                hBox50,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BounceInAnimation(
                      onTap: () {},
                      child: Container(
                        color: Colors.transparent,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Proceed',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: appColors.white),
                            ),
                            wBox5,
                            const Icon(
                              Icons.arrow_forward,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                hBox50,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final LinearGradient gradient;

  const GradientText(
    this.text, {
    super.key,
    required this.gradient,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return gradient.createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        );
      },
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
