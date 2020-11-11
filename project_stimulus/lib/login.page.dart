import 'dart:ui';
import 'package:flutter/material.dart';
import 'signup.page.dart';
import 'menu.page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
                child: Image.asset(
              'assets/logo.png',
              width: 250,
            )),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Column(
                children: [
                  Text(
                    'Bem vindo',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                  ),
                  Text(
                      'ao lugar onde você encontra as oportunidades para mudar o futuro da sua empresa e do seu negócio',
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
                          labelText: 'Digite seu email',
                          labelStyle: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Container(
                    color: Color(0XFFd3d3d3),
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Digite sua senha',
                          labelStyle: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Container(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MenuPage()),
                        );
                      },
                      child: Text(
                        'LOGAR',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Color(0xFF147c54),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: Text(
                        'CADASTRE-SE',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFF147c54)),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
