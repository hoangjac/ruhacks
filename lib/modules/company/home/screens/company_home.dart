import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhacks/modules/company/employee/screens/add_employees.dart';
import 'package:ruhacks/modules/company/employee/screens/employee_home.dart';
import 'package:ruhacks/modules/company/home/widgets/generic_card.dart';
import 'package:ruhacks/modules/company/orders/screens/add_orders.dart';
import 'package:ruhacks/modules/company/orders/screens/orders.dart';
import 'package:ruhacks/theme/display.dart';

class CompanyHome extends StatefulWidget {
  static String route = "/companyPortal";

  CompanyHome({Key key}) : super(key: key);

  @override
  _CompanyHomeState createState() => _CompanyHomeState();
}

class _CompanyHomeState extends State<CompanyHome> {
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
                incrementSize: 5.h,
              ),
            ),
            SizedBox(
              height: 90.h,
            ),
            GenericCard(
              height: 350.h,
              width: 900.w,
               action: () =>
                          Navigator.pushNamed(context, Orders.route),
              text: "Orders",
              image: "images/orders.png",
              imgHeight: 350.h,
              imgWidth: 900.w,
              x_align: 1.0,
              y_align: 0.0,
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
                      text: "Add Orders",
                      image: "images/addorders.png",
                      imgHeight: 350.h,
                      imgWidth: 400.w,
                      x_align: 0.0,
                      y_align: 0.2,
                    ),
                    SizedBox(
                      width: 90.w / 2,
                    ),
                    GenericCard(
                      height: 350.h,
                      width: 425.w,
                      action: () =>
                          Navigator.pushNamed(context, AddEmployees.route),
                      text: "Add\nEmployees",
                      image: "images/addemployee.png",
                      imgHeight: 140,
                      imgWidth: 145,
                      x_align: 0.0,
                      y_align: 0.7,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 45.h,
            ),
            GenericCard(
              height: 350.h,
              width: 900.w,
              action: () {},
              text: "Analytics",
              image: "images/analytics.png",
              imgHeight: 350.h,
              imgWidth: 900.w,
              x_align: 0.0,
              y_align: 0.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          print(index);
          if (index == 1) {
            Navigator.of(context).pushNamed(EmployeeHome.route);
            setState(() {});
          }
        },
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
