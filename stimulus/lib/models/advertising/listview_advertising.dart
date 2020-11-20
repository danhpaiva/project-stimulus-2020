import 'package:flutter/material.dart';
import 'cards_advertising.dart';

class ListViewAdvertinsing extends StatefulWidget {
  @override
  _ListViewAdvertinsingState createState() => _ListViewAdvertinsingState();
}

class _ListViewAdvertinsingState extends State<ListViewAdvertinsing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Expanded(
        child: Container(
          height: 160,
          margin: EdgeInsets.only(
            top: 10,
          ),
          child: ListView(
            padding: EdgeInsets.only(right: 10),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              CardAdvertising(
                imageCard: 'estimulo-2020-blog.png',
                linkurl: 'https://blog.estimulo2020.org/',
              ),
              CardAdvertising(
                  imageCard: 'querodoar.png',
                  linkurl: 'https://www.estimulo2020.org/quero-doar/'),
              CardAdvertising(
                  imageCard: 'APOIADORES.png',
                  linkurl:
                      'https://www.estimulo2020.org/quem-apoia-o-movimento/'),
              CardAdvertising(
                  imageCard: 'namidia.png',
                  linkurl: 'https://www.estimulo2020.org/na-midia/'),
            ],
          ),
        ),
      ),
    );
  }
}
