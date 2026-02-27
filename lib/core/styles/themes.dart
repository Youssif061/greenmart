import 'package:flutter/material.dart';
import 'package:greenmart/core/constant/AppFont.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/fonts.dart';

class Appthem {
  static ThemeData get light => ThemeData(
    scaffoldBackgroundColor: AppColors.whitecolor,
    fontFamily: AppFont.poppins,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primarycolor,
      onSurface: AppColors.blackcolor,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppColors.primarycolor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.whitecolor,
      selectedItemColor: AppColors.primarycolor,
      unselectedItemColor: AppColors.graykcolor,
      selectedLabelStyle: TextStyles.Caption.copyWith(
        fontWeight: FontWeight.w500,
        height: 1.8,
      ),
      unselectedLabelStyle: TextStyles.Caption.copyWith(
        fontWeight: FontWeight.w500,
        height: 1.8,
      ),
    ),
  );
}
