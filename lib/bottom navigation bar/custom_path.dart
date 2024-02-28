import 'package:flutter/material.dart';
import 'dart:ui';

class Customclippath extends CustomClipper<Path> {
  Customclippath(Color white);

  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path = Path();
    path.moveTo(size.width * 0.0005000, size.height * 0.1994286);
    path.lineTo(size.width * -0.0048333, size.height * 1.0014286);
    path.lineTo(size.width * 1.0008333, size.height * 1.0028571);
    path.lineTo(size.width * 1.0023333, size.height * 0.1414286);
    path.lineTo(size.width * 0.1670000, size.height * 0.2880000);

    return path;
  }

  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
  
}