import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../DTOs/SecureStorage.dart';
import 'SecurePreferencesService.dart';

class AuthenticationService {
  SecurePreferencesService _storageService = SecurePreferencesService();

  Future<http.Response> signInRequest(String username, String password) async {
    var jsonBody = new Map<String, String>();
    String basicAuth =
        'Basic ${base64.encode(utf8.encode('$username:$password'))}';

    try {
      final response = await http
          .post(
        Uri.parse('http://' + '142.93.219.150:8080' + '/api/token'),
        headers: {
          'Authorization': basicAuth,
          "content-type": "application/json",
          "accept": "application/json",
        },
        body: jsonEncode(jsonBody),
      )
          .timeout(const Duration(seconds: 10), onTimeout: () {
        print("Timed out lol");
        return http.Response('No internet', 408); //Response for timeout
      });
      if (response.statusCode == 200) {
        final SecureStorage storageItem =
            SecureStorage("authToken", response.body);
        await _storageService.writeSecureData(storageItem);
      }
      return response;
    } on SocketException catch (e) {
      print("no internet");
      return http.Response('No internet', 408); //Response for timeout
    }
    ;
  }
}
