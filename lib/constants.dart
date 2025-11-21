import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(28.0)),
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(28.0)),
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
  ),
  disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(28.0)),
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
  ),
);
