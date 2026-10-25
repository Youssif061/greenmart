import 'package:flutter/material.dart';
import 'package:greenmart/core/styles/fonts.dart';
import 'package:greenmart/core/widget/custom_text_form_field.dart';
import 'package:greenmart/features/Explore/widget/grid_view_for_explore.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            "Find Products",
            style: TextStyles.Subtitle.copyWith(fontSize: 18),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextFormField(
                text: "Search Store",

                prefixIcon: Icon(Icons.search),
              ),
              SizedBox(height: 20),

              // GridView.builder(
              //   itemCount: offers.length,
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 2,
              //   ),
              //   itemBuilder: (context, index) => ItemCard(model: offers[index]),
              // ),
              GridViewForExplore(),
            ],
          ),
        ),
      ),
    );
  }
}
