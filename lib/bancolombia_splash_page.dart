import 'package:flutter/material.dart';

import 'widgets/bancolombia_app_bar.dart';

class BancolombiaSplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: BancolombiaAppBar(),
    );
  }
}
