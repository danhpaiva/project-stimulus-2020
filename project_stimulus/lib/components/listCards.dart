import 'dart:ui';
import 'package:flutter/material.dart';

class ListCards extends StatefulWidget {
  @override
  _ListCardsState createState() => _ListCardsState();
}

class _ListCardsState extends State<ListCards> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: ListView(
          children: <Widget>[
            Text('Comece'),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
          ],
        ),
      ),
    );
  }
}
