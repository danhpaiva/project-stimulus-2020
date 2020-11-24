import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:stimulus/components/anuncio/card.dart';
import 'package:stimulus/components/menu/cards_menu_principal.dart';
import 'package:stimulus/components/youtube/youtube-player.dart';

class YoutubePageVideos extends StatefulWidget {
  final String url;
  final String nomeModulo;
  final String titulo;
  final String descricao;

  YoutubePageVideos({
    Key key,
    @required this.url,
    @required this.nomeModulo,
    @required this.titulo,
    @required this.descricao,
  }) : super(key: key);

  @override
  _YoutubePageVideosState createState() =>
      _YoutubePageVideosState(url, nomeModulo, titulo, descricao);
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(
  content: Text('Showing Snackbar'),
);

class _YoutubePageVideosState extends State<YoutubePageVideos> {
  String _url;
  String _nomeModulo;
  String _titulo;
  String _descricao;

  _YoutubePageVideosState(
      String url, String nomeModulo, String titulo, String descricao) {
    this._url = url;
    this._nomeModulo = nomeModulo;
    this._titulo = titulo;
    this._descricao = descricao;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Color(0xFF011526),
          title: Text('Youtube'),
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
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              RodarYoutube(
                "$_url",
                '$_titulo',
                '$_descricao',
              ),
              Container(
                child: Expanded(
                  child: ListView(
                    padding: EdgeInsets.only(right: 10),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20, bottom: 10),
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[300],
                                  width:
                                      1, //                   <--- border width here
                                ),
                                color: Colors.blue[100],
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/monitoria-02.png'),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100.0),
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                'Mentoria Especifica',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
