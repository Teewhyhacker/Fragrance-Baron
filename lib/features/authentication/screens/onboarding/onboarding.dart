import 'package:flutter/material.dart';
import 'package:fragrancebaron/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:fragrancebaron/features/authentication/screens/onboarding/widgets/onboarding_circular_button.dart';
import 'package:fragrancebaron/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:fragrancebaron/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:fragrancebaron/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:fragrancebaron/utils/constants/image_strings.dart';
import 'package:fragrancebaron/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // HORIZONATAL SCROOL PAGES
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                title: FBTexts.onBoardingTitle1,
                subtitle: FBTexts.onBoardingSubTitle1,
                image: FBImages.onBoardingImage1,
              ),
              OnBoardingPage(
                title: FBTexts.onBoardingTitle2,
                subtitle: FBTexts.onBoardingSubTitle2,
                image: FBImages.onBoardingImage2,
              ),
              OnBoardingPage(
                title: FBTexts.onBoardingTitle3,
                subtitle: FBTexts.onBoardingSubTitle3,
                image: FBImages.onBoardingImage3,
              )
            ],
          ),

          // SKIP BUTTON
          const OnBoardingSkip(),

          // SMOOTHPAGE INDICATOR
          const OnBoardingDotNavigation(),
          //CIRCULAR BUTTON
          const OnboardingCircularButton()
        ],
      ),
    );
  }
}
