import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:ruhacks/debug/helper/debug_helper.dart';
import 'package:ruhacks/modules/company/auth/bloc/register_bloc.dart';
import 'package:ruhacks/modules/company/employee/bloc/company_employee_bloc.dart';
import 'package:ruhacks/modules/company/home/screens/company_home.dart';
import 'package:ruhacks/theme/display.dart';
import 'package:ruhacks/theme/generic_button.dart';
import 'package:ansicolor/ansicolor.dart';
import 'package:ruhacks/theme/materialField.dart';

class Register extends StatefulWidget {
  static String route = "/register";

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isInit = false;
  @override
  void didChangeDependencies() {
    if (isInit == false) {
      isInit = true;
    }
    super.didChangeDependencies();
  }

  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _industry = TextEditingController();
  TextEditingController _companyName = TextEditingController();
  TextEditingController _companyAddress = TextEditingController();
  TextEditingController _emailAddress = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    RegisterBloc provider = Provider.of<RegisterBloc>(context, listen: false);
    CompanyEmployeeBloc provider2 =
        Provider.of<CompanyEmployeeBloc>(context, listen: false);

    ScreenUtil.init(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(100.h)),
              gradient: LinearGradient(
                  colors: [Color(0xFFF6F7FB), Color(0xfff6f7fb)])),
          child: Padding(
            padding: EdgeInsets.fromLTRB(80.w, 20.h, 80.w, 100.h),
            child: Form(
              key: _formKey,
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
                    isBold: true,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  MaterialField(
                    child: TextFormField(
                      controller: _companyName,
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
                        return value;
                      },
                      onSaved: (value) => provider.setcompany_name(value),

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
                    isBold: true,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  MaterialField(
                    child: TextFormField(
                      controller: _industry,
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
                        return value;
                      },
                      onSaved: (value) {
                        provider.setindustry(_industry.text);
                        print("here");
                      },

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
                    isBold: true,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  MaterialField(
                    child: TextFormField(
                      controller: _companyAddress,
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
                        return value;
                      },
                      onSaved: (value) => provider.setaddress(value),

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
                    isBold: true,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  MaterialField(
                    child: TextFormField(
                      controller: _emailAddress,
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
                      onSaved: (value) => provider.setmail(value),

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
                    isBold: true,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  MaterialField(
                    child: TextFormField(
                      controller: _password,
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
                      onSaved: (value) => provider.setpassword(value),

                      // child: Text("This is where your content goes")
                    ),
                  ),
                  SizedBox(
                    height: 90.h,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(350.w, 0, 0, 0),
                    child: GenericButton(
                        height: 140.h,
                        width: 450.w,
                        text: "Create an Account",
                        showPrimary: false,
                        action: () async {
                          provider.createCompanyUser(
                              address: _companyAddress.text,
                              city: "Toronto",
                              company_name: _companyName.text,
                              email: _emailAddress.text,
                              industry: _industry.text,
                              password: _password.text);

                          Navigator.of(context).pushNamed(CompanyHome.route);
                        }),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
