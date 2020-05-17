import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhacks/modules/company/home/screens/company_home.dart';
import 'package:ruhacks/theme/display.dart';
import 'package:ruhacks/theme/generic_button.dart';
import 'package:ruhacks/theme/materialField.dart';

class EmployeeLogin extends StatefulWidget {
  static String route = "/employeeLogin";

  @override
  _EmployeeLoginState createState() => _EmployeeLoginState();
}

class _EmployeeLoginState extends State<EmployeeLogin> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    print("here");
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(100.h)),
              gradient: LinearGradient(
                  colors: [Color(0xff4C5AE8), Color(0xff4C5AE8)])),

          //                           padding: EdgeInsets.fromLTRB(80.w, 20.h, 80.w, 100.h),

//           padding: EdgeInsets.fromLTRB(100.w, 20.h, 40.w, 100.h),

          child: Padding(
            padding: EdgeInsets.fromLTRB(80.w, 20.h, 80.w, 100.h),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 260.h,
                ),
                Center(
                  child: Text(
                    "Trackio",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Text(
                    "Employee Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 120.h,
                ),
                Display(
                  text: "EMPLOYEE ID",
                  color: Color(0xFFFFFFFF),
                  display: 4,
                  isBold: true,
                ),
                SizedBox(
                  height: 25.h,
                ),
                MaterialField(
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'OpenSans',
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            width: 1,
                          )),
                    ),
                    keyboardType: TextInputType.text,
                    showCursor: true,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please provide a company address';
                      }
                      return null;
                    },
                    onSaved: (value) {},
                    // child: Text("This is where your content goes")
                  ),
                ),
                SizedBox(
                  height: 60.h,
                ),
                Display(
                  text: "EMAIL ADDRESS",
                  color: Color(0xFFFFFFFF),
                  display: 4,
                  isBold: true,
                ),
                SizedBox(
                  height: 25.h,
                ),
                MaterialField(
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'OpenSans',
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            width: 1,
                          )),
                    ),
                    keyboardType: TextInputType.text,
                    showCursor: true,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please provide a passsword name';
                      }
                      return null;
                    },
                    onSaved: (value) {},

                    // child: Text("This is where your content goes")
                  ),
                ),
                SizedBox(
                  height: 150.h,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(100.w, 0, 120.w, 0),
                  child: GenericButton(
                    height: 140.h,
                    width: 450.w,
                    text: "Login",
                    isBold: true,
                    showPrimary: false,
                    action: () =>
                        Navigator.of(context).pushNamed(CompanyHome.route),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
