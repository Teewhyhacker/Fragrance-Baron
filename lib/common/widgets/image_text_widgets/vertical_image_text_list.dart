
import 'package:flutter/material.dart';
import 'package:fragrancebaron/utils/constants/colors.dart';
import 'package:fragrancebaron/utils/constants/sizes.dart';
import 'package:fragrancebaron/utils/helper/helper_functions.dart';

class FBVerticalImageTextList extends StatelessWidget {
  const FBVerticalImageTextList({
    super.key,
    required this.image,
    required this.title,
    this.textColor = FBColor.white,
    this.backgroundColor = FBColor.white,
    this.onPressed,
  });
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    final dark = FBHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(right: FBSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(FBSizes.sm),
              decoration: BoxDecoration(
                  color:
                      backgroundColor ?? (dark ? FBColor.black : FBColor.white),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                  child: Image(
                width: 40,
                height: 40,
                image: AssetImage(image),
                fit: BoxFit.cover,
              )),
            ),
            const SizedBox(
              height: FBSizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: FBColor.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
