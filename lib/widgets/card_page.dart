import 'package:flutter/material.dart';
import 'package:test_project/widgets/bancolombia_app_bar.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BancolombiaAppBar(
        appBarTitle: "Card",
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Card(
            child: Text("Hola mundo"),
          ),
        ),
      ),
    );
  }
}
