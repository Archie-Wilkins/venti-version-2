import 'dart:convert';

import 'package:flutter/material.dart';

class SubmitButton extends StatefulWidget {
  final void Function()? onPressed;
  final String label;

  SubmitButton.SubmitButton(this.onPressed, this.label);

  @override
  _SubmitButton createState() => _SubmitButton();
}

class _SubmitButton extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ButtonStyle(
            elevation: MaterialStateProperty.all<double>(0),
            backgroundColor: MaterialStateProperty.all(Colors.purpleAccent),
          ),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.label,
                style: Theme.of(context)
                    .textTheme
                    .labelSmall
              ),
            ),
          ),
        ),
      ),
    );
  }
}
