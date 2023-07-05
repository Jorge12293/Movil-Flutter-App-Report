import 'package:flutter/material.dart';


ThemeData buildAppTheme() => ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Montserrat',
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline2: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),

);


