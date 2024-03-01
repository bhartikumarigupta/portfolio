import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppTextStyles {
  static TextStyle headerTextStyle() {
    return GoogleFonts.signikaNegative(
        fontSize: 15.sp,
        fontWeight: FontWeight.w500,
        color: const Color.fromRGBO(255, 255, 255, 1));
  }

  static TextStyle monteseraStyle({required Color color}) {
    return GoogleFonts.montserrat(
        fontSize: 16.sp, fontWeight: FontWeight.w600, color: color);
  }

  static TextStyle headingStyles(
      {required Color color, required double fontSize}) {
    return GoogleFonts.rubikMoonrocks(
      fontSize: 25.sp,
      fontWeight: FontWeight.bold,
      letterSpacing: 2,
      color: color,
      // color: Colors.white
    );
  }

  static TextStyle normalstyle() {
    return GoogleFonts.signikaNegative(
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 1,
        color: Colors.white);
  }

  static TextStyle normalstyle2() {
    return GoogleFonts.notoSerifTangut(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 1,
        color: Colors.white);
  }

  static TextStyle monteseraStyle2() {
    return GoogleFonts.mochiyPopOne(
        fontSize: 19.sp,
        fontWeight: FontWeight.w600,
        letterSpacing: 1,
        color: Colors.white);
  }

  static TextStyle comfortaaStyle() {
    return GoogleFonts.comfortaa(
        fontSize: 18, fontWeight: FontWeight.w800, color: Colors.grey);
  }
}
