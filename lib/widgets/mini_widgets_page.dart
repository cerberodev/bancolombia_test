import 'package:flutter/material.dart';
import 'package:test_project/widgets/bancolombia_app_bar.dart';

class MiniWidgetsPage extends StatefulWidget {
  @override
  _MiniWidgetsPageState createState() => _MiniWidgetsPageState();
}

class _MiniWidgetsPageState extends State<MiniWidgetsPage> {
  double _sliderValue = 0;
  bool _checkBoxValue = false;
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BancolombiaAppBar(
        appBarTitle: "Widgets",
      ),
      body: Column(
        children: [
          SliderTheme(
            data: SliderThemeData(
              inactiveTrackColor: Colors.red,
              activeTrackColor: Colors.yellow,
              thumbColor: Colors.black,
              showValueIndicator: ShowValueIndicator.always,
            ),
            child: Slider(
              min: 0,
              max: 99,
              value: _sliderValue,
              onChanged: (value) {
                _sliderValue = value;
                setState(() {});
              },
            ),
          ),
          Container(
            color: Colors.green,
            child: Checkbox(
              onChanged: (value) {
                _checkBoxValue = value;
                setState(() {});
              },
              value: _checkBoxValue,
            ),
          ),
          Container(
            color: Colors.green,
            child: Switch(
              onChanged: (value) {
                _switchValue = value;
                setState(() {});
              },
              value: _switchValue,
            ),
          ),
        ],
      ),
    );
  }
}
