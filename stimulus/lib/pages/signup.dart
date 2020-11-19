import 'dart:ui';
import 'package:flutter/material.dart';
import 'login.dart';
import 'menu_main.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    //var value = 0xFF7D79D0;
    return MaterialApp(
      home: Material(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 100, bottom: 10),
                child: Image.asset(
                  'assets/logo-2.png',
                  width: 200,
                )),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Column(
                children: [
                  Text(
                    'Parabéns, sua empresa teve o crédito aprovado!',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Faça seu cadastro e encontre as oportunidades que você precisa para crescer!',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    color: Color(0XFFd3d3d3),
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: '  Digite o nome da sua Empresa',
                        labelStyle: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    color: Color(0XFFd3d3d3),
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: '  Digite seu email',
                          labelStyle: TextStyle(fontSize: 16)),
                    ),
                  ),
                  Container(
                    color: Color(0XFFd3d3d3),
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: '  Digite sua senha',
                          labelStyle: TextStyle(fontSize: 16)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 150,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MenuPage(),
                    ),
                  );
                },
                child: Text(
                  'CADASTRAR',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                color: Color(0xFF011526),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Text(
                  'ENTRAR',
                  style: TextStyle(fontSize: 16, color: Color(0xFF011526)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
