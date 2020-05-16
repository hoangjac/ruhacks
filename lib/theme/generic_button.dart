import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenericButton extends StatelessWidget {
  @required
  final String text;
  @required
  final bool showPrimary;
  final double height;
  final double width;
  final bool isBold;
  final Function action;
  final bool modifyText;

  const GenericButton({
    Key key,
    this.text,
    this.height,
    this.width,
    this.isBold,
    this.action,
    this.showPrimary,
    this.modifyText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: showPrimary == false
              ? LinearGradient(
                  colors: <Color>[Color(0xFFFF7D56), Color(0xFFFF997A)])
              : LinearGradient(
                  colors: <Color>[Color(0xFF4C5AE8), Color(0xFF707CFF)]),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[500],
              offset: Offset(0.0, 1.5),
              blurRadius: 1.5,
            ),
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: action,
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight:
                        isBold == true ? FontWeight.bold : FontWeight.w400),
              ),
            )),
      ),
    );
  }
}
