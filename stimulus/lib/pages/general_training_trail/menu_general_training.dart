import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:stimulus/pages/general_training_trail/financial.dart';

class MenuGeneral extends StatefulWidget {
  @override
  _MenuGeneralState createState() => _MenuGeneralState();
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(
  content: Text('Showing Snackbar'),
);

class _MenuGeneralState extends State<MenuGeneral> {
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
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 18),
              child: Center(
                child: Text(
                  'Disponibilizamos, em quatro módulos, os conhecimentos essenciais para uma boa gestão do seu negócio. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[600], fontSize: 20),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FinancialPage(),
                    ),
                  ),
                },
                child: Card(
                  child: Container(
                    height: 130,
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 16, bottom: 16, left: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 180,
                                child: Text(
                                  'Financeiro',
                                  style: TextStyle(fontSize: 23),
                                ),
                              ),
                              Container(
                                width: 180,
                                child: Text(
                                  'Capacitação em gestão de negócios',
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 125,
                          child: Image.asset('assets/image-financeiro-01.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              child: GestureDetector(
                onTap: () {},
                child: Card(
                  child: Container(
                    height: 130,
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 6, bottom: 6, left: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 180,
                                child: Text(
                                  'Comunicação e Marketing',
                                  style: TextStyle(fontSize: 23),
                                ),
                              ),
                              Container(
                                width: 180,
                                child: Text(
                                  'Capacitação em gestão de negócios',
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 125,
                          child: Image.asset('assets/image-comunicao-02.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              child: GestureDetector(
                onTap: () {},
                child: Card(
                  child: Container(
                    height: 130,
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 6, bottom: 6, left: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 180,
                                child: Text(
                                  'Tecnologia e Inovação',
                                  style: TextStyle(fontSize: 23),
                                ),
                              ),
                              Container(
                                width: 180,
                                child: Text(
                                  'Capacitação em gestão de negócios',
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 125,
                          child: Image.asset('assets/image-tecnologia-03.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              child: GestureDetector(
                onTap: () {},
                child: Card(
                  child: Container(
                    height: 130,
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 6, bottom: 6, left: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 180,
                                child: Text(
                                  'Gestão de RH',
                                  style: TextStyle(fontSize: 23),
                                ),
                              ),
                              Container(
                                width: 180,
                                child: Text(
                                  'Capacitação em gestão de negócios',
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 125,
                          child: Image.asset('assets/image-gestaoRH-04.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
