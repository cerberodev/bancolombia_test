import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_project/widgets/bancolombia_home_page.dart';
import 'constants/theme.dart';

const darkModeBox = 'darkModeTutorial';
void main() async {
  await Hive.initFlutter();
  await Hive.openBox(darkModeBox);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Project',
      theme: themeData,
      darkTheme: ThemeData(brightness: Brightness.dark),
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
