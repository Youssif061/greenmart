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
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.all(0),
                  ),
                  onPressed: () {},
                  child: Text('See all', style: TextStyles.body),
                ),
              ],
            ),
            SizedBox(
              height: 235,
              width: double.infinity,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColors.graykcolor),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Expanded(
                          child: Center(
                            child: Image.network(
                              'https://www.vhv.rs/dpng/d/425-4254380_apples-png-image-apple-fruit-transparent-png.png',
                            ),
                          ),
                        ),

                        SizedBox(height: 20),
                        Text(
                          'Red Apple',
                          style: TextStyles.body.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8),

                        Text(
                          '1kg',
                          style: TextStyles.body.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "\$4.99",
                              style: TextStyles.body.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Spacer(),
                            FloatingActionButton.small(
                              backgroundColor: AppColors.primarycolor,
                              foregroundColor: AppColors.whitecolor,
                              onPressed: () {},
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
