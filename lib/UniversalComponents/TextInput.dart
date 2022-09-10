import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String label;
  final String hintText;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final bool isPassword;
  final bool isEmail;
  Color primaryColour = Colors.black;
  Color accentColour = Colors.grey.shade200;

  TextInput({
    required this.label,
    required this.hintText,
    required this.validator,
    required this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          fillColor: accentColour,
          label: Text(label),
          labelStyle: TextStyle(
            color: primaryColour,
          ),
          hintText: hintText,
          // focusedBorder: UnderlineInputBorder(
          //   borderSide: const BorderSide(color: Colors.purpleAccent),
          // ),
        ),
        obscureText: isPassword ? true : false,
        validator: validator,
        onSaved: onSaved,
      ),
    );
  }
}
