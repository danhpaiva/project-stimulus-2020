import 'package:flutter/material.dart';
import 'package:stimulus/models/anuncio/listview_advertising.dart';
import 'package:stimulus/pages/subpages/trilha.dart';
import '../components/menu/cards_menu_principal.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: [
                Container(
                  width: 160,
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Stimulus',
                    style: TextStyle(
                        fontSize: 28,
                        color: Color(0xFF011526),
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
