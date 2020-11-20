import 'dart:ui';
import 'package:flutter/material.dart';
import 'cadastrar.dart';
import 'menu_principal.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 130, bottom: 20),
              child: Image.asset(
                'assets/logo-2.png',
                width: 200,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Column(
                children: [
                  Text(
                    'Bem vindo',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                  ),
                  Center(
                    child: Text(
                      'ao lugar onde você encontra as oportunidades para mudar o futuro da sua empresa e do seu negócio',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 35),
              child: Column(
                children: [
                  Container(
                    color: Color(0XFFd3d3d3),
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: '  Digite seu email',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0XFFd3d3d3),
                    margin: EdgeInsets.only(top: 10),
                    width: 350,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: '  Digite sua senha',
                        labelStyle: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    margin: EdgeInsets.only(top: 15),
                    child: RaisedButton(
                      shape: new RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xFF011526),
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: new BorderRadius.circular(9.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MenuPage(),
                          ),
                        );
                      },
                      child: Text(
                        'LOGAR',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      color: Color(0xFF011526),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(top: 20),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ),
                  );
                },
                child: Text(
                  'CADASTRE-SE',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF011526),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
