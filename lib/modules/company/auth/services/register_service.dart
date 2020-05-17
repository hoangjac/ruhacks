import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class RegisterService {
  static final String _url = 'https://jsonplaceholder.typicode.com/posts';
  static final Map<String, String> _headers = {
    "Content-Type": "application/json",
  };

  static Future<http.Response> createCompanyUser(
      String company_name,
      String industry,
      String address,
      String city,
      String email,
      String password) async {
    /*
  {
   "company_name":"godfatherpizza",
   "industry":"food",
   "address":"ur momma house",
   "city":"vancouver",
   "email":"test@test.com",
   "password":"password"
}
        */

    // set up POST request arguments
    // set up POST request arguments
    String url = 'https://jsonplaceholder.typicode.com/posts';
    Map<String, String> headers = {"Content-type": "application/json"};
    String json = '{"title": "Hello", "body": "body text", "userId": 1}';
    // make POST request
    return post(url, headers: headers, body: json);
    // check the status code for the result

    // {
    //   "title": "Hello",
    //   "body": "body text",
    //   "userId": 1,
    //   "id": 101
    // }
    // {
    //   "title": "Hello",
    //   "body": "body text",
    //   "userId": 1,
    //   "id": 101
    // }
  }

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
