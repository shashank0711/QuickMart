import 'package:flutter/material.dart';

class curvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final startingFirstCurve = Offset(0, size.height-20);
    final endingFirstCurve = Offset(30, size.height-20);
    path.quadraticBezierTo(startingFirstCurve.dx, startingFirstCurve.dy, endingFirstCurve.dx, endingFirstCurve.dy);


    final startingSecondCurve = Offset(0, size.height-20);
    final endingSecondCurve = Offset(size.width-30, size.height-20);
    path.quadraticBezierTo(startingSecondCurve.dx, startingSecondCurve.dy, endingSecondCurve.dx, endingSecondCurve.dy);


    final startingThirdCurve = Offset(size.width, size.height-20);
    final endingThirdCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(startingThirdCurve.dx, startingThirdCurve.dy, endingThirdCurve.dx, endingThirdCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}