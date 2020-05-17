import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhacks/modules/company/auth/screens/register.dart';
import 'package:ruhacks/modules/company/home/screens/company_home.dart';
import 'package:ruhacks/theme/generic_button.dart';

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
                    "Start letting your\ncustomers know what \nyou’re doing with \nTrackio",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 65.h,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
        Positioned(
            top: 1150.h,
            left: MediaQuery.of(context).size.width / 4.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GenericButton(
                  height: 140.h,
                  width: 600.w,
                  text: "Sign up",
                  showPrimary: true,
                  action: () => Navigator.pushNamed(context, Register.route),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Joined us before?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.h,
                      ),
                    ),
                    FlatButton(
                      child: Text(
                        "Log in",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 30.h,
                        ),
                      ),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            )),
      ],
    ));
  }
}
