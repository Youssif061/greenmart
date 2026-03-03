import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greenmart/features/Home_Screen/Data/Product_modek.dart';
import 'package:greenmart/features/Home_Screen/widgets/item_icon.dart';

class List_View extends StatelessWidget {
  const List_View({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: offers.length,
        itemBuilder: (context, index) {
          return ItemIcon(model: offers[index]);
        },
      ),
    );
  }
}
