import 'package:flutter/material.dart';


class CustomContainerClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    

    Path path0 = Path();
    path0.moveTo(size.width*0.0701250,size.height*0.0265500);
    path0.cubicTo(size.width*0.2392250,size.height*0.2829500,size.width*0.3278750,size.height*0.2496500,size.width*0.4534500,size.height*0.1726500);
    path0.cubicTo(size.width*0.7645500,size.height*-0.0988500,size.width*0.9166500,size.height*0.0237500,size.width,size.height*0.2384000);
    path0.cubicTo(size.width*0.9764625,size.height*0.4218000,size.width*0.9293875,size.height*0.7886000,size.width*0.9058500,size.height*0.9720000);
    path0.cubicTo(size.width*0.8178000,size.height*0.4159000,size.width*0.4720000,size.height*0.7146000,size.width*0.4381000,size.height*0.7388500);
    path0.quadraticBezierTo(size.width*0.3424750,size.height*0.9572500,size.width*0.0036000,size.height*0.8190500);
    path0.quadraticBezierTo(size.width*0.0202500,size.height*0.4666500,size.width*0.0701250,size.height*0.0265500);
    path0.close();


    

    return path0;

  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
