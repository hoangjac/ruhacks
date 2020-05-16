import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhacks/theme/display1.dart';

class CompanyHome extends StatelessWidget {
  static String route = "/companyPortal";

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).backgroundColor,
          leading: Padding(
            padding: EdgeInsets.fromLTRB(50.w, 0, 0, 0),
            child: Icon(
              Icons.menu,
              color: Theme.of(context).primaryColor,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 50.w, 0),
              child: Container(
                padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 10.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  Icons.business,
                  color: Theme.of(context).primaryColor,
                  size: 60.w,
                ),
              ),
            ),
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).backgroundColor,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30.h,
              ),
              Center(
                child: Display(
                  text: "Home",
                  color: Theme.of(context).primaryColor,
                  display: 2,
                ),
              ),
              SizedBox(
                height: 90.h,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 350.h,
                    width: 900.w,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(30.h),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Display(
                      color: Colors.white,
                      display: 3,
                      text: "Orders",
                      incrementSize: 5.w,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
