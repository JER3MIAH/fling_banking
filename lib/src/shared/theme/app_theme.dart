import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

final baseTheme = ThemeData.dark();

ThemeData appTheme = baseTheme.copyWith(
  scaffoldBackgroundColor: appColors.blackBg,
  textTheme: baseTheme.textTheme.copyWith().apply(
        fontFamily: 'Poppings',
        bodyColor: appColors.white,
      ),
);
