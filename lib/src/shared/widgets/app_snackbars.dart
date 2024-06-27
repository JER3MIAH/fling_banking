import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSnackBar {
  static void showSnackbar({
    required String message,
    required BuildContext context,
    Widget? icon,
    String? title,
    Color? textColor,
    Color? bgColor,
    Color? leftBarColor,
    Duration? duration,
  }) {
    Get.showSnackbar(
      GetSnackBar(
        snackPosition: SnackPosition.TOP,
        icon: icon ??
            Icon(
              Icons.warning,
              color: textColor ?? appColors.error,
            ),
        leftBarIndicatorColor: leftBarColor ?? appColors.error,
        messageText: Text(
          message,
          style: TextStyle(
            color: textColor ?? appColors.error,
            fontWeight: FontWeight.w400,
            fontSize: 13,
          ),
        ),
        isDismissible: true,
        shouldIconPulse: false,
        duration: duration ?? const Duration(seconds: 3),
        dismissDirection: DismissDirection.horizontal,
        maxWidth: MediaQuery.of(context).size.width * 0.9,
        backgroundColor: bgColor ?? appColors.elevatedSurface,
      ),
    );
  }
}
