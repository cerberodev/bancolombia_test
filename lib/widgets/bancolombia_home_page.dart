import 'package:flutter/material.dart';
import 'package:test_project/utils/utils.dart';
import 'package:test_project/widgets/bancolombia_app_bar.dart';

import 'card_page.dart';

class BancolombiaHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BancolombiaAppBar(
        appBarTitle: "Widgets",
      ),
      body: Container(
        child: ListView(
          children: [
            RaisedButton(
              onPressed: () {
                Utils().goToScreen(
                  context,
                  CardPage(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
