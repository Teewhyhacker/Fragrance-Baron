import 'package:flutter/material.dart';
import 'package:fragrancebaron/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:fragrancebaron/features/authentication/screens/signup/signup.dart';
import 'package:fragrancebaron/navigation_menu.dart';
import 'package:fragrancebaron/utils/constants/sizes.dart';
import 'package:fragrancebaron/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FBLoginForm extends StatelessWidget {
  const FBLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: FBSizes.spaceBtwSections),
      child: Column(
        children: [
          // EMAIL
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: FBTexts.email),
          ),
          const SizedBox(
            height: FBSizes.spaceBtwinputFields,
          ),
          // PASSWORD
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: FBTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: FBSizes.spaceBtwinputFields / 2,
          ),

          // REMEMBER ME AND FORGET PASSWORD
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(FBTexts.rememberMe)
                ],
              ),
              // Forget Password
              TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(FBTexts.forgetPassword))
            ],
          ),
          // SIGN IN
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                  child: const Text(FBTexts.signIn))),
          const SizedBox(
            height: FBSizes.spaceBtwItems,
          ),
          //SIGN UP BUTTON
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(const SignupScreen()),
                  child: const Text(FBTexts.createAccount)))
        ],
      ),
    ));
  }
}
