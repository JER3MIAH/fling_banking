import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class OnboardingScreenFirst extends StatelessWidget {
  const OnboardingScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingWidget(onbIndex: 1);
  }
}

class OnboardingScreenSecond extends StatelessWidget {
  const OnboardingScreenSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingWidget(onbIndex: 2);
  }
}

class OnboardingScreenThird extends StatelessWidget {
  const OnboardingScreenThird({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingWidget(onbIndex: 3);
  }
}

class OnboardingWidget extends StatelessWidget {
  final int onbIndex;
  const OnboardingWidget({
    super.key,
    required this.onbIndex,
  });

  @override
  Widget build(BuildContext context) {
    String value(String first, String second, String third) {
      return onbIndex == 1
          ? first
          : onbIndex == 2
              ? second
              : third;
    }

    return Scaffold(
      backgroundColor: appColors.blackBg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppBackButton(),
                ],
              ),
              hBox20,
              SvgAsset(
                assetName: value(firstOnbImage, secondOnbImage, thirdOnbImage),
              ),
              hBox30,
              Text.rich(
                TextSpan(
                  text: '${value('Swift', 'Smart', 'Ironclad')} ',
                  style: TextStyle(
                    fontSize: 31,
                    fontWeight: FontWeight.w400,
                    color: appColors.green,
                  ),
                  children: [
                    TextSpan(
                      text: value('Transaction', 'Insights', 'Security'),
                      style: TextStyle(
                        fontSize: 31,
                        fontWeight: FontWeight.w400,
                        color: appColors.white,
                      ),
                    ),
                  ],
                ),
              ),
              hBox18,
              Text(
                value(
                  'Say goodbye to waiting. Fling Banking offers lightning-fast transactions for all your financial needs',
                  'Stay in the know with our intelligent financial insights. Track your spending, investments, and savings effortlessly.',
                  'Your security is our top priority. Fling Banking utilizes the latest encryption to keep your data safe and sound.',
                ),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              hBox50,
              hBox20,
              onbIndex == 3
                  ? AppButton(
                      title: 'Get started',
                      onTap: () {},
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BounceInAnimation(
                          onTap: () {
                            // TODO: Push replace to login screen
                          },
                          child: Text(
                            'Skip',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: appColors.white.withOpacity(.7),
                            ),
                          ),
                        ),
                        BounceInAnimation(
                          onTap: () {
                            AppNavigator.pushNamed(
                              onbIndex == 1
                                  ? OnboardingRoutes.onboarding2second
                                  : OnboardingRoutes.onboarding2third,
                            );
                          },
                          child: SvgAsset(
                            assetName:
                                onbIndex == 1 ? arrowProgress1 : arrowProgress2,
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
