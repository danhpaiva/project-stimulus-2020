import 'package:flutter/material.dart';
import 'package:stimulus/components/anuncio/listview.dart';
import 'package:stimulus/pages/acompanhamento/acompanhamento_negocio.dart';
import 'package:stimulus/pages/mentoria/mentoria_especifica_01.dart';
import 'package:stimulus/pages/trilha/trilha.dart';
import '../components/menu/cards_menu_principal.dart';

import '../components/models/card_mentores_model.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final Future<ModelCardMentores> mentores = fetchPost();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: LayoutBuilder(
        builder: (context, constraints) {
          var screenWidth = constraints.maxWidth;
          var screenHeight = constraints.maxHeight;

          return ListView(
            children: <Widget>[
              Container(
                child: Column(
                  children: [
                    Container(
                      width: screenWidth * 0.45,
                      height: screenHeight * 0.05,
                      margin: EdgeInsets.only(
                        top: screenHeight * 0.02,
                      ),
                      child: Text(
                        'Stimulus',
                        style: TextStyle(
                            fontSize: 28,
                            color: Color(0xFF011526),
                            fontFamily: 'Century'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.23,
                      margin: EdgeInsets.only(
                          top: screenHeight * 0.01,
                          bottom: screenHeight * 0.01),
                      child: ListViewAdvertinsing(),
                    ),
                    Container(
                      height: screenHeight - screenHeight * 0.38,
                      child: Column(
                        children: [
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
                              imageCard: 'trilha-01.png',
                              titleCard: 'Capacitação Geral',
                              descriptionCard:
                                  'Faça cursos para ampliar seus conhecimentos',
                              iconCard: Icons.addchart_rounded,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      MentoriaEspecificaPage01(),
                                ),
                              );
                            },
                            child: MenuProcess(
                              imageCard: 'monitoria-02.png',
                              titleCard: 'Mentoria Específica',
                              descriptionCard:
                                  'Receba a mentoria de um empresário parceiro',
                              iconCard: Icons.add_comment_rounded,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AcompanhamentoNegocio(
                                    ultimoQuestionarioFeito: 0,
                                  ),
                                ),
                              );
                            },
                            child: MenuProcess(
                                imageCard: 'relatorio-03.png',
                                titleCard: 'Acompanhamento do Negócio',
                                descriptionCard:
                                    'Avalie a eficácia do programa em seu negócio',
                                iconCard: Icons.add_business),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

Future<ModelCardMentores> fetchPost() async {
  final response = await http.post(
      "https://api-project-stimulus-2020.herokuapp.com/api/buscar/mentores");

  if (response.statusCode == 200) {
    return ModelCardMentores.fromJson(json.decode(response.body));
  } else {
    throw Exception('Falha ao carregar um post');
  }
}
