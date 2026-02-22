import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart/core/constant/AppImage.dart';
import 'package:greenmart/core/function/Navigation.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/features/into/Welcome_screen.dart';

// ignore: camel_case_types
class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

// ignore: camel_case_types
class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      PushReplacement(context, const Welcome_screen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Center(child: SvgPicture.asset(AppImage.logoSvG)),
    );
  }
}
