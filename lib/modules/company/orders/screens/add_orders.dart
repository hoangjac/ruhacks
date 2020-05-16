import 'package:flutter/material.dart';
import 'package:ruhacks/modules/company/auth/screens/register.dart';
import 'package:ruhacks/theme/display.dart';
import 'package:ruhacks/theme/generic_body.dart';
import 'package:ruhacks/theme/generic_button.dart';
import 'package:ruhacks/theme/materialField.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddOrders extends StatefulWidget {
  static String route = "/AddOrders";

  AddOrders({Key key}) : super(key: key);

  @override
  _AddOrdersState createState() => _AddOrdersState();
}

class _AddOrdersState extends State<AddOrders> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            GenericBody(
              title: "Add Orders",
            ),
            Positioned(
              top: 80.h,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(80.w, 20.h, 80.w, 100.h),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      SizedBox(
                        height: 60.h,
                      ),
                      Display(
                        text: "ORDER NAME",
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
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
                        text: "STEPS\n(2-10)",
                        color: Color(0xFF414C60),
                        display: 4,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Container(
                        height: ,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            itemCount: 2,
                            itemBuilder: (BuildContext context, int i) {
                              return Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: 40.h,
                                          ),
                                          Image.asset(
                                            "images/circle.png",
                                            height: 90.h,
                                            width: 120.w,
                                          ),
                                          Image.asset(
                                            "images/solid.png",
                                            height: 140.h,
                                          )
                                        ],
                                      ),
                                      Container(
                                        width: 700.w,
                                        child: MaterialField(
                                          child: TextFormField(
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: 'OpenSans',
                                            ),
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
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
                                      ),
                                    ],
                                  ));
                            }),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 50.w, 350.h),
                  child: Container(
                    width: 250.w,
                    height: 90.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(colors: <Color>[
                          Color(0xFFFF7D56),
                          Color(0xFFFF997A)
                        ]),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[500],
                            offset: Offset(0.0, 1.5),
                            blurRadius: 1.5,
                          ),
                        ]),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                          onTap: () =>
                              Navigator.pushNamed(context, Register.route),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  "Next",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 50.w,
                                ),
                              ],
                            )),
                          )),
                    ),
                  )),
            )
          ],
        ));
  }
}
