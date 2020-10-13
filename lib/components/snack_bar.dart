import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class SnackBars {
  static final Flushbar error = Flushbar(
    messageText: Text(
      'Selecione o sexo',
      style: TextStyle(color: Colors.white, fontSize: 18.0),
    ),
    duration: Duration(seconds: 3),
    icon: Icon(
      Icons.error,
      size: 25.0,
      color: Colors.white,
    ),
    margin: EdgeInsets.all(10.0),
    borderRadius: 10.0,
  );
}
