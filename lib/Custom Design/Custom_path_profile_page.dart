import 'package:flutter/material.dart';

class Customclippath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.7150000);
    path_0.lineTo(0, size.height * 0.00000000);
    path_0.lineTo(size.width * 0.0006944444, size.height * 0.0000000);
    path_0.lineTo(size.width * 0.9993056, size.height * 0.0000000);
    path_0.lineTo(size.width, size.height * 0.7150000);
    path_0.lineTo(size.width * 0.1777778, size.height * 0.9900000);
    path_0.lineTo(0, size.height * 0.7150000);
    path_0.close();
    return path_0;
  }

  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
  
}


// class Customclippath extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     double w = size.width;
//     double h = size.height;

//     final path_0 = Path();
//    path_0.moveTo(0,size.height*0.7150000);
//     path_0.lineTo(0,size.height*0.01000000);
//     path_0.lineTo(size.width*0.0006944444,size.height*0.04000000);
//     path_0.lineTo(size.width*0.9993056,size.height*0.04000000);
//     path_0.lineTo(size.width,size.height*0.7150000);
//     path_0.lineTo(size.width*0.1777778,size.height*0.9900000);
//     path_0.lineTo(0,size.height*0.7150000);
//     path_0.close();
//     return path_0;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }