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
                        text: "NAME",
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
                        text: "EMAIL",
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
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 350.h),
                child: Container(
                  child: GenericButton(
                    height: 140.h,
                    width: 600.w,
                    text: "Next",
                    showPrimary: false,
                    action: () {},
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
