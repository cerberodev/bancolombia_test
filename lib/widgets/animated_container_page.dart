import 'dart:math';

import 'package:flutter/material.dart';

import 'bancolombia_app_bar.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double height = 55;
  Color color = Colors.red;
  double width = 55;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BancolombiaAppBar(
        appBarTitle: "Animated Container",
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          height = random.nextInt(256).toDouble();
          width = random.nextInt(256).toDouble();
          color = Color.fromRGBO(
              random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
          setState(() {});
        },
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.decelerate,
          duration: Duration(milliseconds: 50),
          height: height,
          width: width,
          color: color,
        ),
      ),
    );
  }
}
