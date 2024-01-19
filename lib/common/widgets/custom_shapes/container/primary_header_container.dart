
import 'package:flutter/material.dart';
import 'package:fragrancebaron/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:fragrancebaron/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:fragrancebaron/utils/constants/colors.dart';

class FBPrimaryHeaderContainer extends StatelessWidget {
  const FBPrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return FBCurvedEdgesWidget(
      child: Container(
        color: FBColor.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(children: [
            Positioned(
                top: -150,
                right: -250,
                child: FBCircularContainer(
                  backgroundColor: FBColor.white.withOpacity(0.4),
                )),
            Positioned(
                top: 100,
                right: -300,
                child: FBCircularContainer(
                  backgroundColor: FBColor.white.withOpacity(0.4),
                )),
            Positioned(
                top: 100,
                right: 0,
                child: FBCircularContainer(
                  height: 200,
                  width: 200,
                  backgroundColor: FBColor.white.withOpacity(0.2),
                )),
            child
          ]),
        ),
      ),
    );
  }
}
