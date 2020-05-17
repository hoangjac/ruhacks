import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhacks/theme/display.dart';
import 'package:ruhacks/theme/generic_body.dart';
import 'package:ruhacks/theme/generic_orders_card.dart';

class EmployeeOrders extends StatelessWidget {
  static const route = "/employeeOrders";
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          GenericBody(
            title: "My Orders",
          ),
          _header(context),
          Positioned(
              top: 260.h,
              child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int i) {
                        return Padding(
                          padding: EdgeInsets.fromLTRB(85.h, 10.h, 85.w, 10.h),
                          child: GenericOrdersCard(
                            height: 150.h,
                            width: MediaQuery.of(context).size.width,
                            text: "Customer Name",
                            isUrgent: true,
                          ),
                        );
                      }))),
          _pastOrders(context),
          Positioned(
              top: 1080.h,
              child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int i) {
                        return Padding(
                          padding: EdgeInsets.fromLTRB(85.h, 10.h, 85.w, 10.h),
                          child: GenericOrdersCard(
                            height: 150.h,
                            width: MediaQuery.of(context).size.width,
                            text: "Customer Name",
                          ),
                        );
                      }))),
          Positioned(
              top: 1705.h,
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: BottomNavigationBar(
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      title: Text('Home'),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person_outline),
                      title: Text('Profile'),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      title: Text('Settings'),
                    ),
                  ],
                ),
              ))
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
                      text: "In Progress",
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
                            text: "Current Orders",
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
                  height: 3,
                ),
              ],
            )));
  }

  _pastOrders(BuildContext context) {
    return Positioned(
        top: 1070.h,
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
                      text: "Past Orders",
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
                            text: "Completed",
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
                  height: 3,
                ),
              ],
            )));
  }
}
