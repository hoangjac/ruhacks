import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MaterialField extends StatelessWidget {
  final Widget child;
  final Color color;

  const MaterialField({this.child, this.color});
  @override
  Widget build(BuildContext context) {
    return Material(
        borderRadius: BorderRadius.circular(10.0),
        elevation: 5.0,
        child: new Container(
            height: 140.h,
            width: 150.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              // the box shawdow property allows for fine tuning as aposed to shadowColor
              boxShadow: [
                new BoxShadow(
                    color: color == null
                        ? Color(0xff4C5AE8).withOpacity(0.15)
                        : color,
                    // offset, the X,Y coordinates to offset the shadow
                    offset: new Offset(0.0, 1.0),
                    // blurRadius, the higher the number the more smeared look
                    blurRadius: 11.0,
                    spreadRadius: 4.0)
              ],
            ),
            child: child));
  }
}
