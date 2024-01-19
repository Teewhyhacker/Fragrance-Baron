import 'package:flutter/material.dart';
import 'package:fragrancebaron/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:fragrancebaron/utils/constants/sizes.dart';
import 'package:fragrancebaron/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(FBSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // HEADER
            Text(
              FBTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: FBSizes.spaceBtwItems,
            ),
            Text(
              FBTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: FBSizes.spaceBtwSections * 2,
            ),

            // TEXTFIELD
            TextFormField(
              decoration: const InputDecoration(
                  labelText: FBTexts.email, prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(
              height: FBSizes.spaceBtwSections,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const ResetPassword()),
                    child: const Text("Sumbit"))),
          ],
        ),
      ),
    );
  }
}
