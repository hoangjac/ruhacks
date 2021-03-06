import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhacks/theme/display.dart';

class GenericBody extends StatelessWidget {
  final String title;
  final Color titleBackgroundColor;
  final bool onPop;
  const GenericBody({this.title, this.titleBackgroundColor, this.onPop});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: titleBackgroundColor == null
              ? Color(0xff4C5AE8)
              : titleBackgroundColor,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height / 1.110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.h)),
                gradient: LinearGradient(
                    colors: [Color(0xFFF6F7FB), Color(0xfff6f7fb)])),
          ),
        ),

        //increase clickable area
        Positioned(
            top: 40.h,
            left: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10.h, 40.h, 10.h, 40.h),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 55.w,
                      ),
                      onPressed: () => Navigator.pop(context),
                    )),
              ),
            )),
        Positioned(
            top: 75.h,
            left: MediaQuery.of(context).size.width / 3.7,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(80.h, 40.h, 10.h, 40.h),
                  child: Display(
                    color: Colors.white,
                    display: 2,
                    text: title,
                  )),
            )),
      ],
    );
  }
}
