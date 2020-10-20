import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utils {
  Future<List<String>> getJsonData(BuildContext context) async {
    String jsonData =
        await DefaultAssetBundle.of(context).loadString("assets/data.json");
    Map jsonMap = json.decode(jsonData);
    List<String> users = List<String>();
    List jsonUsers = jsonMap["users"];
    jsonUsers.forEach((element) {
      users.add(element);
    });
    return users;
  }

  void goToScreen(BuildContext context, Widget widget) {
    MaterialPageRoute route =
        MaterialPageRoute(builder: (BuildContext context) {
      return widget;
    });
    Navigator.of(context).push(route);
  }

  void goToScreenNamed(BuildContext context, String string) {
    Navigator.of(context).pushNamed(string);
  }

  void goToScreenReplacement(BuildContext context, Widget widget) {
    MaterialPageRoute route =
        MaterialPageRoute(builder: (BuildContext context) {
      return widget;
    });
    Navigator.of(context).pushReplacement(route);
  }

  void goToScreenReplacementNamed(BuildContext context, String string) {
    Navigator.of(context).pushReplacementNamed(string);
  }

  void returnToScreen(BuildContext context) {
    Navigator.of(context).pop();
  }
}
