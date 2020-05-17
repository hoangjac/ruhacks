import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ruhacks/debug/helper/debug_helper.dart';
import 'package:ruhacks/services/service.dart';

class CompanyEmployeeBloc extends ChangeNotifier {
  String _companyId = "c37";
  String _employeeId;
  String _email;
  String _name;

  String get companyId => _companyId;
  void setcompany_Id(String value) {
    _companyId = value;
    notifyListeners();
  }

  String get employeeId => _companyId;
  void setemployee_Id(String value) {
    _employeeId = value;
    notifyListeners();
  }

  String get email => _email;
  void setemail(String value) {
    _email = value;
    notifyListeners();
  }

  String get name => _name;
  void setname(String value) {
    _name = value;
    notifyListeners();
  }

  void createEmployeeUser(String companyId, String email, String name) {
    Service.createEmployeeUser(companyId, email, name).then((value) {
      dynamic result = json.decode(value);
      setemployee_Id(result["employee_id"]);
      DebugHelper.green(result["employee_id"]);
    });
  }

  void createWorkFlow(String name, String customerName, String employee_id,
      String status, String isUrgent, String estComp) {
    Service.createWorkFlow(
            name, customerName, employee_id, status, isUrgent, estComp)
        .then((value) {
      dynamic result = json.decode(value);
      setemployee_Id(result["workflow_id"]);
      DebugHelper.green(result["workflow_id"]);
    });
  }
}
