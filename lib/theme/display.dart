import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Display extends StatelessWidget {
  final String text;
  final int display;
  final Color color;
  final bool isBold;
  final double incrementSize;

  const Display(
      {this.text,
      this.display,
      this.color,
      this.isBold,
      this.incrementSize = 0});
  @override
  Widget build(BuildContext context) {
    switch (display) {
      case 1:
        return Text(text,
            style: TextStyle(
                fontSize: 60.w,
                fontWeight: FontWeight.bold,
                color: color == null ? Colors.black : color));

        break;

      case 2:
        return Text(text,
            style: TextStyle(
              fontSize: 55.w + incrementSize,
              fontWeight: isBold == null ? FontWeight.w500 : FontWeight.bold,
              color: color == null ? Colors.black : color,
            ));
        break;

      case 3:
        return Text(text,
            style: TextStyle(
                fontSize: 40.w + incrementSize,
                fontWeight: isBold == null ? FontWeight.w500 : FontWeight.bold,
                color: color == null ? Colors.black : color));
        break;

      case 4:
        return Text(text,
            style: TextStyle(
                fontSize: 30.w + incrementSize,
                fontWeight: isBold == null ? FontWeight.w500 : FontWeight.bold,
                letterSpacing: 2.w,
                color: color == null ? Colors.black : color));
        break;

      default:
        return Text(text);
    }
  }
}
