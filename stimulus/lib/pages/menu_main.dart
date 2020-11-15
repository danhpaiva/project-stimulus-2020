import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:stimulus/pages/general_training_trail/menu_general_training.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Color(0xFF147c54),
          title: Text('MENU PRINCIPAL'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                scaffoldKey.currentState.showSnackBar(snackBar);
              },
            ),
          ],
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Column(
                children: [
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(top: 40),
                    child: Text(
                      'Adquira conhecimento',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    height: 130,
                    width: 380,
                    margin: EdgeInsets.all(5),
                    child: GestureDetector(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MenuGeneral(),
                          ),
                        ),
                      },
                      child: Card(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                child:
                                    Image.asset('assets/imagem_trilha_01.png'),
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    width: 180,
                                    child: Text(
                                      'Capacitação Geral',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    width: 180,
                                    child: Text(
                                      'Faça cursos para ampliar seus conhecimentos.',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(top: 40),
                    child: Text(
                      'Desenvolva percepções',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    height: 130,
                    width: 380,
                    margin: EdgeInsets.all(5),
                    child: Card(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Container(
                              child: Image.asset('assets/imagem-trilha-02.png'),
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  width: 180,
                                  child: Text(
                                    'Mentoria específica',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  width: 180,
                                  child: Text(
                                    'Receba a mentoria de um empresário parceiro.',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(top: 40),
                    child: Text(
                      'Relate seus resultados ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    height: 130,
                    width: 380,
                    margin: EdgeInsets.all(5),
                    child: Card(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Container(
                              child: Image.asset('assets/imagem-trilha-03.png'),
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  width: 180,
                                  child: Text(
                                    'Sua experiência',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 3),
                                  width: 180,
                                  child: Text(
                                    'Avalie a eficácia do programa em seu negócio.',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 20.0, right: 20.0, top: 40),
                    child: Image.asset(
                      'assets/logo-estimulo.png',
                      width: 200,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
