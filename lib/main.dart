import 'package:flutter/material.dart';
import 'package:ruhacks/theme/appTheme.dart';

import 'modules/auth/screens/register.dart';
import 'modules/home/screen/home.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: AppTheme.themeData,
      routes: {Register.route: (context) => Register()},
    );
  }
}
