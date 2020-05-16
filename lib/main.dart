import 'package:flutter/material.dart';

import 'modules/login/screens/Register.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Register(),
    );
  }
}
