import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhacks/theme/display.dart';

class GenericCard extends StatelessWidget {
  final Function action;
  final Color color;
  final String text;
  final double height;
  final double width;
  final bool showPrimary;
  //replace employee png with the image, you may modify this if needed
  //final String image;
  //final double imgWidth;
  //final double imgHeight;

  const GenericCard({
    this.action,
    this.color,
    this.text,
    this.height,
    this.width,
    this.showPrimary,
    //this.image,
    //this.imgWidth,
    //this.imgHeight,
    
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Stack(
        children: <Widget>[
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              gradient: showPrimary == false
                  ? LinearGradient(
                      colors: <Color>[Color(0xFFFF7D56), Color(0xFFFF997A)])
                  : LinearGradient(
                      colors: <Color>[Color(0xFF4C5AE8), Color(0xFF707CFF)]),
              boxShadow: [
                new BoxShadow(
                    color: color == null
                        ? Color(0xff4C5AE8).withOpacity(0.30)
                        : color,
                    // offset, the X,Y coordinates to offset the shadow
                    offset: new Offset(0.0, 1.0),
                    // blurRadius, the higher the number the more smeared look
                    blurRadius: 11.0,
                    spreadRadius: 1.0)
              ],
              borderRadius: BorderRadius.circular(30.h),
            ),
          ),
          /*Image.asset(
            image,
            width: imgWidth,
            height: imgHeight,
            fit: BoxFit.contain,
          ), */
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Display(
              color: Colors.white,
              display: 3,
              text: text,
              incrementSize: 5.w,
            ),
          ),
        ],
      ),
    );
  }
}
