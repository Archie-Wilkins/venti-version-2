import 'package:Venti/Services/SecurePreferencesService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Services/NavigationService.dart';
import 'EventInvitesView.dart';

class UsersEventsView extends StatefulWidget {
  @override
  _UsersEventsViewState createState() => _UsersEventsViewState();
}

class _UsersEventsViewState extends State<UsersEventsView> {
  SecurePreferencesService _storageService = SecurePreferencesService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              const Text("Events"),
              GestureDetector(
                  onTap: redirectToSettings, child: Icon(Icons.settings)),
            ],
          ),
        ),
      ),
    );
  }

  logOut() {
    print("logging out");
  }

  redirectToSettings() {
    NavigationService.goToSettingsView();
  }
}
