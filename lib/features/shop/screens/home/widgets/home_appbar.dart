import 'package:flutter/material.dart';
import 'package:fragrancebaron/common/widgets/appbar/appbar.dart';
import 'package:fragrancebaron/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:fragrancebaron/utils/constants/colors.dart';
import 'package:fragrancebaron/utils/constants/text_strings.dart';

class FBHomeAppBar extends StatelessWidget {
  const FBHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FBAppBar(
      title: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Text(
          FBTexts.homeAppBarTitle,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Text(FBTexts.homeAppBarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: FBColor.white))
      ]),
      actions: [
        FBCartCounterIcon(
          onPressed: () {},
          iconColor: FBColor.black,
        )
      ],
    );
  }
}
