import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constant/AppImage.dart';
import 'package:greenmart/core/function/Navigation.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/fonts.dart';
import 'package:greenmart/core/widget/custom_text_form_field.dart';
import 'package:greenmart/core/widget/custom_text_form_field_password.dart';
import 'package:greenmart/core/widget/main_botton.dart';
import 'package:greenmart/features/auth/paged/SingUp_Screen.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  final Formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: SingleChildScrollView(
          child: Form(
            key: Formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: SvgPicture.asset(AppImage.groupSVG)),
                SizedBox(height: 40),
                Text('Login', style: TextStyles.Title),
                SizedBox(height: 16),

                Text(
                  'Enter your email and password',
                  style: TextStyles.body.copyWith(color: AppColors.graykcolor),
                ),
                SizedBox(height: 40),

                Text(
                  'Email',
                  style: TextStyles.body.copyWith(
                    color: AppColors.graykcolor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),

                CustomTextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Your Email';
                    } else if (!value.contains("@") &&
                        !value.contains(".com")) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  Text_Styles: AppColors.graykcolor,
                  fill_color: AppColors.Like_whitecolor,
                  text: 'example@gmail.com',
                ),
                SizedBox(height: 16),
                Text(
                  'Password',
                  style: TextStyles.body.copyWith(
                    color: AppColors.graykcolor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                CustomTextFormFieldPassword(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Your Password';
                    }
                    return null;
                  },
                  Text_Styles: AppColors.graykcolor,
                  fill_color: AppColors.Like_whitecolor,

                  text: '***********',
                ),
                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyles.Caption.copyWith(
                          color: AppColors.primarycolor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                MainBotton(
                  text: "Login",
                  onPressed: () {
                    if (Formkey.currentState!.validate()) {}
                  },
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyles.Caption.copyWith(
                        color: AppColors.graykcolor,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        PushReplacement(context, SingUp_Screen());
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyles.Caption.copyWith(
                          color: AppColors.primarycolor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
