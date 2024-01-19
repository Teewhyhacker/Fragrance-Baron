import 'package:flutter/material.dart';
import 'package:fragrancebaron/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:fragrancebaron/common/widgets/custom_shapes/container/search_container.dart';
import 'package:fragrancebaron/common/widgets/texts/section_heading.dart';
import 'package:fragrancebaron/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:fragrancebaron/features/shop/screens/home/widgets/home_categories.dart';
import 'package:fragrancebaron/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:fragrancebaron/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(HomeCarouselSliderController());
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FBPrimaryHeaderContainer(
              child: Column(children: [
                // Custom APPBAR
                FBHomeAppBar(),
                SizedBox(
                  height: FBSizes.spaceBtwSections,
                ),

                // SearchBar
                FBSearchContainer(
                  text: "Search in Store",
                ),
                SizedBox(
                  height: FBSizes.spaceBtwSections,
                ),

                // HEADINGr
                Padding(
                  padding: EdgeInsets.only(left: FBSizes.defaultSpace),
                  child: Column(
                    children: [
                      FBSectionHeading(
                        textTitle: "Popular Categories",
                      ),
                      SizedBox(
                        height: FBSizes.spaceBtwItems,
                      ),
                      FBHomeCategories()
                    ],
                  ),
                )
              ]),
            )

            // body
            ,
            Padding(
                padding: EdgeInsets.all(FBSizes.defaultSpace),
                child: PromoSlider())
          ],
        ),
      ),
    );
  }
}
