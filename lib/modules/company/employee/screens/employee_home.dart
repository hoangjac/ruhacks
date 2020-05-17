import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhacks/modules/company/employee/screens/add_employees.dart';
import 'package:ruhacks/modules/company/employee/widgets/generic_card.dart';
import 'package:ruhacks/modules/company/orders/screens/add_orders.dart';
import 'package:ruhacks/theme/display.dart';

class EmployeeHome extends StatelessWidget {
  static String route = "/employeePortal";

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
                text: "Employee Portal",
                color: Theme.of(context).primaryColor,
                display: 2,
                incrementSize: 5.h,
              ),
            ),
            SizedBox(
              height: 90.h,
            ),
            GenericCard(
              height: 350.h,
              width: 900.w,
              action: () {},
              text: "My Orders",
              // image: "images/orders.png",
              //imgHeight: 350.h,
              //imgWidth: 500.w,
            ),
            SizedBox(
              height: 90.h / 2,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: FittedBox(
                child: Row(
                  children: <Widget>[
                    GenericCard(
                      height: 350.h,
                      width: 425.w,
                      action: () =>
                          Navigator.pushNamed(context, AddOrders.route),
                      text: "Analytics",
                      // image: "images/addorders.png",
                      //imgHeight: 300.h,
                      //imgWidth: 400.w,
                    ),
                    SizedBox(
                      width: 90.w / 2,
                    ),
                    GenericCard(
                      height: 350.h,
                      width: 425.w,
                      action: () =>
                          Navigator.pushNamed(context, AddEmployees.route),
                      text: "Reviews",
                      //image: "images/addemployee.png",
                      //imgHeight: 250.h,
                      //imgWidth: 350.w,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
    );
  }
}
