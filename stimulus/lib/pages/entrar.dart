import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:stimulus/services/verificacao_login.dart';
import 'cadastrar.dart';
import 'menu_principal.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailUser = TextEditingController();
  TextEditingController _passwordUser = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Image.asset(
                  'assets/logo-2.png',
                  width: constraints.maxWidth * 0.4,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  children: [
                    Text(
                      'Bem vindo',
                      style: TextStyle(
                          fontSize: constraints.maxWidth * 0.08,
                          fontWeight: FontWeight.w500),
                    ),
                    Center(
                      child: Text(
                        'ao lugar onde você encontra as oportunidades para mudar o futuro da sua empresa e do seu negócio',
                        style: TextStyle(fontSize: constraints.maxWidth * 0.05),
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
                      margin: EdgeInsets.only(
                          bottom: constraints.maxHeight * 0.015),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color(0XFFd3d3d3),
                      ),
                      width: constraints.maxWidth * 0.85,
                      child: TextField(
                        controller: _emailUser,
                        onChanged: (text) {},
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Digite seu email',
                          labelStyle:
                              TextStyle(fontSize: constraints.maxWidth * 0.05),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color(0XFFd3d3d3),
                      ),
                      width: constraints.maxWidth * 0.85,
                      child: TextField(
                        obscureText: true,
                        controller: _passwordUser,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Digite sua senha',
                          labelStyle:
                              TextStyle(fontSize: constraints.maxWidth * 0.05),
                        ),
                      ),
                    ),
                    Container(
                      width: constraints.maxWidth * .4,
                      height: constraints.maxHeight * .065,
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
                          VerificacaoLogin.verific(
                              _emailUser.text, _passwordUser.text, context);

                          /*Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MenuPage())); */
                        },
                        child: Text(
                          'LOGAR',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: constraints.maxWidth * 0.047),
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
                      fontSize: constraints.maxWidth * 0.047,
                      color: Color(0xFF011526),
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
