import 'package:flutter/material.dart';

Color primaryColor = const Color(0xFF4A3AFF);
Color secondaryColor = const Color(0xFFF3F1FF);
Color bodyTextColor = const Color(0xFF6F6C90);

final ThemeData myTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    colorScheme: ColorScheme.fromSwatch(accentColor: secondaryColor),
    fontFamily: 'Georgia',
    textTheme: TextTheme(
      headline1: const TextStyle(fontSize: 50.0, fontWeight: FontWeight.w700),
      headline2: const TextStyle(fontSize: 34.0, fontWeight: FontWeight.w700),
      headline3: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
      headline4: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700),
      headline5: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
      headline6: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
      bodyText1: TextStyle(fontSize: 24.0, color: bodyTextColor),
      bodyText2: TextStyle(fontSize: 14.0, color: bodyTextColor),
    ));
