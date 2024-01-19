import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fragrancebaron/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:fragrancebaron/common/widgets/images/rounded_image.dart';
import 'package:fragrancebaron/features/shop/controller/home_carousel_slider/home_carousel_slider_controller.dart';
import 'package:fragrancebaron/utils/constants/colors.dart';
import 'package:fragrancebaron/utils/constants/image_strings.dart';
import 'package:fragrancebaron/utils/constants/sizes.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeCarouselSliderController());
    return Column(
      children: [
        CarouselSlider(
            items: const [
              FBRoundedImage(
                imageUrl: FBImages.onBoardingImage5,
              ),
              FBRoundedImage(
                imageUrl: FBImages.onBoardingImage4,
              ),
              FBRoundedImage(
                imageUrl: FBImages.onBoardingImage3,
              ),
              FBRoundedImage(
                imageUrl: FBImages.onBoardingImage2,
              ),
              FBRoundedImage(
                imageUrl: FBImages.onBoardingImage1,
              ),
            ],
            options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, _) =>
                    controller.updateIndicator(index))),
        const SizedBox(
          height: FBSizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 5; i++)
                GestureDetector(
                  onTap: () {},
                  child: FBCircularContainer(
                    width: 20,
                    height: 4,
                    margin: 5,
                    backgroundColor: controller.currentIndex.value == i
                        ? FBColor.primary
                        : FBColor.black,
                  ),
                )
            ],
          ),
        )
      ],
    );
  }
}
