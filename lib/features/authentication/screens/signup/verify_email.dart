import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fragrancebaron/common/widgets/success_screen/success_screen.dart';
import 'package:fragrancebaron/features/authentication/screens/login/login.dart';
import 'package:fragrancebaron/utils/constants/image_strings.dart';
import 'package:fragrancebaron/utils/constants/sizes.dart';
import 'package:fragrancebaron/utils/constants/text_strings.dart';
import 'package:fragrancebaron/utils/helper/helper_functions.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(FBSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //  IMAGE
            Image(
              image: const AssetImage(FBImages.deliveredEmailIllustration),
              width: FBHelperFunctions.screenWidth(),
            ),
            const SizedBox(
              height: FBSizes.spaceBtwSections,
            ),

            //   TITLE & SUBTITLE
            Text(
              FBTexts.confirmEmail,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: FBSizes.spaceBtwItems,
            ),

            Text(
              "adetayoadedeji2@gmail.com",
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: FBSizes.spaceBtwItems,
            ),

            Text(
              FBTexts.confirmEmailSubTitle,
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
                    onPressed: () => Get.to(() => SuccessScreen(
                          title: FBTexts.yourAccountCreatedTitle,
                          subTitle: FBTexts.yourAccountCreatedSubTitle,
                          image: FBImages.staticSuccessIllustration,
                          onPressed: () => Get.offAll(() => const LoginScreen()),
                        )),
                    child: const Text("Continue"))),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () {}, child: const Text(FBTexts.resendEmail)),
            )
          ],
        ),
      )),
    );
  }
}
