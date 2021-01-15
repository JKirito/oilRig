import 'package:flutter/material.dart';

class BackgroundSVG extends StatelessWidget {
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SvgCliping(),
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class SvgCliping extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 411.76;
    final double _yScaling = size.height / 323.32;
    path.lineTo(479.48400000000004 * _xScaling, 288.998 * _yScaling);
    path.cubicTo(
      668.253 * _xScaling,
      205.20799999999997 * _yScaling,
      634.597 * _xScaling,
      285.008 * _yScaling,
      745.809 * _xScaling,
      245.108 * _yScaling,
    );
    path.cubicTo(
      857.021 * _xScaling,
      205.20800000000003 * _yScaling,
      891.24 * _xScaling,
      184.001 * _yScaling,
      891.24 * _xScaling,
      184.001 * _yScaling,
    );
    path.cubicTo(
      891.24 * _xScaling,
      184.001 * _yScaling,
      891.24 * _xScaling,
      -34.318000000000005 * _yScaling,
      891.24 * _xScaling,
      -34.318000000000005 * _yScaling,
    );
    path.cubicTo(
      891.24 * _xScaling,
      -34.318000000000005 * _yScaling,
      479.48400000000004 * _xScaling,
      -34.318000000000005 * _yScaling,
      479.48400000000004 * _xScaling,
      -34.318000000000005 * _yScaling,
    );
    path.cubicTo(
      479.48400000000004 * _xScaling,
      -34.318000000000005 * _yScaling,
      479.48400000000004 * _xScaling,
      288.998 * _yScaling,
      479.48400000000004 * _xScaling,
      288.998 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
