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
                        String name = " ";
                        if (i == 0) {
                          name = "Jack C";
                        }
                        if (i == 1) {
                          name = "Sahal Mohammed";
                        }
                        if (i == 2) {
                          name = "Orrin Cruiz";
                        }
                        return Padding(
                          padding: EdgeInsets.fromLTRB(85.h, 10.h, 85.w, 10.h),
                          child: GenericOrdersAssignedCar(
                            height: 150.h,
                            width: MediaQuery.of(context).size.width,
                            text: name,
                            showAssign: false,
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
                          child: GenericOrdersAssignedCar(
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

class GenericOrdersAssignedCar extends StatelessWidget {
  final Color color;
  @required
  final String text;
  @required
  final String serviceName;

  @required
  final bool isUrgent;
  final bool showAssign;
  final double height;
  final double width;
  const GenericOrdersAssignedCar({
    this.color,
    this.text,
    this.height,
    this.width,
    this.serviceName,
    this.isUrgent,
    this.showAssign,
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
                              padding: EdgeInsets.fromLTRB(250.w, 9, 0, 0),
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
                ),
              ],
            )),
      ],
    );
  }
}
