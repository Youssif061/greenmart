import 'package:flutter/material.dart';
import 'package:greenmart/core/function/Navigation.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/fonts.dart';
import 'package:greenmart/core/widget/main_botton.dart';
import 'package:greenmart/features/auth/paged/Number.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            PushReplacement(context, Number());
          },
          icon: Icon(Icons.arrow_back_ios),
        ),

        backgroundColor: AppColors.backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 1),

              Text(
                "Enter verification code",
                style: TextStyles.Title.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.blackNormal,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "We have sent SMS to: 01xxxxxxxxx",
                style: TextStyles.Caption,
              ),
              SizedBox(height: 32),
              Center(
                child: Pinput(
                  keyboardType: TextInputType.number,
                  length: 5,
                  onCompleted: (value) {
                    print(value);
                  },
                ),
              ),
              SizedBox(height: 32),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Resend OTP",
                      style: TextStyles.Caption.copyWith(
                        color: AppColors.lightOrangeColor,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "change phone number",
                    style: TextStyles.Caption.copyWith(
                      color: AppColors.blackNormal,
                    ),
                  ),
                  SizedBox(height: 27),
                ],
              ),
              SizedBox(height: 32),

              MainBotton(text: "Confirm", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
