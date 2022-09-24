import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Home/HomeView.dart';
import '../Home/SettingsView.dart';
import '../Login/LoginView.dart';
import '../Login/SignUpView.dart';

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static goToSignUpView() {
    Navigator.push(
      navigatorKey.currentContext!,
      MaterialPageRoute(builder: (context) => SignUpView()),
    );
  }

  static goToHomeView() {
    Navigator.push(
      navigatorKey.currentContext!,
      MaterialPageRoute(builder: (context) => HomeView()),
    );
  }

  static goToLoginView() {
    Navigator.push(
      navigatorKey.currentContext!,
      MaterialPageRoute(builder: (context) => LoginView()),
    );
  }

  static goToSettingsView() {
    Navigator.push(
      navigatorKey.currentContext!,
      MaterialPageRoute(builder: (context) => SettingsView()),
    );
  }
}
