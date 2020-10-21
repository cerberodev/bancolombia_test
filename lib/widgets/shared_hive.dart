import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_project/widgets/bancolombia_app_bar.dart';

const darkModeBox = 'darkModeTutorial';

class SharedHivePage extends StatefulWidget {
  SharedHivePage({Key key}) : super(key: key);

  @override
  _SharedHivePageState createState() => _SharedHivePageState();
}

class _SharedHivePageState extends State<SharedHivePage> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<int> _counter;

  Future<void> _incrementCounter() async {
    final SharedPreferences prefs = await _prefs;
    final int counter = (prefs.getInt('counter') ?? 0) + 1;

    setState(() {
      _counter = prefs.setInt('counter', counter).then((bool success) {
        return counter;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _counter = _prefs.then((SharedPreferences prefs) {
      return (prefs.getInt('counter') ?? 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box(darkModeBox).listenable(),
      builder: (context, box, widget) {
        var darkMode = box.get('darkMode', defaultValue: false);
        return MaterialApp(
          themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
          darkTheme: ThemeData.dark(),
          home: Scaffold(
            appBar: BancolombiaAppBar(
              appBarTitle: "Shared Hive",
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Switch(
                      value: darkMode,
                      onChanged: (val) {
                        box.put('darkMode', !darkMode);
                      }),
                  FutureBuilder(
                    future: _counter,
                    builder: (_, AsyncSnapshot<int> snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.waiting:
                          return const CupertinoActivityIndicator();
                        default:
                          if (snapshot.hasError) {
                            return AlertDialog(
                              title: Text('Error: ${snapshot.error}'),
                            );
                          } else {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                    'Button tapped ${snapshot.data} time${snapshot.data == 1 ? '' : 's'}.'),
                              ],
                            );
                          }
                      }
                    },
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
          ),
        );
      },
    );
  }
}
