import 'dart:convert';

import 'package:flutter/cupertino.dart';

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
}
