import 'package:flutter/material.dart';
import 'package:greenmart/core/function/Navigation.dart';
import 'package:greenmart/features/Explore/data/product_model.dart';
import 'package:greenmart/features/Explore/page/category.dart';
import 'package:greenmart/features/Explore/widget/item_card_explore.dart';

class GridViewForExplore extends StatefulWidget {
  const GridViewForExplore({super.key});

  @override
  State<GridViewForExplore> createState() => _GridViewForExploreState();
}

class _GridViewForExploreState extends State<GridViewForExplore> {
  get exploreItems => null;

  List<ProductModel> getItemFormCategory(String realCategoryId) {
    return allProducts
        .where((product) => product.categoryId == realCategoryId)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: exploreItems.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        childAspectRatio: .75,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            final filteredProducts = getItemFormCategory(
              exploreItems[index].id,
            );

            naviagationPush(
              context,
              Category(
                filteredProducts: filteredProducts,
                categoryName: exploreItems[index].name,
              ),
            );
          },
          child: ItemCardExplore(dummyDataExplore: exploreItems[index]),
        );
      },
    );
  }
}
