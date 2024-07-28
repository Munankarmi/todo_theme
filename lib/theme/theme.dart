import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
      colorScheme:const ColorScheme.light(
    background: Colors.lightBlueAccent,
        primary: Colors.lightBlue,
        secondary: Colors.blueGrey
)

);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade900,
    primary: Colors.blueGrey,
    secondary: Colors.grey
  )
);