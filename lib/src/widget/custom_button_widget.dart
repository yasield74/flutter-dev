import 'package:flutter/material.dart';

class CustonButton extends StatelessWidget {
  final String title;
  final Color buttonColor;
  final Color textColor;
  final Function onPressed;
  final double elevation;

  CustonButton(
      {this.title = "",
      this.buttonColor,
      this.textColor,
      this.onPressed,
      this.elevation = 0});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        onPrimary: textColor,
        primary: buttonColor,
        elevation: elevation,
        minimumSize: Size(150, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      onPressed: onPressed,
    );
  }
}
