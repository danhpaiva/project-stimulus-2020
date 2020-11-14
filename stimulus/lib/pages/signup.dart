import 'dart:ui';
import 'package:flutter/material.dart';
import 'login.dart';
import 'menu.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
                //margin: const EdgeInsets.only(bottom: ),
                child: Image.asset(
              'assets/logo.png',
              width: 250,
            )),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Column(
                children: [
                  Text(
                    'Parabéns, sua empresa teve o crédito aprovado!',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  Text(
                      'Faça seu cadastro e encontre as oportunidades que você precisa para crescer!',
                      style: TextStyle(fontSize: 18))
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    color: Color(0XFFd3d3d3),
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Digite o nome da sua Empresa',
                          labelText: 'Nome da Empresa',
                          labelStyle: TextStyle(fontSize: 16)),
                    ),
                  ),
                  Container(
                    color: Color(0XFFd3d3d3),
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Digite seu nome',
                          labelText: 'Email',
                          labelStyle: TextStyle(fontSize: 16)),
                    ),
                  ),
                  Container(
                    color: Color(0XFFd3d3d3),
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Digite seu senha',
                          labelText: 'Senha',
                          labelStyle: TextStyle(fontSize: 16)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MenuPage()));
                },
                child: Text('CADASTRAR', style: TextStyle(color: Colors.white)),
                color: Color(0xFF147c54),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  'Entrar',
                  style: TextStyle(fontSize: 16, color: Color(0xFF147c54)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
