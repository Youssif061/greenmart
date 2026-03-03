import 'package:flutter/material.dart';
import 'package:greenmart/core/constant/AppImage.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/fonts.dart';
import 'package:greenmart/core/widget/custom_svg_picture.dart';
import 'package:greenmart/core/widget/custom_text_form_field.dart';
import 'package:greenmart/features/Home_Screen/Data/Product_modek.dart';
import 'package:greenmart/features/Home_Screen/widgets/item_icon.dart';
import 'package:greenmart/features/Home_Screen/widgets/list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CustomTextFormField(
                text: 'Search Store',
                Styles: TextStyles.body,
                Text_Styles: AppColors.graykcolor,
                prefixIcon: Icon(Icons.search),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("Exclusive Offer", style: TextStyles.Title),
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
              SizedBox(height: 10),
              List_View(),

              Row(
                children: [
                  Text("Best Selling", style: TextStyles.Title),
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
              SizedBox(height: 10),
              List_View(),
              SizedBox(height: 10),

              Row(
                children: [
                  Text("Best Offer", style: TextStyles.Title),
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
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 300,
                  // childAspectRatio: 0.5,
                ),
                itemCount: offers.length,
                itemBuilder: (BuildContext context, int index) {
                  return ItemIcon(model: offers[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
