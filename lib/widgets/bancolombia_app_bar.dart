import 'package:flutter/material.dart';
import 'package:test_project/bancolombia_splash_page.dart';

class BancolombiaAppBar extends StatelessWidget with PreferredSizeWidget {
  final String appBarTitle;
  BancolombiaAppBar({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      leading: Row(children: [
        InkWell(
            onTap: () {
              if (Navigator.of(context).canPop()) {
                Navigator.of(context).pop();
              }
            },
            child: Icon(Icons.arrow_back)),
        Icon(Icons.ac_unit),
      ]),
      centerTitle: true,
      title: appBarTitle != null ? _createTitle() : ImageAppBar(),
      actions: [
        InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return BancolombiaSplashPage();
            }));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.add,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);

  Widget _createTitle() {
    String text = appBarTitle.toUpperCase();
    return Text(
      text,
      style: TextStyle(
        fontSize: 55,
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontFamily: 'Robotto',
      ),
    );
  }
}

class ImageAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Llamar Image Title");

    return Image.network(
        "https://www.forcepoint.com/sites/default/files/case_study_logos/grupo-bancolombia.png");
  }
}
