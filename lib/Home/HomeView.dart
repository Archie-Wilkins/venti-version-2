import 'package:Venti/Home/UsersEventsView.dart';
import 'package:Venti/Services/SecurePreferencesService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Services/NavigationService.dart';
import 'EventInvitesView.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  SecurePreferencesService _storageService = SecurePreferencesService();

  void initState() {
    super.initState();
    checkUserAuthenticated();
  }

  void checkUserAuthenticated() async {
    bool loggedIn = await _storageService.containsKeyInSecureData("authToken");
    if (!loggedIn) {
      NavigationService.goToLoginView();
    }
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    //Home dashboard
    UsersEventsView(),
    //Create new events
    Text("Create New Event"),

    //Users invited events
    EventInvitesView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'New Event',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Invites',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purpleAccent,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
