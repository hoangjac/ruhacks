import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhacks/theme/display.dart';
import 'package:ruhacks/theme/generic_body.dart';
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
            title: "Orders",
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
                          padding: EdgeInsets.fromLTRB(85.h, 40.h, 85.w, 40.h),
                          child: GenericOrdersCard(
                            height: 250.h,
                            width: MediaQuery.of(context).size.width,
                            text: "Customer Name",
                            action: () {},
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
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 0.1,
                ),
              ],
            )));
  }
}
