import 'package:flutter/material.dart';
import 'package:getten/screens/home/component/row_heading.dart';
import 'package:getten/screens/other-category/other_category_screen.dart';
import 'package:getten/screens/resturant/resturant_screen.dart';
import 'package:getten/utils/models/category/data.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/widget/custom_category_card.dart';

class OtherCategorySection extends StatelessWidget {
  const OtherCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: dimensions.getScreenWidth * 0.03,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          RowHeadings(
            startText: 'Other Categories',
            endText: 'View all',
            onTapped: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const OtherCategoryScreen()),
                ),
              );
            },
          ),
          SizedBox(
            height: dimensions.getScreenHeight * 0.23,
            child: ListView.builder(
              itemCount: othercategoryItems.length ~/ 2,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => CustomCategoryCard(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const ResturantScreen()),
                    ),
                  );
                },
                categoryImageURL: othercategoryItems[index].image,
                categoryName: othercategoryItems[index].headingText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
