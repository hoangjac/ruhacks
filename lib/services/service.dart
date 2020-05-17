import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Service {
  static final Map<String, String> _postHeaders = {
    "Content-Type": "application/json",
    'cache-control': 'no-cache',
  };
  static final Map<String, String> _getHeaders = {
    "Content-Type": "plain/text",
    'cache-control': 'no-cache',
  };

  static Future<String> createCompanyUser(String company_name, String industry,
      String address, String city, String email, String password) async {
    {
      // set up POST request arguments
      String url =
          'https://us-central1-aiot-fit-xlab.cloudfunctions.net/servemequickadduser';
      String json =
          '{"company_name": "$company_name", "industry": "$industry text", "address": "$address", "city": "$city", "email":"$email", "password":"$password"}';
      Map<String, String> headers = {"Content-type": "application/json"};

      // make POST request
      Response response = await post(url, headers: _postHeaders, body: json);
      // check the status code for the result
      int statusCode = response.statusCode;
      // this API passes back the id of the new item added to the body
      String body = response.body;

      return response.body;
    }
  }

  static Future<String> createEmployeeUser(
      String company_id, String email, String name) async {
    {
      // set up POST request arguments
      String url =
          "https://us-central1-aiot-fit-xlab.cloudfunctions.net/servemequickaddemployee";
      String json =
          '{"company_id": "$company_id", "email": "$email", "name": "$name"   }';
      Map<String, String> headers = {"Content-type": "application/json"};
      // make POST request
      Response response = await post(url, headers: _postHeaders, body: json);
      // check the status code for the result
      int statusCode = response.statusCode;
      // this API passes back the id of the new item added to the body
      String body = response.body;

      return response.body;
    }
  }

  static Future<String> createWorkFlow(
      String name,
      String customerName,
      String employee_id,
      String status,
      String isUrgent,
      String estComp) async {
    // set up POST request arguments
    String url =
        "https://us-central1-aiot-fit-xlab.cloudfunctions.net/servemequickaddworkflow";
    String json =
        '{"name": "$name", "customerName": "$customerName", "employee_id": "$employee_id", "status": "$status", "isUrgent": "$isUrgent", "est_comp": "$estComp"  }';
    Map<String, String> headers = {"Content-type": "application/json"};
    // make POST request
    Response response = await post(url, headers: _postHeaders, body: json);
    // check the status code for the result
    int statusCode = response.statusCode;
    // this API passes back the id of the new item added to the body
    String body = response.body;
    return response.body;
  }

/*
  static Future<String> createWorkFlow() async {
    {
      // set up POST request arguments
      String url =
          'https://us-central1-aiot-fit-xlab.cloudfunctions.net/servemequickaddworkflow';
      
      
      String json =
          '{"company_name": "$company_name", "industry": "$industry text", "address": "$address", "city": "$city", "email":"$email", "password":"$password"}';
      Map<String, String> headers = {"Content-type": "application/json"};

      // make POST request
      Response response = await post(url, headers: _postHeaders, body: json);
      // check the status code for the result
      int statusCode = response.statusCode;
      // this API passes back the id of the new item added to the body
      String body = response.body;
      return response.body;
    }
  }
  */
  /*

//API Returns Type Futre Map because json is a key-value pair that may come in the future
  Future<Map> getWeatherAPI(String appID, String city) async {
    //Need to add https
    String endpont =
        "https://api.openweathermap.org/data/2.5/weather?q=$city&APPID=$appID&units=metric";

    http.Response getJson = await http.get(endpont);
    return json.decode(getJson.body);
  }
}
  */
}
