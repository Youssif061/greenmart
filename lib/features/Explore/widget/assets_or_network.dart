import 'package:flutter/material.dart';
import 'package:greenmart/features/Explore/data/product_model.dart';

class AssetsOrNetwork extends StatelessWidget {
  const AssetsOrNetwork({
    super.key,
    required this.image,
    this.height,
    this.width,
    required ProductModel model,
  });

  final String image;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: image.startsWith('http')
          ? Image.network(
              image,
              height: height ?? 120,
              width: width ?? 140,
              fit: BoxFit.contain,
            )
          : Image.asset(
              image,
              height: height ?? 120,
              width: width ?? 140,
              fit: BoxFit.contain,
            ),
    );
  }
}
