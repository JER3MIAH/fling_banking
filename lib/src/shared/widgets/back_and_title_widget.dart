import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BackAndTitleWidget extends StatelessWidget {
  final VoidCallback? onBackPressed;
  final String title;
  final Widget? otherWidget;
  const BackAndTitleWidget({
    super.key,
    this.onBackPressed,
    this.title = '',
    this.otherWidget,
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
            ),
        //? Dummy widget to help center the text
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
