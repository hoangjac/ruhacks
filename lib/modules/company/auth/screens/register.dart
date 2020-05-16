import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhacks/modules/home/widgets/genericButton.dart';
import 'package:ruhacks/theme/display1.dart';
import 'package:ruhacks/theme/materialField.dart';

class Register extends StatefulWidget {
  static String route = "/register";

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                  colors: [Color(0xFFF6F7FB), Color(0xfff6f7fb)])),
          child: Padding(
            padding: EdgeInsets.fromLTRB(100.w, 20.h, 40.w, 100.h),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 30.h,
                ),
                Center(
                  child: Display(
                    display: 2,
                    text: "Create an account",
                    color: Color(0xFF414C60),
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
                Display(
                  text: "COMPANY NAME",
                  color: Color(0xFF414C60),
                  display: 4,
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
                        return 'Please provide a company name';
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
                  text: "INDUSTRY",
                  color: Color(0xFF414C60),
                  display: 4,
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
                        return 'Please provide an industry';
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
                  text: "COMPANY ADDRESS",
                  color: Color(0xFF414C60),
                  display: 4,
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
                  color: Color(0xFF414C60),
                  display: 4,
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
                        return 'Please provide a EMAIL ADDRESS';
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
                  text: "PASSWORD",
                  color: Color(0xFF414C60),
                  display: 4,
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
                  height: 90.h,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width / 4, 40.h, 40.w, 40.h),
                  child: GenericButton(
                    text: "Create account",
                    isBold: true,
                    color: Color(0XFffF7D56),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.h, vertical: 50.h),
                    action: () {
                    Navigator.of(context).pushNamed(routeName)
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
