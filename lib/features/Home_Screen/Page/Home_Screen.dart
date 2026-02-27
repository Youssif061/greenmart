import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenmart/core/constant/AppImage.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/fonts.dart';
import 'package:greenmart/core/widget/custom_svg_picture.dart';
import 'package:greenmart/core/widget/custom_text_form_field.dart';
import 'package:greenmart/core/widget/main_botton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        toolbarHeight: 90,
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: CustomSvgPicture(
            path: AppImage.logoSvG,
            color: AppColors.primarycolor,
            height: 44,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            CustomTextFormField(
              text: 'Search Store',
              Styles: TextStyles.body,
              Text_Styles: AppColors.graykcolor,
              prefixIcon: Icon(Icons.search),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Exclusive Offer', style: TextStyles.Title),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text('See all', style: TextStyles.body),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
