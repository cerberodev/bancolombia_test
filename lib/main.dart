import 'package:flutter/material.dart';
import 'package:test_project/widgets/bancolombia_home_page.dart';
import 'bancolombia_splash_page.dart';
import 'constants/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Project',
      theme: themeData,
      home: BancolombiaHomePage(),
    );
  }
}
