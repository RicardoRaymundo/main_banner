import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:main_banner/pages_placeholder.dart';
import 'package:main_banner/ui/ui_styles.dart';

/// Esta classe constrói um widget que recebe uma imagem principal e um logo SVG como
/// parâmetros de entrada. O widgets é um banner com contém uma linha de botões
/// na sua parte superior e outra linha de botões na sua parte inferior.
class MainBanner extends StatelessWidget {
  String mainImagePath;
  String svgLogoPath;

  MainBanner({this.mainImagePath, this.svgLogoPath});

  @override
  Widget build(BuildContext context) {
    final witchLogo = SvgPicture.asset(
      this.svgLogoPath,
      semanticsLabel: 'Feed button',
      placeholderBuilder: (context) => Icon(Icons.error),
    );

    return Stack(
      children: <Widget>[
        Container(
          height: 550,
          // color: Colors.blue,
          decoration: new BoxDecoration(
            color: Colors.transparent,
            image: new DecorationImage(

                /// Imagem principal do widget
                image: new AssetImage(this.mainImagePath),
                fit: BoxFit.fill),
          ),
          // we can change to be backgroundimage instead
        ),
        Container(
          height: 550,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                // 10% of the width, so there are ten blinds.
                colors: [const Color(0x00FFFFEE), const Color(0xFFFFFFFF)],
                // whitish to gray
                tileMode: TileMode.repeated,
                stops: [0.6, 1] // repeats the gradient over the canvas
                ),
          ),
        ),
        Container(
          height: 550,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              /// Linha de botões da parte de cima
              Container(
                color: Colors.transparent,
                padding: EdgeInsets.only(top: 25, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      height: 50,
                      width: 50,
                      child: witchLogo,
                      //SvgPicture.asset(assetName),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    GestureDetector(
                      onTap: () {
                        //Inicializa a tab cursos
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PagesPlaceholder()));
                      },
                      child: Text('Cursos', style: Styles.title),
                    ),
                    GestureDetector(
                      onTap: () {
                        //Inicializa a tab aulas
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PagesPlaceholder()));
                      },
                      child: Text('Aulas', style: Styles.title),
                    ),
                    GestureDetector(
                      onTap: () {
                        //Inicializa a tab minha lista
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PagesPlaceholder()));
                      },
                      child: Text('Minha Lista', style: Styles.title),
                    ),
                  ],
                ),
              ),

              /// Botões da parte inferior do widget
              mainBannerButton(context),
            ],
          ),
        )
      ],
    );
  }

  /// Método que cria a linha inferior de botões
  Widget mainBannerButton(BuildContext context) {
    final TextStyle buttonInfoStyle = new TextStyle(
        fontFamily: 'Avenir next',
        fontSize: 12,
        color: Colors.white,
        fontWeight: FontWeight.w600);

    return Container(
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          /// Botão da esquerda
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PagesPlaceholder()));
            },
            child: Column(
              children: <Widget>[
                Icon(Icons.add, color: Colors.white, size: 23),
                Text(
                  'Minha',
                  style: buttonInfoStyle,
                ),
                Text(
                  'Lista',
                  style: buttonInfoStyle,
                )
              ],
            ),
          ),

          /// Botão central
          SizedBox(
            height: 35,
            child: FlatButton(
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.play_arrow,
                    color: Colors.black,
                  ),
                  Text(
                    "Assistir",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PagesPlaceholder()));
              },
            ),
          ),

          /// Botão da direita
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PagesPlaceholder()));
            },
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.info,
                  color: Colors.white,
                  size: 23,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Info',
                  style: buttonInfoStyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
