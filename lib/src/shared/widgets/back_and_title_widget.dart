import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BackAndTitleWidget extends StatelessWidget {
  final VoidCallback? onBackPressed;
  final String title;
  final Widget? otherWidget;
  final Widget? trailingWidget;
  const BackAndTitleWidget({
    super.key,
    this.onBackPressed,
    this.title = '',
    this.otherWidget,
    this.trailingWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppBackButton(
            onTap: onBackPressed ??
                () {
                  AppNavigator.popRoute();
                }),
        otherWidget ??
            AppText(
              text: title,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
        //? Dummy widget to help center the text
        trailingWidget ??
            Visibility(
              visible: false,
              maintainAnimation: true,
              maintainState: true,
              maintainSize: true,
              child: AppBackButton(onTap: () {}),
            ),
      ],
    );
  }
}
