import 'package:flutter/material.dart';
import 'package:fragrancebaron/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class FBCartCounterIcon extends StatelessWidget {
  const FBCartCounterIcon({
    super.key,
    required this.iconColor,
    required this.onPressed,
  });
  final Color iconColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: const Icon(Iconsax.shopping_bag),
          color: iconColor,
        ),
        Positioned(
          right: 5,
          top: 5,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: FBColor.black),
            child: const Center(
                child: Text(
              "2",
              style: TextStyle(color: FBColor.primary),
            )),
          ),
        )
      ],
    );
  }
}
