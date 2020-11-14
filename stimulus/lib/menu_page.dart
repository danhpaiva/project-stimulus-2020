import 'dart:ui';
import 'package:flutter/material.dart';
import 'components/youtube.player.dart';

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
                  Card(
                    margin: EdgeInsets.all(10),
                    child: Container(
                      child: RodarYoutube(
                          'https://youtu.be/e--xnFnwPTU',
                          'Acompanhe o seu caixa de perto',
                          'É importante manter a saúde financeira da sua empresa nesse momento. Para isso, aqui estão cinco dicas para te ajudar a ficar de olho no caixa do seu negócio.'),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(10),
                    child: Container(
                      child: RodarYoutube(
                          'https://youtu.be/U2Dkxj2hMAM',
                          'Planeje suas receitas e despesas dos próximos meses',
                          'Cinco grandes dicas que te ajudarão na administração financeira do seu negócio nesse período.'),
                    ),
                  ),
                ],
              ),
              Container(
                child: RodarYoutube(
                    'https://youtu.be/e--xnFnwPTU',
                    'Acompanhe o seu caixa de perto',
                    'É importante manter a saúde financeira da sua empresa nesse momento. Para isso, aqui estão cinco dicas para te ajudar a ficar de olho no caixa do seu negócio.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
