import 'package:flutter/material.dart';
import 'package:fragrancebaron/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:fragrancebaron/utils/constants/colors.dart';
import 'package:fragrancebaron/utils/constants/sizes.dart';
import 'package:fragrancebaron/utils/device/device_utility.dart';
import 'package:fragrancebaron/utils/helper/helper_functions.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = FBHelperFunctions.isDarkMode(context);
    return Positioned(
        left: FBSizes.spaceBtwItems + 13,
        bottom: FBDeviceUtils.getBottomNavigationBarHeight() + 25,
        child: SmoothPageIndicator(
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            count: 3,
            effect: ExpandingDotsEffect(
                dotColor: dark ? FBColor.primary : FBColor.black,
                activeDotColor: dark ? FBColor.white : FBColor.primary,
                dotHeight: 6)));
  }
}
