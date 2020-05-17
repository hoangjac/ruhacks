import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ruhacks/debug/helper/debug_helper.dart';
import 'package:ruhacks/services/service.dart';

class RegisterBloc extends ChangeNotifier {
  String _company_name;
  String _industry;
  String _address;
  String _city;
  String _email;
  String _password;
  String _companyId;

  String get company_name => _company_name;

  void setcompany_name(String value) {
    _company_name = value;
    notifyListeners();
  }

  String get industry => _industry;

  void setindustry(String value) {
    _industry = value;
    print("hereeee");
    notifyListeners();
  }

  String get address => _address;

  void setaddress(String value) {
    _address = value;
    notifyListeners();
  }

  String get city => _city;

  void setcity(String value) {
    _city = value;
    DebugHelper.white(_city);
    notifyListeners();
  }

  get email => _email;

  void setmail(String value) {
    _email = value;
    notifyListeners();
  }

  String get password => _password;

  void setpassword(String value) {
    _password = value;
    notifyListeners();
  }

  void setId(String value) {
    _companyId = value;
    notifyListeners();
  }

  String get company_Id => _companyId;

  void createCompanyUser(
      {String company_name,
      String industry,
      String address,
      String city,
      String email,
      String password}) {
    if (company_name == null) {
      DebugHelper.red("null");
    }
    Service.createCompanyUser(
            company_name, industry, address, city, email, password)
        .then((value) {
      setcompany_name(company_name);
      setaddress(address);
      setcity(city);
      setmail(email);
      setpassword(password);

      Map<String, dynamic> body = json.decode(value);
      setId(body["company_id"]);
      DebugHelper.green(
          company_name + industry + address + city + email + password);
    });
  }
}
