import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/constant/AppImage.dart';
import 'package:greenmart/core/function/Navigation.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/fonts.dart';
import 'package:greenmart/core/widget/custom_text_form_field.dart';
import 'package:greenmart/core/widget/custom_text_form_field_password.dart';
import 'package:greenmart/core/widget/main_botton.dart';
import 'package:greenmart/features/auth/paged/Number.dart';
import 'package:greenmart/features/auth/paged/login_screen.dart';

class SingUp_Screen extends StatefulWidget {
  const SingUp_Screen({super.key});

  @override
  State<SingUp_Screen> createState() => _SingUp_ScreenState();
}

class _SingUp_ScreenState extends State<SingUp_Screen> {
  final fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: SingleChildScrollView(
          child: Form(
            key: fromKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: SvgPicture.asset(AppImage.groupSVG)),
                Text('Sing Up', style: TextStyles.Title),
                SizedBox(height: 13),
                Text(
                  'Enter your credentials to continue',
                  style: TextStyles.body.copyWith(color: Colors.grey),
                ),
                SizedBox(height: 40),
                Text(
                  'Name',
                  style: TextStyles.body.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyles.body.copyWith(color: Colors.grey),
                    hintText: "Enter your name",
                    fillColor: AppColors.Like_whitecolor,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Email',
                  style: TextStyles.body.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                CustomTextFormField(
                  text: 'example@gmail.com',
                  Text_Styles: AppColors.graykcolor,
                  fill_color: AppColors.Like_whitecolor,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Your Email';
                    } else if (!value.contains("@") &&
                        !value.contains(".com")) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 15),
                Text(
                  'Password',
                  style: TextStyles.body.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                CustomTextFormFieldPassword(
                  text: '*************',
                  Text_Styles: AppColors.graykcolor,
                  fill_color: AppColors.Like_whitecolor,
                  validator: (Value) {
                    if (Value!.isEmpty) {
                      return 'Please enter Your Password';
                    } else if (Value.length < 8) {
                      return 'Password must be at least 8 characters';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 50),

                MainBotton(
                  text: 'Sign Up',
                  onPressed: () {
                    if (fromKey.currentState!.validate()) {
                      return "Valid";
                    }
                    PushReplacement(context, Number());
                  },
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: TextStyles.body.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        PushReplacement(context, Login_Screen());
                      },
                      child: Text(
                        'Login',
                        style: TextStyles.body.copyWith(
                          color: AppColors.primarycolor,
                          fontWeight: FontWeight.w600,
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
