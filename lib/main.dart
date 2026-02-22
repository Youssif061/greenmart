import 'dart:io';

import 'package:flutter/material.dart';
import 'package:greenmart/core/constant/AppFont.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/features/into/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.whitecolor,
        fontFamily: AppFont.poppins,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primarycolor,
          onSurface: AppColors.blackcolor,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: AppColors.primarycolor),
        ),
      ),
      builder: (context, child) {
        return SafeArea(
          bottom: Platform.isAndroid ? true : false,
          top: false,
          child: child ?? Container(),
        );
      },
      home: splashscreen(),
    );
  }
}
