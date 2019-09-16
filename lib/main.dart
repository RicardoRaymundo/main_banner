import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main_banner/main_banner/main_banner.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  /// Imagens dos assets que serão passadas ao MainBanner
  final String witchLogoPath = 'assets/witch.svg';
  final String mainImagePath = "assets/tower.png";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MainBanner(mainImagePath: this.mainImagePath, svgLogoPath: this.witchLogoPath,),
      ),
    );
  }
}
