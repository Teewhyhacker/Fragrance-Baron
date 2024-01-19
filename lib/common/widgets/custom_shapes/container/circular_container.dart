import 'package:flutter/material.dart';
import 'package:fragrancebaron/utils/constants/colors.dart';

class FBCircularContainer extends StatelessWidget {
  const FBCircularContainer(
      {super.key,
      this.height = 400,
      this.width = 400,
      this.radius = 400,
      this.padding = 0,
      this.child,
      this.backgroundColor = FBColor.textWhite,
      this.margin = 0});
  final double? height;
  final double? width;
  final double radius;
  final double padding;
  final double margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: backgroundColor),
    );
  }
}
