import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final dark = ThemeData.dark().copyWith();
  static final light = ThemeData.light().copyWith(
    textTheme: TextTheme(
      // headline1: TextStyle(
      //   fontSize: 96.sp,
      //   fontWeight: FontWeight.w300,
      //   letterSpacing: -1.5,
      // ),
      headline2: TextStyle(
        fontSize: 26.sp,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.inter().fontFamily,
        fontStyle: FontStyle.normal,
        color: const Color(0xff99D9D9)
      ),
      headline3: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.w500,
        fontFamily: GoogleFonts.workSans().fontFamily,
        color: const Color(0xff000000)
      ),
      headline4: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
        // letterSpacing: 0.25,
        fontFamily: GoogleFonts.inter().fontFamily,
        color: const Color(0xff161616)

      ),
      // headline5: TextStyle(
      //   fontSize: 24.sp,
      //   fontWeight: FontWeight.w400,
      // ),
      headline6: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        fontFamily: GoogleFonts.inter().fontFamily,
        height: 16.94.h,
        color: const Color(0xff161616)

      ),
      subtitle1: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: const Color(0xff161616),
        fontFamily: GoogleFonts.inter().fontFamily,
      ),
      subtitle2: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w600,
        fontFamily: GoogleFonts.workSans().fontFamily,
        color: const Color(0xff161616)
      ),
      bodyText1: TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      bodyText2: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      button: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      ),
      caption: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      ),
      overline: TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
      ),
    ),
    backgroundColor: const Color(0xffffffff),
    primaryColor: const Color(0xff002857),
    highlightColor: const Color(0xff99D9D9),
    indicatorColor: const Color(0xff0A5587),
    shadowColor: const Color(0xff333333),
    disabledColor: const Color(0xff666666),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          foregroundColor: const Color(0xff22A8B9),
          maximumSize: Size(343.w, 55.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          textStyle:
              TextStyle(color: const Color(0xffffffff), fontSize: 17.sp)),
    ),
    bottomAppBarColor: Colors.deepPurple,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.deepPurple,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
