import 'package:flutter/material.dart';
import 'package:fragrancebaron/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:fragrancebaron/utils/constants/sizes.dart';
import 'package:fragrancebaron/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: FBDeviceUtils.getAppBarHeight(),
        right: FBSizes.defaultSpace,
        child: TextButton(
          child: const Text("skip"),
          onPressed: () => OnBoardingController.instance.skipPage(),
        ));
  }
}
