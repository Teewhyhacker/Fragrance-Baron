
import 'package:flutter/material.dart';
import 'package:fragrancebaron/utils/constants/colors.dart';
import 'package:fragrancebaron/utils/constants/image_strings.dart';
import 'package:fragrancebaron/utils/constants/sizes.dart';

class SocialIconWidget extends StatelessWidget {
  const SocialIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: FBColor.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                width: FBSizes.iconMd,
                height: FBSizes.iconMd,
                image: AssetImage(FBImages.googleLogo),
              )),
        ),
        const SizedBox(
          width: FBSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: FBColor.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                width: FBSizes.iconMd,
                height: FBSizes.iconMd,
                image: AssetImage(FBImages.facebookLogo),
              )),
        )
      ],
    );
  }
}
