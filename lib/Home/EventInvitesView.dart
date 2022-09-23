import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EventInvitesView extends StatefulWidget {
  @override
  _EventInvitesViewState createState() => _EventInvitesViewState();
}

class _EventInvitesViewState extends State<EventInvitesView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                "Coming Soon",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            Container(
              child: Text(
                "Event Invitations",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
