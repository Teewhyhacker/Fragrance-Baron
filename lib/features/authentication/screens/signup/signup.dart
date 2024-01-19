import 'package:flutter/material.dart';
import 'package:fragrancebaron/common/widgets/login_SignUp/divider_widget.dart';
import 'package:fragrancebaron/common/widgets/login_SignUp/social_icon_widget.dart';
import 'package:fragrancebaron/features/authentication/screens/signup/verify_email.dart';
import 'package:fragrancebaron/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:fragrancebaron/utils/constants/sizes.dart';
import 'package:fragrancebaron/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(FBSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //   TITLE
            Text(
              FBTexts.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: FBSizes.spaceBtwSections),
            // Form
            const SignupForm(),
            const SizedBox(
              height: FBSizes.spaceBtwSections - 15,
            ),
            // SIgn Up button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const VerifyEmailScreen()),
                    child: const Text(FBTexts.createAccount))),
            const SizedBox(
              height: FBSizes.spaceBtwSections - 15,
            ),
            const DividerWidget(dividerText: FBTexts.orSignUpWith),
            const SizedBox(
              height: FBSizes.spaceBtwSections - 15,
            ),
            // FOOTER
            const SocialIconWidget()
          ],
        ),
      )),
    );
  }
}
