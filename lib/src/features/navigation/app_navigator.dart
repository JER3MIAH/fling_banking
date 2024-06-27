import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fling_banking/src/shared/shared.dart';

class AppNavigator {
  //? use to push to a new route
  static void pushNamed(String name, {Object? args}) {
    if (Get.isDialogOpen!) {
      Get.back(); // Pop any dialogs or modals
    }
    if (Get.isBottomSheetOpen!) {
      Get.back();
    }
    Get.toNamed(name, arguments: args);
  }

  //? Use to replace the current route with a new route
  static void replaceNamed(String name, {Object? args}) {
    if (Get.isDialogOpen!) {
      Get.back();
    }
    Get.offNamed(name, arguments: args);
  }

  //? Use to replace the current route with a new route
  static void replaceAllNamed(String name, {Object? args}) {
    if (Get.isDialogOpen!) {
      Get.back();
    }
    Get.offAllNamed(name, arguments: args);
  }

  //? Use to pop the current route
  static void popRoute() {
    Get.back();
  }

  //? Use to pop until a condition is met
  static void popUntil(String name) {
    Get.until((route) => route.settings.name == name);
  }

  //? Use to pop dialog if shown
  static void popDialog() {
    if (Get.isDialogOpen!) {
      Get.back();
    }
    if (Get.isBottomSheetOpen!) {
      Get.back();
    }
  }

  //? Use to show modal bottom sheet
  static void showBottomSheet(
    Widget content, {
    double? height,
    bool enableDrag = false,
    bool isDismissible = false,
  }) {
    Get.bottomSheet(
      SizedBox(
        height: height,
        child: content,
      ),
      backgroundColor: appColors.blackBg,
      isScrollControlled: true,
      enableDrag: enableDrag,
      isDismissible: isDismissible,
    );
  }
}
