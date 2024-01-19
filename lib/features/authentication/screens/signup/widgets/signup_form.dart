import 'package:flutter/material.dart';
import 'package:fragrancebaron/features/authentication/screens/signup/widgets/terms_and_conditions.dart';
import 'package:fragrancebaron/utils/constants/sizes.dart';
import 'package:fragrancebaron/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: FBTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(
              width: FBSizes.spaceBtwinputFields,
            ),
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: FBTexts.lastName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            )
          ],
        ),
        const SizedBox(
          height: FBSizes.spaceBtwinputFields,
        ),
        // USERNAME
        TextFormField(
          decoration: const InputDecoration(
              labelText: FBTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(
          height: FBSizes.spaceBtwinputFields,
        ),
        // EMAIL
        TextFormField(
          decoration: const InputDecoration(
              labelText: FBTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(
          height: FBSizes.spaceBtwinputFields,
        ),
        // PHONE NUMBER
        TextFormField(
          decoration: const InputDecoration(
              labelText: FBTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(
          height: FBSizes.spaceBtwinputFields,
        ),
        // PASSWORD
        TextFormField(
          decoration: const InputDecoration(
              labelText: FBTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(
          height: FBSizes.spaceBtwinputFields,
        ),

        // TERMS AND COJNDITION
        const TermsAndConditionWidget()
      ],
    ));
  }
}
