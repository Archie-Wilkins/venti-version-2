import 'package:Venti/Login/LoginView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Services/SecurePreferencesService.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  SecurePreferencesService _storageService = SecurePreferencesService();
  String errorMessage = "";

  void initState() {
    super.initState();
    print("Getting user logged in");
    getUserLoggedIn();
    print("user logged in");
  }

  void getUserLoggedIn() async {
    bool loggedIn = await _storageService.containsKeyInSecureData("authToken");
    print("Is user logged in");
    print(loggedIn);
    if (!loggedIn) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginView()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Text("Hello"),
          ],
        ),
      ),
    );
  }
}
