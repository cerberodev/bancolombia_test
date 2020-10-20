import 'package:flutter/material.dart';

class BancolombiaAppBar extends StatelessWidget with PreferredSizeWidget {
  final String appBarTitle;
  BancolombiaAppBar({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: appBarTitle != null ? _createTitle() : ImageAppBar(),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.add,
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
