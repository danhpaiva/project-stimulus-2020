import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'entrar.dart';
import 'menu_principal.dart';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_spinkit/flutter_spinkit.dart';

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
    var constraints = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Image.asset(
                  'assets/logo-2.png',
                  width: constraints.width * 0.4,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 25, right: 25, bottom: constraints.height * 0.03),
                child: Column(
                  children: [
                    Text(
                      'Parabéns',
                      style: TextStyle(
                          fontSize: constraints.width * 0.08,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Faça seu cadastro e encontre as oportunidades que você precisa para crescer!',
                      style: TextStyle(fontSize: constraints.width * 0.05),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: constraints.height * 0.02),
                child: Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.only(bottom: constraints.height * 0.012),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color(0XFFd3d3d3),
                      ),
                      width: constraints.width * 0.85,
                      child: TextField(
                        controller: nomeEmpresa,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Digite o nome da sua empresa',
                          labelStyle:
                              TextStyle(fontSize: constraints.width * 0.05),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(bottom: constraints.height * 0.012),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color(0XFFd3d3d3),
                      ),
                      width: constraints.width * 0.85,
                      child: TextField(
                        controller: emailCadastro,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Digite seu email',
                          labelStyle:
                              TextStyle(fontSize: constraints.width * 0.05),
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
                      width: constraints.width * 0.85,
                      child: TextField(
                        obscureText: true,
                        controller: senhaCadastro,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Digite uma senha',
                          labelStyle:
                              TextStyle(fontSize: constraints.width * 0.05),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: constraints.width * .4,
                height: constraints.height * .065,
                margin: EdgeInsets.only(bottom: constraints.height * 0.08),
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xFF011526),
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: new BorderRadius.circular(9.0),
                  ),
                  onPressed: () async {
                    showSpinner(context);

                    var userCadastrado = await cadastroUsuario(nomeEmpresa.text,
                        emailCadastro.text, senhaCadastro.text);

                    nomeEmpresa.text = '';
                    emailCadastro.text = '';
                    senhaCadastro.text = '';

                    showAlertDialog(
                        context, userCadastrado, emailCadastro.text);
                  },
                  child: Text(
                    'CADASTRAR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: constraints.width * 0.047,
                    ),
                  ),
                  color: Color(0xFF011526),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: constraints.width * 0.025),
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
                      fontSize: constraints.width * 0.047,
                      color: Color(0xFF011526),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

Future<String> cadastroUsuario(nomeEmpresa, email, senha) async {
  String nome;
  var response = await http.post(
      "https://api-project-stimulus-2020.herokuapp.com/api/cadastrar/$nomeEmpresa/$email/$senha");
  var dados = jsonDecode(response.body);

  if (dados['message'] == 'success') {
    debugPrint(dados['nomeEmpresa'].toString());
    nome = dados['nomeEmpresa'].toString();
    return nome;
  }

  if (dados['existeUsuario'] == true) {
    return 'Existe usuário';
  }
}

showAlertDialog(BuildContext context, String nomeUser, String emailCadastro) {
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      if (nomeUser == 'Existe usuário') {
        Navigator.pop(context);
      } else if (nomeUser != null) {
        Navigator.pop(context);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MenuPage(
                      email: emailCadastro,
                    )));
      } else {
        Navigator.pop(context);
      }
    },
  );

  AlertDialog alerta;
  if (nomeUser == 'Existe usuário') {
    alerta = AlertDialog(
      title: Text("Já existe um usuário com esse nome ou email"),
      content: Text("Por favor, insira novos dados"),
      actions: [
        okButton,
      ],
    );
  } else if (nomeUser != null) {
    alerta = AlertDialog(
      title: Text("Bem vindo: \n$nomeUser"),
      content: Text("Sua empresa foi cadastrada com sucesso"),
      actions: [
        okButton,
      ],
    );
  } else {
    alerta = AlertDialog(
      title: Text("Usuário ou senha incorretos"),
      content: Text("Por favor, tente novamente"),
      actions: [
        okButton,
      ],
    );
  }

  // exibe o dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}

showSpinner(BuildContext context) {
  SpinKitFadingCircle spin = SpinKitFadingCircle(
    itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: index.isEven ? Colors.blue : Colors.blue[200],
        ),
      );
    },
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return spin;
    },
  );
}
