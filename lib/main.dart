import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:test_project/widgets/bancolombia_home_page.dart';
import 'constants/routes.dart';
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
      //routes: routes,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        //Locale('en'),
        Locale('es'),
        //Locale('es','CO'),
      ],
    );
  }
}
