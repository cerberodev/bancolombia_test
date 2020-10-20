import 'package:flutter/material.dart';
import 'package:test_project/utils/utils.dart';

import 'widgets/bancolombia_app_bar.dart';

class BancolombiaSplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    height = height - 16;
    height = height - kToolbarHeight;
    height = height - MediaQuery.of(context).padding.top;
    height = height / 2;
    return Scaffold(
      drawer: Drawer(),
      appBar: BancolombiaAppBar(
        appBarTitle: "Home",
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: height,
              child: FutureBuilder(
                future: Utils().getJsonData(context),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasError) {
                    return Text("Error");
                  }
                  if (snapshot.hasData) {
                    return NameListWidget(names: snapshot.data);
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NameListWidget extends StatelessWidget {
  final List<String> names;
  NameListWidget({this.names});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: names.length,
      itemBuilder: (BuildContext context, int pos) {
        return Text(names[pos]);
      },
    );
  }
}
