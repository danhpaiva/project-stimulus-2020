import 'dart:ui';
import 'package:flutter/material.dart';
import 'components/listCards.dart';

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
          backgroundColor: Color(0xFF011126),
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
        body: ListCards(),
      ),
    );
  }
}
