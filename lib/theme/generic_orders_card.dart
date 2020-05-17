import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhacks/theme/display.dart';

class GenericOrdersCard extends StatelessWidget {
  final Color color;
  @required
  final String text;
  @required
  final String serviceName;
  @required
  final bool showAssign;
  final Function actionAssign;
  @required
  final bool isUrgent;

  final double height;
  final double width;
  const GenericOrdersCard({
    this.color,
    this.text,
    this.height,
    this.width,
    this.serviceName,
    this.showAssign,
    this.isUrgent,
    this.actionAssign,
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
                      Icon(
                        Icons.person,
                        color: Theme.of(context).primaryColor,
                      ),
                      Display(
                        color: Theme.of(context).primaryColor,
                        display: 3,
                        text: text,
                        incrementSize: 0.w,
                      ),
                      isUrgent == true
                          ? Padding(
                              padding: EdgeInsets.fromLTRB(200.w, 9, 0, 0),
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
                  height: 10,
                ),
                showAssign == true
                    ? GestureDetector(
                        onTap: actionAssign,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 50.w,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Display(
                                color: Theme.of(context).primaryColor,
                                display: 3,
                                text: "Assign",
                                incrementSize: 0.w,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 40.w,
                                color: Theme.of(context).primaryColor,
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container()
              ],
            )),
      ],
    );
  }
}
