import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme = ThemeData.dark().copyWith(
  textTheme: GoogleFonts.poppinsTextTheme().copyWith().apply(
        bodyColor: appColors.white,
      ),
);
