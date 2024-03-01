import 'package:flutter/material.dart';

class Customclippath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path_0 = Path();
    path_0.moveTo(0, 90.1296);
    path_0.lineTo(0, 0);
    path_0.lineTo(0.575, 0);
    path_0.lineTo(414, 0);
    path_0.lineTo(414, 90.1296);
    path_0.lineTo(73.6, 157);
    path_0.lineTo(0, 90.1296);
    path_0.close();

    return path_0;
  }

  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
  
}


