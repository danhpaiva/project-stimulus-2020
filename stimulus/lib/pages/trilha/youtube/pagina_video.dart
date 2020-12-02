import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:stimulus/components/anuncio/card.dart';
import 'package:stimulus/components/menu/cards_menu_principal.dart';
import 'package:stimulus/components/youtube/youtube-player.dart';
import 'package:stimulus/pages/acompanhamento/acompanhamento_negocio.dart';
import 'package:stimulus/pages/mentoria/mentoria_especifica_01.dart';
import 'package:stimulus/pages/trilha/trilha.dart';

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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MentoriaEspecifica()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.42,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20, bottom: 10),
                                width: 110,
                                height: 110,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.red[100],
                                    width:
                                        1.5, //                   <--- border width here
                                  ),
                                  color: Colors.red[100],
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/monitoria-02.png'),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100.0),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Mentoria Especifica',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff123C73)),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AcompanhamentoNegocio()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.42,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20, bottom: 10),
                                width: 110,
                                height: 110,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.red[100],
                                    width:
                                        1, //                   <--- border width here
                                  ),
                                  color: Colors.red[100],
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/relatorio-03.png'),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100.0),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Acompanhamento de Negócio',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff123C73)),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TrilhaCapacitacao()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.42,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 20, bottom: 10),
                                width: 110,
                                height: 110,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.red[100],
                                    width:
                                        1, //                   <--- border width here
                                  ),
                                  color: Colors.red[100],
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/trilha-01.png'),
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100.0),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Capacitação Geral',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff123C73)),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
