import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String label;
  final String hintText;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final bool isPassword;
  final bool isEmail;
  final TextInputAction textInputAction;

  TextInput({
    required this.label,
    required this.hintText,
    required this.validator,
    required this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
    this.textInputAction = TextInputAction.done,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        style: Theme.of(context).textTheme.labelMedium,
        decoration: InputDecoration(
          label: Text(label),
          hintText: hintText,
        ),
        obscureText: isPassword ? true : false,
        validator: validator,
        onSaved: onSaved,
        textInputAction: textInputAction,
      ),
    );
  }
}
