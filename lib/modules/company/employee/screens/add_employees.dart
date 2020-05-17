import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ruhacks/debug/helper/debug_helper.dart';
import 'package:ruhacks/modules/company/auth/bloc/register_bloc.dart';
import 'package:ruhacks/modules/company/auth/screens/register.dart';
import 'package:ruhacks/modules/company/employee/bloc/company_employee_bloc.dart';
import 'package:ruhacks/theme/display.dart';
import 'package:ruhacks/theme/generic_body.dart';
import 'package:ruhacks/theme/generic_button.dart';
import 'package:ruhacks/theme/materialField.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddEmployees extends StatefulWidget {
  static String route = "/addEmployees";

  AddEmployees({Key key}) : super(key: key);

  @override
  _AddEmployeesState createState() => _AddEmployeesState();
}

class _AddEmployeesState extends State<AddEmployees> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            GenericBody(
              title: "Add Employees",
            ),
            Form(
              key: _formKey,
              child: Positioned(
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
                          isBold: true,
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        MaterialField(
                          child: TextFormField(
                            controller: _name,
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
                                return 'Please provide a name';
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
                          isBold: true,
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        MaterialField(
                          child: TextFormField(
                            controller: _email,
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
                                return 'Please provide an email';
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
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 350.h),
                child: Container(
                  child: GenericButton(
                    height: 140.h,
                    width: 600.w,
                    text: "Add Employees",
                    showPrimary: false,
                    action: () {
                      RegisterBloc provider =
                          Provider.of<RegisterBloc>(context, listen: false);
                      CompanyEmployeeBloc provider2 =
                          Provider.of<CompanyEmployeeBloc>(context,
                              listen: false);

                      provider2.setcompany_Id(provider.company_id);
                      DebugHelper.green(
                          "here" + provider.company_id.toString());
                      provider2.createEmployeeUser(
                          provider.company_id, _email.text, _name.text);
                    },
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

/*
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
            */
