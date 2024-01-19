import 'package:flutter/material.dart';
import 'package:fragrancebaron/utils/constants/image_strings.dart';
import 'package:fragrancebaron/utils/constants/sizes.dart';
import 'package:fragrancebaron/utils/constants/text_strings.dart';
import 'package:fragrancebaron/utils/helper/helper_functions.dart';

class FBLoginHeader extends StatelessWidget {
  const FBLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = FBHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(
            dark ? FBImages.appLightLogo : FBImages.appDarkLogo,
          ),
          height: 150,
        ),
        Text(
          FBTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: FBSizes.sm,
        ),
        Text(
          FBTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
