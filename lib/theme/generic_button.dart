import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenericButton extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry padding;
  final bool isBold;
  final Color color;
  final Function action;

  const GenericButton(
      {Key key, this.text, this.padding, this.isBold, this.color, this.action})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: color == null ? Color(0xFFFF997A) : color,
      onPressed: action,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: padding == null
            ? EdgeInsets.symmetric(horizontal: 150.w, vertical: 45.h)
            : padding,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontWeight: isBold == true ? FontWeight.bold : FontWeight.w400),
        ),
      ),
    );
  }
}
