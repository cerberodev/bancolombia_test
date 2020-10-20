import 'package:flutter/material.dart';
import 'package:test_project/widgets/bancolombia_app_bar.dart';

class MiniWidgetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BancolombiaAppBar(
        appBarTitle: "Widgets",
      ),
      body: Container(),
    );
  }
}
