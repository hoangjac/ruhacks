import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhacks/modules/company/home/screens/company_home.dart';
import 'package:ruhacks/theme/appTheme.dart';

import 'modules/company/auth/screens/register.dart';
import 'modules/home/screens/home.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CompanyHome(),
      theme: AppTheme.themeData,
      routes: {
        Register.route: (context) => Register(),
        CompanyHome.route: (context) => CompanyHome()
      },
    );
  }
}
