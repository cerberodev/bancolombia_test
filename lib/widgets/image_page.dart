import 'package:flutter/material.dart';

import 'bancolombia_app_bar.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BancolombiaAppBar(
        appBarTitle: "Image",
      ),
      body: Column(
        children: [
          Image.asset("assets/logo.png"),
          FadeInImage.assetNetwork(
            placeholder: "assets/logo.png",
            image:
                "https://www.grupobancolombia.com/wcm/connect/www.grupobancolombia.com15880/808da773-e584-4aac-a5d5-b932c29b0d69/card-2-min.png?MOD=AJPERES&CACHEID=ROOTWORKSPACE.Z18_K9HC1202PGD140QU35SB3R10O3-808da773-e584-4aac-a5d5-b932c29b0d69-niT3cNM",
          )
        ],
      ),
    );
  }
}
