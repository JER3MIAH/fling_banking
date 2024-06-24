import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OnboardingFirstView extends HookWidget {
  const OnboardingFirstView({super.key});

  @override
  Widget build(BuildContext context) {
    final svgOpacity = useState<double>(0);
    final txtOpacity = useState<double>(0);
    final buttonOpacity = useState<double>(0);
    const oneSec = Duration(seconds: 1);

    void startAnimation() async {
      await Future.delayed(const Duration(milliseconds: 500));
      svgOpacity.value = 1.0;
      await Future.delayed(const Duration(milliseconds: 1500));
      txtOpacity.value = 1.0;
      await Future.delayed(const Duration(milliseconds: 1500));
      buttonOpacity.value = 1.0;
    }

    useEffect(() {
      startAnimation();
      return null;
    }, const []);
    return Scaffold(
      backgroundColor: appColors.blackBg,
      body: Stack(
        children: [
          Image.asset(splashBg),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AnimatedOpacity(
                  opacity: svgOpacity.value,
                  duration: oneSec,
                  child: SvgAsset(assetName: flingTextLogo),
                ),
                AnimatedOpacity(
                  opacity: txtOpacity.value,
                  duration: oneSec,
                  child: GradientText(
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
                ),
                hBox50,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AnimatedOpacity(
                      opacity: buttonOpacity.value,
                      duration: oneSec,
                      child: BounceInAnimation(
                        onTap: () {
                          AppNavigator.pushNamed(
                              OnboardingRoutes.onboarding2first);
                        },
                        child: proceedWidget(),
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

Widget proceedWidget({double fontSize = 16}) {
  return Container(
    color: Colors.transparent,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Proceed',
          style: TextStyle(
              fontSize: fontSize,
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
  );
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
