import 'package:flutter/material.dart';
import 'package:fragrancebaron/utils/constants/colors.dart';
import 'package:fragrancebaron/utils/constants/sizes.dart';
import 'package:fragrancebaron/utils/device/device_utility.dart';
import 'package:fragrancebaron/utils/helper/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class FBSearchContainer extends StatelessWidget {
  const FBSearchContainer({
    super.key,
    this.icon = Iconsax.search_normal,
    required this.text,
    this.showbackground = true,
    this.showBorder = true,
    this.onTap,
  });
  final IconData? icon;
  final String text;
  final bool showbackground, showBorder;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = FBHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: FBSizes.defaultSpace),
        child: Container(
          padding: const EdgeInsets.all(15),
          width: FBDeviceUtils.getScreenWidth(context),
          decoration: BoxDecoration(
            color: showbackground
                ? dark
                    ? Colors.black
                    : Colors.white
                : Colors.transparent,
            borderRadius: BorderRadius.circular(FBSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: FBColor.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon),
              const SizedBox(
                width: FBSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .apply(color: FBColor.primary),
              )
            ],
          ),
        ),
      ),
    );
  }
}
