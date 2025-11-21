import 'package:flutter/material.dart';

class AuthBtn extends StatelessWidget {
  final Color backgroundColors;
  final String btnName;
  final Function onPrees;
  AuthBtn(this.backgroundColors, this.btnName, this.onPrees);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColors,
        foregroundColor: Colors.white,
      ),
      onPressed: () => onPrees(),
      child: Text(btnName, style: TextStyle(height: 3.0, fontSize: 18.0)),
    );
  }
}
