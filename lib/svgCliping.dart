import 'package:flutter/material.dart';
import 'package:oilrig/designprops/colorcodes.dart';

class BackgroundSVG extends StatelessWidget {
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SvgCliping(),
      child: Container(
        color: Color(DarkBlue),
      ),
    );
  }
}

class SvgCliping extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling =
        size.width / 360; // To make it Responsive Change this Later
    final double _yScaling =
        size.height / 1000; // // To make it Responsive Change this Later
    path.lineTo(-21.535 * _xScaling, 331.894 * _yScaling);
    path.cubicTo(
      31.977 * _xScaling,
      468.4 * _yScaling,
      45.14 * _xScaling,
      452.031 * _yScaling,
      78.076 * _xScaling,
      469.766 * _yScaling,
    );
    path.cubicTo(
      111.01199999999999 * _xScaling,
      487.50100000000003 * _yScaling,
      332.7 * _xScaling,
      503.968 * _yScaling,
      359.3 * _xScaling,
      579.975 * _yScaling,
    );
    path.cubicTo(
      385.90000000000003 * _xScaling,
      655.982 * _yScaling,
      382.217 * _xScaling,
      1086.912 * _yScaling,
      382.217 * _xScaling,
      1086.912 * _yScaling,
    );
    path.cubicTo(
      382.217 * _xScaling,
      1086.912 * _yScaling,
      -21.535 * _xScaling,
      1086.912 * _yScaling,
      -21.535 * _xScaling,
      1086.912 * _yScaling,
    );
    path.cubicTo(
      -21.535 * _xScaling,
      1086.912 * _yScaling,
      -21.535 * _xScaling,
      331.894 * _yScaling,
      -21.535 * _xScaling,
      331.894 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
