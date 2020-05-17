import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ruhacks/modules/company/auth/bloc/register_bloc.dart';
import 'package:ruhacks/modules/company/employee/screens/add_employees.dart';
import 'package:ruhacks/modules/company/home/screens/company_home.dart';
import 'package:ruhacks/modules/company/orders/screens/add_orders.dart';
import 'package:ruhacks/modules/company/orders/screens/orders.dart';
import 'package:ruhacks/theme/appTheme.dart';
import 'package:ruhacks/modules/company/employee/screens/employee_login.dart';
import 'package:ruhacks/modules/company/employee/screens/employee_home.dart';
import 'package:ruhacks/modules/company/employee/screens/employee_orders.dart';

import 'modules/company/auth/screens/register.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: RegisterBloc()),
        ],
        child: MaterialApp(
          home: Orders(),
          debugShowCheckedModeBanner: false,
          theme: AppTheme.themeData,
          routes: {
            Register.route: (context) => Register(),
            Orders.route: (context) => Orders(),
            CompanyHome.route: (context) => CompanyHome(),
            AddEmployees.route: (context) => AddEmployees(),
            AddOrders.route: (context) => AddOrders(),
            EmployeeLogin.route: (context) => EmployeeLogin(),
            EmployeeHome.route: (context) => EmployeeHome(),
            EmployeeOrders.route: (context) => EmployeeOrders(),
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
