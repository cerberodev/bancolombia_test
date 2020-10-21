import 'package:flutter/material.dart';
import 'package:test_project/constants/colors.dart';

ThemeData themeData = ThemeData(
  primarySwatch: Colors.blue,
  accentColor: BancolombiaColors.brilliantRed,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

ThemeData darkthemeData = ThemeData(
  brightness: Brightness.dark,
  //primarySwatch: Colors.yellow,
  accentColor: BancolombiaColors.brilliantRed,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
