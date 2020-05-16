import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //            color: Color(0xFF4C5AE8),
    ScreenUtil.init(context);

    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xff4C5AE8),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(topRight: Radius.circular(100.h)),
                gradient: LinearGradient(
                    colors: [Color(0xFFF6F7FB), Color(0xfff6f7fb)])),
          ),
        ),
        Positioned(
            top: 100.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(80.h, 40.h, 10.h, 40.h),
                  child: Icon(
                    Icons.info,
                    size: 100.w,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(80.h, 40.h, 10.h, 40.h),
                  child: Text(
                    "Start letting your\ncustomers know what \nyou’re doing with Trackio",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 65.h,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
        Positioned(
            top: 1000.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ButtonTheme(
                  minWidth: 100.w,
                  height: 100.h,
                  child: RaisedButton(
                    color: Color(0xFF4C5AE8),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 150.w, vertical: 45.h),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(80.h, 40.h, 10.h, 40.h),
                  child: Text(
                    "Start letting your\ncustomers know what \nyou’re doing with Trackio",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 65.h,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
      ],
    ));
  }
}
