import 'package:Venti/Services/SecurePreferencesService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Services/NavigationService.dart';
import 'EventInvitesView.dart';

class SettingsView extends StatefulWidget {
  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  SecurePreferencesService _storageService = SecurePreferencesService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text("Settings"),
                ElevatedButton(onPressed: logOut, child: Text("Log Out"))
              ],
            ),
          ),
        ));
  }

  logOut() async {
    //Deletes users auth token
    await _storageService.deleteSecureData("authToken");
    NavigationService.goToLoginView();
  }
}
