import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:Venti/DTOs/NewUser.dart';
import 'package:Venti/Services/AuthenticationService.dart';
import 'package:http/http.dart' as http;

import '../Login/SignUpView.dart';
import 'NavigationService.dart';

class SignUpService {
  Future<http.Response> signUnRequest(NewUser newUser) async {
    var jsonBody = new Map<String, String>();
    //add body data
    jsonBody["firstName"] = newUser.firstName;
    jsonBody["lastName"] = newUser.lastName;
    jsonBody["email"] = newUser.emailAddress;
    jsonBody["phoneNumber"] = newUser.phoneNumber;
    jsonBody["password"] = newUser.password;

    try {
      final response = await http
          .post(
        Uri.parse('http://' + '142.93.219.150:8080' + '/api/user'),
        headers: {
          "content-type": "application/json",
          "accept": "application/json",
        },
        body: jsonEncode(jsonBody),
      )
          .timeout(const Duration(seconds: 10), onTimeout: () {
        print("Timed out lol");
        return http.Response('No internet', 408); //Response for timeout
      });
      print("Responding");
      print(response.body);

      if (response.statusCode == 200) {
        AuthenticationService authenticationService = AuthenticationService();
        var responseData = jsonDecode(response.body);
        String username = newUser.emailAddress;
        String password = newUser.password;
        var authenticationResponse =
            await authenticationService.signInRequest(username, password);
        if (authenticationResponse.statusCode == 200) {
          NavigationService.goToHomeView();
        }
      }
      return response;
    } on SocketException catch (e) {
      print("no internet");
      return http.Response('No internet', 408); //Response for timeout
    }
    ;
  }
}
