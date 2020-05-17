import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhacks/theme/display.dart';

class GenericOrdersAssignedCard extends StatelessWidget {
  final Color color;
  @required
  final String text;
  @required
  final String serviceName;

  @required
  final bool isUrgent;

  final double height;
  final double width;
  const GenericOrdersAssignedCard({
    this.color,
    this.text,
    this.height,
    this.width,
    this.serviceName,
    this.isUrgent,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: height + 9.h,
          width: width,
          decoration: BoxDecoration(
            boxShadow: [
              new BoxShadow(
                  color: color == null
                      ? Color(0xff4C5AE8).withOpacity(0.20)
                      : color,
                  // offset, the X,Y coordinates to offset the shadow
                  offset: new Offset(0.0, 1.0),
                  // blurRadius, the higher the number the more smeared look
                  blurRadius: 7.0,
                  spreadRadius: 1.0)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.h),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Display(
                        color: Theme.of(context).primaryColor,
                        display: 3,
                        text: text,
                        incrementSize: 0.w,
                      ),
                      isUrgent == true
                          ? Padding(
                              padding: EdgeInsets.fromLTRB(320.w, 9, 0, 0),
                              child: Align(
                                  alignment: Alignment.topRight,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        height: 30.h,
                                        width: 30.w,
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Display(
                                        color: Colors.black,
                                        display: 4,
                                        text: "URGENT",
                                        incrementSize: -5.w,
                                      ),
                                    ],
                                  )),
                            )
                          : Container(),
                    ],
                  ),
                  subtitle: Display(
                    display: 4,
                    color: Color(0xFFC5CEF3),
                    text: serviceName == null ? "service name" : serviceName,
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Display(
                          color: Colors.black,
                          display: 3,
                          text: "ASSIGNED TO",
                          incrementSize: -7.w,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Display(
                          color: Color(0xFFC5CEF3),
                          display: 3,
                          text: "Employee Name",
                          incrementSize: -7.w,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
