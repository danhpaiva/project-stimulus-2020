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
        body: Column(
          children: [
            Text("COMO MANTENHO MINHAS CONTAS EM DIA?"),
            Container(
              child: RodarYoutube(
                  'https://youtu.be/e--xnFnwPTU',
                  'Acompanhe o seu caixa de perto',
                  'É importante manter a saúde financeira da sua empresa nesse momento. Para isso, aqui estão cinco dicas para te ajudar a ficar de olho no caixa do seu negócio.'),
            ),
            Text("COMO MANTENHO MINHAS CONTAS EM DIA?"),
            Container(
              child: RodarYoutube(
                  'https://youtu.be/e--xnFnwPTU',
                  'Acompanhe o seu caixa de perto',
                  'É importante manter a saúde financeira da sua empresa nesse momento. Para isso, aqui estão cinco dicas para te ajudar a ficar de olho no caixa do seu negócio.'),
            ),
          ],
        ),
      ),
    );
  }
}
