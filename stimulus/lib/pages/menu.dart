import 'dart:ui';
import 'package:flutter/material.dart';

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
                    color: Color(0xFF147c54),
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        'Como mantenho minhas contas em dia?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xFF147c54),
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        'COMO VENDER DURANTE A PANDEMIA?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xFF147c54),
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        'COMO ORGANIZAR MINHAS DESPESAS?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xFF147c54),
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        'COMO AS MEDIDAS DO GOVERNO PODEM AJUDAR O MEU NEGÓCIO?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
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
