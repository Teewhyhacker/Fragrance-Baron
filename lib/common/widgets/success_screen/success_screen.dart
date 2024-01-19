import 'package:flutter/material.dart';
import 'package:fragrancebaron/common/styles/spacing_styles.dart';
import 'package:fragrancebaron/utils/constants/image_strings.dart';
import 'package:fragrancebaron/utils/constants/sizes.dart';
import 'package:fragrancebaron/utils/constants/text_strings.dart';
import 'package:fragrancebaron/utils/helper/helper_functions.dart';


class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image,
      required this.onPressed});
  final String title, subTitle, image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: FBSpacingStyles.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                image: const AssetImage(FBImages.staticSuccessIllustration),
                width: FBHelperFunctions.screenWidth(),
              ),
              const SizedBox(
                height: FBSizes.spaceBtwSections,
              ),

              //   TITLE & SUBTITLE
              Text(
                FBTexts.yourAccountCreatedTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: FBSizes.spaceBtwItems,
              ),

              Text(
                FBTexts.yourAccountCreatedSubTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: FBSizes.spaceBtwSections,
              ),

              // Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPressed, child: const Text("Continue"))),
            ],
          ),
        ),
      ),
    );
  }
}
