import 'package:flutter/material.dart';
import 'package:fragrancebaron/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:fragrancebaron/utils/constants/colors.dart';
import 'package:fragrancebaron/utils/constants/sizes.dart';
import 'package:fragrancebaron/utils/device/device_utility.dart';
import 'package:fragrancebaron/utils/helper/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingCircularButton extends StatelessWidget {
  const OnboardingCircularButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = FBHelperFunctions.isDarkMode(context);
    return Positioned(
      right: FBSizes.defaultSpace,
      bottom: FBDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? FBColor.primary : FBColor.black),
        child: Icon(
          Iconsax.arrow_right4,
          color: dark ? FBColor.black : FBColor.primary,
        ),
        onPressed:()=> OnBoardingController.instance.nextPage(),
      ),
    );
  }
}
