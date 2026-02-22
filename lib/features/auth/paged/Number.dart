import 'package:flutter/material.dart';
import 'package:greenmart/core/function/Navigation.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/fonts.dart';
import 'package:greenmart/core/widget/custom_text_form_field.dart';
import 'package:greenmart/core/widget/main_botton.dart';
import 'package:greenmart/features/auth/paged/SingUp_Screen.dart';
import 'package:greenmart/features/auth/paged/Verification.dart';

class Number extends StatefulWidget {
  const Number({super.key});

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  final fromkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            PushReplacement(context, SingUp_Screen());
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 100),
          child: Form(
            key: fromkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Enter your mobile number', style: TextStyles.Title),
                SizedBox(height: 7),

                Text(
                  'We need to verify you. We will send you a one time verification code. ',
                  style: TextStyles.body,
                ),
                SizedBox(height: 42),
                CustomTextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Your number';
                    }
                    if (value.length != 11) {
                      return 'Number must be 11 digits';
                    }
                    return null;
                  },
                  text: '01xxxxxxxxxx',
                  fill_color: AppColors.Like_whitecolor,
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 46),
                MainBotton(
                  text: 'Next',
                  onPressed: () {
                    if (fromkey.currentState!.validate()) {
                      return "Valid";
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
