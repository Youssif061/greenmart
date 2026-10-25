import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/fonts.dart';
import 'package:greenmart/features/Explore/data/dummy_data_explore.dart';

class ItemCardExplore extends StatelessWidget {
  final double? height;
  final double? width;
  final DummyDataExplore dummyDataExplore;
  const ItemCardExplore({
    super.key,
    this.height,
    this.width,
    required this.dummyDataExplore,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: dummyDataExplore.backGround,
          border: Border.all(color: dummyDataExplore.borderColor),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 120, child: Center(child: dummyDataExplore.image)),
            SizedBox(height: 20),
            Text(
              dummyDataExplore.name,
              style: TextStyles.body,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
