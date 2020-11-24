import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:stimulus/components/youtube/youtube-player.dart';

class YoutubePageVideos extends StatefulWidget {
  
  final String url;
  final String nomeModulo;
  final String titulo;
  final String descricao;

  YoutubePageVideos(
      {Key key,
      @required this.url,
      @required this.nomeModulo,
      @required this.titulo,
      @required this.descricao,
      })
      : super(key: key);

  @override
  _YoutubePageVideosState createState() => _YoutubePageVideosState(url, nomeModulo, titulo, descricao);
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

class _YoutubePageVideosState extends State<YoutubePageVideos> {
  String _url;
  String _nomeModulo;
  String _titulo;
  String _descricao;


  _YoutubePageVideosState(String url, String nomeModulo, String titulo, String descricao) {
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
          backgroundColor: Color(0xFF147c54),
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
          width:  MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(8),
          child: RodarYoutube(
            "$_url",
            '$_titulo',
            '$_descricao',
          ),  
        ),
      ),
    );
  }
}
