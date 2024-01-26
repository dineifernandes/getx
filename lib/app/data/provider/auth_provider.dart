import 'dart:convert';

import 'package:barberapp/app/data/base_url.dart';
import 'package:http/http.dart' as http;

class AuthApiClient {
  Future<Map<String, dynamic>> login(String username, String password) async {
    try {
      var response = await http.post(
        Uri.http("$baseUrl/login"),
        body: {
          "username": username,
          "password": password,
        },
      );

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        print("erro -get: ${response.body}");
      }
    } catch (error) {
      print(error);
    }

    return Future.value(null);
  }
}
