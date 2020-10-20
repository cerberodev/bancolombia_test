import 'package:flutter/material.dart';
import 'package:test_project/widgets/bancolombia_home_page.dart';

Map<String, WidgetBuilder> routes = {
  Routes.HOME: (context) => BancolombiaHomePage(),
  Routes.HOME: (context) => BancolombiaHomePage(),
};

class Routes {
  static final String HOME = "/";
  static final String DEFAULT = "/default";
  static final String SPLASH = "/splash";
}
