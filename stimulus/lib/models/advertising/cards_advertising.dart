import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardAdvertising extends StatefulWidget {
  final String imageCard;
  final String linkurl;

  CardAdvertising({
    Key key,
    @required this.imageCard,
    @required this.linkurl,
  }) : super(key: key);

  @override
  _CardAdvertisingState createState() =>
      _CardAdvertisingState(imageCard, linkurl);
}

class _CardAdvertisingState extends State<CardAdvertising> {
  String _imageCard;
  String _linkurl;

  _CardAdvertisingState(String imageCard, String linkurl) {
    this._imageCard = imageCard;
    this._linkurl = linkurl;
  }

  abrirSite(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        abrirSite(_linkurl);
        //abrirSite();
      },
      child: Container(
        margin: EdgeInsets.only(left: 14, top: 14, bottom: 14),
        width: 200,
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[300],
            width: 1, //                   <--- border width here
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.5, 1.0),
              blurRadius: 8.0,
            ),
          ],
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/$_imageCard'),
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
      ),
    );
  }
}
