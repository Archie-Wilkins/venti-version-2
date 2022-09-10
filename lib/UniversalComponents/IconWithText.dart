import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final String label;
  final IconData displayIcon;
  final iconColour;
  final textColour;
  final double textSize;
  Color primaryColour = Colors.black;
  Color accentColour = Colors.grey.shade200;

  IconWithText(
      {required this.label,
      required this.textSize,
      required this.displayIcon,
      required this.iconColour,
      required this.textColour});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 30,
          child: Icon(
            displayIcon,
            color: iconColour,
            size: 20.0,
          ),
        ),
        Flexible(
          child: Text(
            label,
            style: TextStyle(
              color: textColour,
              fontSize: textSize,
            ),
          ),
        ),
      ],
    );
  }
}
