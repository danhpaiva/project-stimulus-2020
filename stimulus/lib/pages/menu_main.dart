import 'package:flutter/material.dart';
import 'package:stimulus/pages/subpages/trilha.dart';
import '../models/advertising/listview_advertising.dart';
import '../models/menu_process.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      // <-- SCAFFOLD WITH TRANSPARENT BG
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 26),
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage("assets/fundo-page.png"), // <-- BACKGROUND IMAGE
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: 160,
                  margin: EdgeInsets.only(bottom: 10),
                  //decoration: BoxDecoration(
                  //border: Border(
                  //bottom: BorderSide(
                  //color: Colors.white,
                  //width: 1.0,
                  //),
                  //),
                  //),
                  child: Text(
                    'Stimulus',
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontFamily: 'Century'),
                    textAlign: TextAlign.center,
                  ),
                ),
                ListViewAdvertinsing(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TrilhaCapacitacao(),
                      ),
                    );
                  },
                  child: MenuProcess(
                      textTitleInfo:
                          'Adquira conhecimento a partir dos nossos cursos',
                      imageCard: 'trilha-01.png',
                      titleCard: 'Capacitação Geral',
                      descriptionCard:
                          'Faça cursos para ampliar seus conhecimentos'),
                ),
                GestureDetector(
                  onTap: () {},
                  child: MenuProcess(
                      textTitleInfo:
                          'Desenvolva novas percepções com seu mentor',
                      imageCard: 'monitoria-02.png',
                      titleCard: 'Mentoria Específica',
                      descriptionCard:
                          'Receba a mentoria de um empresário parceiro'),
                ),
                GestureDetector(
                  onTap: () {},
                  child: MenuProcess(
                      textTitleInfo:
                          'Relate os resultados do seu desenvolvimento',
                      imageCard: 'relatorio-03.png',
                      titleCard: 'Sua experiência',
                      descriptionCard:
                          'Avalie a eficácia do programa em seu negócio'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
