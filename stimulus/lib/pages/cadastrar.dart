import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:stimulus/services/cadastro_user.dart';
import 'entrar.dart';
import 'menu_principal.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nomeEmpresa = TextEditingController();
  final emailCadastro = TextEditingController();
  final senhaCadastro = TextEditingController();

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
                      'Parabéns',
                      style: TextStyle(
                          fontSize: constraints.maxWidth * 0.08,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Faça seu cadastro e encontre as oportunidades que você precisa para crescer!',
                      style: TextStyle(fontSize: constraints.maxWidth * 0.05),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          bottom: constraints.maxHeight * 0.012),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color(0XFFd3d3d3),
                      ),
                      width: constraints.maxWidth * 0.85,
                      child: TextField(
                        controller: nomeEmpresa,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Digite o nome da sua empresa',
                          labelStyle:
                              TextStyle(fontSize: constraints.maxWidth * 0.05),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom: constraints.maxHeight * 0.012),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color(0XFFd3d3d3),
                      ),
                      width: constraints.maxWidth * 0.85,
                      child: TextField(
                        controller: emailCadastro,
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
                        controller: senhaCadastro,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Digite uma senha',
                          labelStyle:
                              TextStyle(fontSize: constraints.maxWidth * 0.05),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: constraints.maxWidth * .4,
                height: constraints.maxHeight * .065,
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
                    CadastrarUsuario.cadast(nomeEmpresa.text,
                        emailCadastro.text, senhaCadastro.text, context);
                  },
                  child: Text(
                    'CADASTRAR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: constraints.maxWidth * 0.047,
                    ),
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
