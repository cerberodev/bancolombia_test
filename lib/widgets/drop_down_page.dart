import 'package:flutter/material.dart';
import 'package:test_project/widgets/bancolombia_app_bar.dart';

class DropDownPage extends StatefulWidget {
  @override
  _DropDownPageState createState() => _DropDownPageState();
}

class _DropDownPageState extends State<DropDownPage> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BancolombiaAppBar(
        appBarTitle: "DropDown",
      ),
      body: Center(
        child: Container(
          child: Theme(
            data: ThemeData(
              canvasColor: Colors.red,
            ),
            child: DropdownButton(
              onChanged: (value) {
                _value = value;
                setState(() {});
              },
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text("Valor 1"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Valor 2"),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text("Valor 3"),
                  value: 3,
                ),
                DropdownMenuItem(
                  child: Text("Valor 4"),
                  value: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
