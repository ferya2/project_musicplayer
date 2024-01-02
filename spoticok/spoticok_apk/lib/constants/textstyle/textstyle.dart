import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spoticok_apk/constants/colors/colors.dart';

class AppTextStyle {
  static TextStyle titleStyle = GoogleFonts.openSans(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: ColorsCollection.blackNeutral);
  static TextStyle appBarTitleStyle = GoogleFonts.prompt(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: ColorsCollection.textColor);
  static TextStyle textStylepw = GoogleFonts.prompt(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: ColorsCollection.textColor);
  static TextStyle textStylepwsm = GoogleFonts.prompt(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: ColorsCollection.textColor);
  static TextStyle textStylepwbtn = GoogleFonts.prompt(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: ColorsCollection.nextBtn);
}
