import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmart/core/constant/AppImage.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/widget/custom_svg_picture.dart';
import 'package:greenmart/features/Account/Account.dart';
import 'package:greenmart/features/Explore/Explore.dart';
import 'package:greenmart/features/Favourite/Favourite.dart';
import 'package:greenmart/features/Home_Screen/Page/Home_Screen.dart';
import 'package:greenmart/features/My_Cart/My_Cart.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int currentIndex = 0;
  List<Widget> Screens = [
    HomeScreen(),
    Explore(),
    My_Cart(),
    Favourite(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImage.ShopSVG),
            activeIcon: CustomSvgPicture(
              path: AppImage.ShopSVG,
              color: AppColors.primarycolor,
              currentIndex: currentIndex,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImage.ExploreSVG),
            activeIcon: CustomSvgPicture(
              currentIndex: currentIndex,
              path: AppImage.ExploreSVG,
              color: AppColors.primarycolor,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImage.CartSVG),
            activeIcon: CustomSvgPicture(
              currentIndex: currentIndex,
              path: AppImage.CartSVG,
              color: AppColors.primarycolor,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImage.FavouriteSVG),
            activeIcon: CustomSvgPicture(
              currentIndex: currentIndex,
              path: AppImage.FavouriteSVG,
              color: AppColors.primarycolor,
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppImage.AccountSVG),
            activeIcon: CustomSvgPicture(
              currentIndex: currentIndex,
              path: AppImage.AccountSVG,
              color: AppColors.primarycolor,
            ),

            label: 'Account',
          ),
        ],
      ),
    );
  }
}
