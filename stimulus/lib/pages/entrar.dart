import 'dart:ui';
import 'package:flutter/material.dart';
import 'cadastrar.dart';
import 'menu_principal.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailUser = TextEditingController();
  TextEditingController _passwordUser = TextEditingController();

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
                margin:
                    EdgeInsets.only(top: constraints.height * 0.07, bottom: 20),
                child: Image.asset(
                  'assets/logo-2.png',
                  width: constraints.width * 0.4,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 25,
                    right: 25,
                    top: constraints.height * 0.01,
                    bottom: constraints.height * 0.04),
                child: Column(
                  children: [
                    Text(
                      'Bem vindo',
                      style: TextStyle(
                          fontSize: constraints.width * 0.08,
                          fontWeight: FontWeight.w500),
                    ),
                    Center(
                      child: Text(
                        'ao lugar onde você encontra as oportunidades para mudar o futuro da sua empresa e do seu negócio',
                        style: TextStyle(fontSize: constraints.width * 0.05),
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
                      margin:
                          EdgeInsets.only(bottom: constraints.height * 0.015),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color(0XFFd3d3d3),
                      ),
                      width: constraints.width * 0.85,
                      child: TextField(
                        controller: _emailUser,
                        onChanged: (text) {},
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
                        controller: _passwordUser,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Digite sua senha',
                          labelStyle:
                              TextStyle(fontSize: constraints.width * 0.05),
                        ),
                      ),
                    ),
                    Container(
                      width: constraints.width * .4,
                      height: constraints.height * .065,
                      margin: EdgeInsets.only(
                          top: constraints.height * 0.03,
                          bottom: constraints.height * 0.03),
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
                          var retornoDados = await verificarlogin(
                            _emailUser.text,
                            _passwordUser.text,
                          );
                          showAlertDialog(
                              context, retornoDados, _emailUser.text);
                        },
                        child: Text(
                          'LOGAR',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: constraints.width * 0.047),
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

Future<String> verificarlogin(email, senha) async {
  String retornoDados;
  var response = await http.post(
      "https://api-project-stimulus-2020.herokuapp.com/api/procurar/$email/$senha");
  var dados = jsonDecode(response.body);

  if (dados['message'] == 'success') {
    debugPrint(dados['user'].toString());
    debugPrint(dados['coletaFragilidade'].toString());
    retornoDados = dados['user'].toString();
    return retornoDados;
  }
  return null;
}

showAlertDialog(BuildContext context, String nomeUser, String emailUser) {
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      if (nomeUser != null) {
        Navigator.pop(context);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MenuPage(
                      email: emailUser,
                    )));
      } else {
        Navigator.pop(context);
      }
    },
  );

  AlertDialog alerta;
  if (nomeUser != null) {
    alerta = AlertDialog(
      title: Text("Bem vindo: \n$nomeUser"),
      content: Text("Faça sua empresa crescer com o Estímulo"),
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
