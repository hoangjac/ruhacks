import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterService {
  static final String _url =
      'https://us-central1-aiot-fit-xlab.cloudfunctions.net/servemequick';

  static Future<http.Response> post(String company_name, String industry,
      String address, String city, String email, String password) async {
    var map = new Map<String, dynamic>();
    map['grant_type'] = 'password';
    map['client_id'] =
        '3MVG9dZJodJWITSviqdj3EnW.LrZ81MbuGBqgIxxxdD6u7Mru2NOEs8bHFoFyNw_nVKPhlF2EzDbNYI0rphQL';
    map['client_secret'] =
        '42E131F37E4E05313646E1ED1D3788D76192EBECA7486D15BDDB8408B9726B42';
    map['username'] = 'example@mail.com.us';
    map['password'] = 'ABC1234563Af88jesKxPLVirJRW8wXvj3D';

    return await http.post(
      _url + "/adduser",
      body: map,
    );
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
