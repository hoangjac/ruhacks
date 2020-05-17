import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:ruhacks/modules/company/employee/screens/add_employees.dart';
import 'package:ruhacks/modules/company/home/screens/company_home.dart';
import 'package:ruhacks/modules/company/orders/screens/add_orders.dart';
import 'package:ruhacks/modules/company/orders/screens/orders.dart';
import 'package:ruhacks/theme/appTheme.dart';

import 'modules/company/auth/screens/register.dart';
import 'modules/home/screens/home.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [],
        child: MaterialApp(
          home: Home(),
          debugShowCheckedModeBanner: false,
          theme: AppTheme.themeData,
          routes: {
            Register.route: (context) => Register(),
            Orders.route: (context) => Orders(),
            CompanyHome.route: (context) => CompanyHome(),
            AddEmployees.route: (context) => AddEmployees(),
            AddOrders.route: (context) => AddOrders()
          },
        ));
  }
}
/*
MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      routes: {
        Register.route: (context) => Register(),
        Orders.route: (context) => Orders(),
        CompanyHome.route: (context) => CompanyHome(),
        AddEmployees.route: (context) => AddEmployees(),
        AddOrders.route: (context) => AddOrders()
      },
    );
*/
