import 'package:flutter/material.dart';
import 'package:oilrig/designprops/colorcodes.dart';

class CustomPositionedProperties {
  CustomPositionedProperties();
}

class CustomPositioned extends StatelessWidget {
  final double left;
  final double right;
  final double top;
  // final double bottom;
  final double height;
  final double width;
  CustomPositioned({
    this.left,
    this.right,
    // this.bottom,
    this.top,
    @required this.width,
    @required this.height,
  });
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      right: right,
      top: top,
      // bottom: bottom,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(LimeBlue),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4), // Drop Shadow Color
              spreadRadius: 5,
              blurRadius: 15,
              offset: Offset(0, 2),
            )
          ],
        ),
        height: height,
        width: width,
      ),
    );
  }
}
