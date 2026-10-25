import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:greenmart/core/constant/AppImage.dart';
import 'package:greenmart/core/styles/colors.dart';

class DummyDataExplore {
  final Widget image;
  final String id;
  final String name;
  final Color backGround;
  final Color borderColor;

  DummyDataExplore({
    required this.image,
    required this.name,
    required this.backGround,
    required this.borderColor,
    required this.id,
  });
}

List<DummyDataExplore> allProducts = [
  DummyDataExplore(
    image: Image.asset(AppImage.fruits),
    name: "Fresh Fruits & vegetables",
    backGround: AppColors.accentGreen,
    borderColor: AppColors.accentGreen,
    id: "1",
  ),
  DummyDataExplore(
    image: Image.asset(AppImage.oil),
    name: "Cooking Oil& Ghee",
    backGround: AppColors.lightOrangeColor,
    borderColor: AppColors.lightOrangeColor,
    id: "2",
  ),
  DummyDataExplore(
    image: Image.asset(AppImage.meat),
    name: "Meat & Fish",
    backGround: AppColors.lightOrangeColorAccent,
    borderColor: AppColors.lightOrangeColorAccent,
    id: "3",
  ),
  DummyDataExplore(
    image: Image.asset(AppImage.bakery),
    name: "Bakery & Snacks",
    backGround: AppColors.lightPurbleColorAccent,
    borderColor: AppColors.lightPurbleColorAccent,
    id: "4",
  ),
  DummyDataExplore(
    image: Image.asset(AppImage.dairy),
    name: "Dairy & Eggs",
    backGround: AppColors.lightYelloweColor,
    borderColor: AppColors.lightYelloweColor,
    id: "6",
  ),
  DummyDataExplore(
    image: Image.asset(AppImage.beverages),
    name: "Beverages",
    backGround: AppColors.lightBlueColor,
    borderColor: AppColors.lightBlueColor,
    id: "5",
  ),
];
