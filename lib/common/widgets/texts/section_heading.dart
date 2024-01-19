import 'package:flutter/material.dart';

class FBSectionHeading extends StatelessWidget {
  const FBSectionHeading({
    super.key,
    this.showButton = false,
    required this.textTitle,
    this.buttonTextTitle = "View All",
    this.onPressed,
    this.textColor = Colors.black,
  });
  final bool showButton;
  final Color? textColor;
  final String textTitle, buttonTextTitle;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          textTitle,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showButton)
          TextButton(onPressed: onPressed, child: Text(buttonTextTitle))
      ],
    );
  }
}
