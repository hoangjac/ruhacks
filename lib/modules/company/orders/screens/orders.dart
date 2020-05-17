import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhacks/theme/display.dart';
import 'package:ruhacks/theme/generic_body.dart';
import 'package:ruhacks/theme/generic_orders_assigned_card.dart';
import 'package:ruhacks/theme/generic_orders_card.dart';

class Orders extends StatelessWidget {
  static const route = "/orders";
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          GenericBody(
            title: "Current Orders",
          ),
          _header(context),
          Positioned(
              top: 220.h,
              child: Container(
                  height: 1000.h,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int i) {
                        return Padding(
                          padding: EdgeInsets.fromLTRB(85.h, 10.h, 85.w, 10.h),
                          child: GenericOrdersCard(
                            height: 240.h,
                            width: MediaQuery.of(context).size.width,
                            text: "Customer Name",
                            showAssign: true,
                            isUrgent: false,
                          ),
                        );
                      }))),
          _header2(context),
          Positioned(
              top: MediaQuery.of(context).size.height / 1.60,
              child: Container(
                  height: 1000.h,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int i) {
                        return Padding(
                          padding: EdgeInsets.fromLTRB(85.h, 10.h, 85.w, 10.h),
                          child: GenericOrdersAssignedCard(
                            height: 240.h,
                            width: MediaQuery.of(context).size.width,
                            text: "Customer Name",
                            isUrgent: false,
                          ),
                        );
                      }))),
        ],
      ),
    );
  }

  _header(BuildContext context) {
    return Positioned(
        top: 260.h,
        child: Container(
            height: 60.h,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Display(
                      display: 3,
                      incrementSize: 3.h,
                      text: "Outstanding",
                      color: Theme.of(context).primaryColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Row(
                        children: <Widget>[
                          Display(
                            display: 3,
                            incrementSize: 0,
                            text: "All Outstanding",
                            color: Color(0xFF848992),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 40.w,
                            color: Theme.of(context).primaryColor,
                          )
                        ],
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Container(
                  child: Divider(
                    color: Theme.of(context).primaryColor,
                  ),
                  width: MediaQuery.of(context).size.width / 1.17,
                  height: 0.1,
                ),
              ],
            )));
  }

  _header2(BuildContext context) {
    return Positioned(
        top: MediaQuery.of(context).size.height / 1.58,
        child: Container(
            height: 60.h,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Display(
                      display: 3,
                      incrementSize: 3.h,
                      text: "Assigned",
                      color: Theme.of(context).primaryColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Row(
                        children: <Widget>[
                          Display(
                            display: 3,
                            incrementSize: 0,
                            text: "All Assigned",
                            color: Color(0xFF848992),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 40.w,
                            color: Theme.of(context).primaryColor,
                          )
                        ],
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                Container(
                  child: Divider(
                    color: Theme.of(context).primaryColor,
                  ),
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 0.1,
                ),
              ],
            )));
  }
}
