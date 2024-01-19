
import 'package:flutter/material.dart';
import 'package:fragrancebaron/common/widgets/image_text_widgets/vertical_image_text_list.dart';
import 'package:fragrancebaron/utils/constants/image_strings.dart';

class FBHomeCategories extends StatelessWidget {
  const FBHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 7,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return const FBVerticalImageTextList(
              image: FBImages.appDarkLogo,
              title: "Shoe",
            );
          }),
    );
  }
}
