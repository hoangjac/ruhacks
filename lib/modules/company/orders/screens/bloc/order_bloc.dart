import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ruhacks/services/service.dart';

class OrderBloc extends ChangeNotifier {
  String _name;

  String get name => _name;

  void setname(String value) => _name = value;
  String _customerName;
  String get customerName => _customerName;

  void setcustomerName(String value) => _customerName = value;
  String _employeeId;

  String get employeeId => _employeeId;

  void setemployeeId(String value) => _employeeId = value;
  String _status;
  String get status => _status;

  voidsettatus(String value) => _status = value;
  String _isUrgent;

  String get isUrgent => _isUrgent;

  void setUrgent(String value) => _isUrgent = value;
  String _estComp;

  String get estComp => _estComp;

  void sestComp(String value) => _estComp = value;

  void createOrder(String name, String customerName, String employee_id,
      String status, String isUrgent, String estComp) {
    Service.createWorkFlow(
            name, customerName, employee_id, status, isUrgent, estComp)
        .then((value) {
      dynamic result = json.decode(value);
      setemployee_Id(result["employee_id"]);
      DebugHelper.green(result["employee_id"]);
    });
  }
}
