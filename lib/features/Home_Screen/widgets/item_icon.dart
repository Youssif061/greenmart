import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmart/core/styles/colors.dart';
import 'package:greenmart/core/styles/fonts.dart';
import 'package:greenmart/features/Home_Screen/Data/Product_modek.dart';

class ItemIcon extends StatelessWidget {
  const ItemIcon({super.key, required this.model});
  final Productmodek model;
  @override
  Widget build(BuildContext context) {
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
          Expanded(child: Center(child: Image.network(model.Image))),

          SizedBox(height: 20),
          Text(
            model.Name,
            style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 8),

          Text(
            model.quantity,
            style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                '\$${model.Price}',
                style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
              ),
              Spacer(),
              FloatingActionButton.small(
                heroTag: null,
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
  }
}
