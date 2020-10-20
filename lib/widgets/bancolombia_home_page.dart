import 'package:flutter/material.dart';
import 'package:test_project/utils/utils.dart';
import 'package:test_project/widgets/bancolombia_app_bar.dart';

import 'card_page.dart';
import 'drop_down_page.dart';
import 'image_page.dart';

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
            ),
            RaisedButton(
              child: Text("Image-FadeImage"),
              onPressed: () {
                Utils().goToScreen(
                  context,
                  ImagePage(),
                );
              },
            ),
            RaisedButton(
              child: Text("Datepick"),
              onPressed: () async {
                DateTime time = await showDatePicker(
                  context: context,
                  initialDate: DateTime.parse("2012-11-11"),
                  firstDate: DateTime.parse("2012-01-01"),
                  lastDate: DateTime.parse("2012-12-12"),
                );
                print(time);
              },
            ),
            RaisedButton(
              child: Text("Alert"),
              onPressed: () async {
                String result = await showDialog(
                    context: context,
                    barrierDismissible: false,
                    child: AlertDialog(
                      title: Text("Hola mundo"),
                      content: Text("estas seguro cerrar sesion?"),
                      actions: [
                        FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop("Hola mundo");
                            },
                            child: Text("Cancelar")),
                        FlatButton(onPressed: () {}, child: Text("Aceptar"))
                      ],
                    ));
                print(result);
              },
            ),
            RaisedButton(
              child: Text("DropDown"),
              onPressed: () {
                Utils().goToScreen(
                  context,
                  DropDownPage(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
