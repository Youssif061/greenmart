import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/fonts.dart';
import 'package:greenmart/features/Explore/data/product_model.dart';
import 'package:greenmart/features/Explore/widget/assets_or_network.dart';

class ItemCardCategories extends StatelessWidget {
  final double? height;
  final double? width;
  final ProductModel model;
  const ItemCardCategories({
    super.key,
    this.height,
    this.width,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(8),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.backgroundColor,
        border: Border.all(color: AppColors.blackNormal),
        boxShadow: [
          BoxShadow(color: AppColors.blackNormal, offset: Offset(2, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: AssetsOrNetwork(
              model: model,
              height: height,
              width: width,
              image: '',
            ),
          ),

          Text(model.name, style: TextStyles.body),
          SizedBox(height: 8),
          Text(
            model.quantityForPrice,
            style: TextStyles.Caption.copyWith(color: AppColors.graykcolor),
          ),
          SizedBox(height: 18),
          Row(
            children: [
              Text(model.price, style: TextStyles.body),
              Spacer(),
              FloatingActionButton.small(
                backgroundColor: AppColors.primarycolor,
                foregroundColor: AppColors.accentGrey,
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
