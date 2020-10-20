import 'package:flutter/material.dart';
import 'package:test_project/widgets/bancolombia_app_bar.dart';

class CircleAvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BancolombiaAppBar(
        appBarTitle: "Widgets",
      ),
      body: GestureDetector(
        onTap: () {
          showDateRangePicker(
              context: context,
              firstDate: DateTime.parse("2012-12-12"),
              lastDate: DateTime.parse("2015-12-12"));
        },
        child: Container(
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 55,
            backgroundImage: AssetImage(
              "assets/logo.png",
            ),
          ),
        ),
      ),
    );
  }
}
