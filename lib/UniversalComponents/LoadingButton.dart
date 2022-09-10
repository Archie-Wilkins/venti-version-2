import 'dart:convert';

import 'package:flutter/material.dart';

class LoadingButton extends StatefulWidget {
  @override
  _LoadingButton createState() => _LoadingButton();
}

class _LoadingButton extends State<LoadingButton> {
  Color primaryColour = Colors.black;
  Color accentColour = Colors.grey.shade200;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all<double>(0),
            backgroundColor: MaterialStateProperty.all(Colors.purpleAccent),
          ),
          onPressed: () {},
          child: Container(child: () {
            return Padding(
              padding: const EdgeInsets.all(6.0),
              child: CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.white)),
            );
          }()),
        ),
      ),
    );
  }
}
