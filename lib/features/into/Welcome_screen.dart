import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart/core/constant/AppImage.dart';
import 'package:greenmart/core/function/Navigation.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/fonts.dart';
import 'package:greenmart/core/widget/main_botton.dart';
import 'package:greenmart/features/auth/paged/login_screen.dart';

class Welcome_screen extends StatelessWidget {
  const Welcome_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImage.Welcome,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 60,
            left: 30,
            right: 30,
            child: Column(
              children: [
                SvgPicture.asset(
                  AppImage.groupSVG,
                  colorFilter: ColorFilter.mode(
                    AppColors.whitecolor,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(height: 35),
                Text(
                  'Welcome \n to our store',
                  textAlign: TextAlign.center,
                  style: TextStyles.headLine.copyWith(
                    color: AppColors.whitecolor,
                  ),
                ),
                SizedBox(height: 15),

                Text(
                  'Ger your groceries in as fast as one hour',
                  style: TextStyles.body.copyWith(color: AppColors.whitecolor),
                ),
                SizedBox(height: 15),

                MainBotton(
                  text: 'Get Started',
                  onPressed: () {
                    PushReplacement(context, Login_Screen());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
