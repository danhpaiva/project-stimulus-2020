import 'package:flutter/material.dart';
import 'package:stimulus/pages/mentoria/mentoria_especifica_02.dart';

import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class MentoriaEspecificaPage01 extends StatefulWidget {
  final String email;

  MentoriaEspecificaPage01({Key key, @required this.email}) : super(key: key);

  @override
  _MentoriaEspecificaPage01State createState() =>
      _MentoriaEspecificaPage01State(email);
}

class _MentoriaEspecificaPage01State extends State<MentoriaEspecificaPage01> {
  String _email;

  _MentoriaEspecificaPage01State(String email) {
    this._email = email;
  }

  TextEditingController _endereco = TextEditingController();
  TextEditingController _telefone = TextEditingController();

  TextEditingController _razaoSocial = TextEditingController();
  TextEditingController _cnpj = TextEditingController();
  TextEditingController _idadeEmpresa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var constraints = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconTheme.of(context),
          title: Text(
            'Mapeamento',
            style: TextStyle(fontSize: 20, color: Color(0xFF011526)),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 100,
              child: Image.asset('assets/mapeamento_page01.png'),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 120, right: 120),
              child: Image.asset('assets/mapeamento_barra01.png'),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(children: [
                Container(
                  //constraints.width * .8,
                  margin: EdgeInsets.only(left: 20),
                  width: constraints.width * .9,
                  child: Column(
                    children: [
                      Container(
                        width: constraints.width * .9,
                        child: Text(
                          'Endereço: *',
                          style: TextStyle(
                              color: Color(0xFF011526),
                              fontSize: constraints.height * 0.022),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        padding: EdgeInsets.only(left: 8, right: 8, bottom: 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.grey[200],
                        ),
                        height: constraints.height * 0.07,
                        child: TextField(
                          controller: _endereco,
                          decoration:
                              InputDecoration(labelText: 'Sua resposta'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //constraints.width * .8,
                  margin: EdgeInsets.only(top: 12, left: 20),
                  width: constraints.width * .9,
                  child: Column(
                    children: [
                      Container(
                        width: constraints.width * .9,
                        child: Text(
                          'Telefone: *',
                          style: TextStyle(
                              color: Color(0xFF011526),
                              fontSize: constraints.height * 0.022),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        padding: EdgeInsets.only(left: 6, right: 6, bottom: 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.grey[200],
                        ),
                        height: constraints.height * 0.07,
                        child: TextField(
                          controller: _telefone,
                          decoration:
                              InputDecoration(labelText: 'Sua resposta'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //constraints.width * .8,
                  margin: EdgeInsets.only(top: 12, left: 20),
                  width: constraints.width * .9,
                  child: Column(
                    children: [
                      Container(
                        width: constraints.width * .9,
                        child: Text(
                          'Razão Social: *',
                          style: TextStyle(
                              color: Color(0xFF011526),
                              fontSize: constraints.height * 0.022),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        padding: EdgeInsets.only(left: 8, right: 8, bottom: 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.grey[200],
                        ),
                        height: constraints.height * 0.07,
                        child: TextField(
                          controller: _razaoSocial,
                          decoration:
                              InputDecoration(labelText: 'Sua resposta'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //constraints.width * .8,
                  margin: EdgeInsets.only(top: 12, left: 20),
                  width: constraints.width * .9,
                  child: Column(
                    children: [
                      Container(
                        width: constraints.width * .9,
                        child: Text(
                          'CNPJ: *',
                          style: TextStyle(
                              color: Color(0xFF011526),
                              fontSize: constraints.height * 0.022),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        padding: EdgeInsets.only(left: 8, right: 8, bottom: 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.grey[200],
                        ),
                        height: constraints.height * 0.07,
                        child: TextField(
                          controller: _cnpj,
                          decoration:
                              InputDecoration(labelText: 'Sua resposta'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //constraints.width * .8,
                  margin: EdgeInsets.only(top: 12, left: 20),
                  width: constraints.width * .9,
                  child: Column(
                    children: [
                      Container(
                        width: constraints.width * .9,
                        child: Text(
                          'Idade da empresa: *:',
                          style: TextStyle(
                              color: Color(0xFF011526),
                              fontSize: constraints.height * 0.022),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        padding: EdgeInsets.only(left: 8, right: 8, bottom: 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.grey[200],
                        ),
                        height: constraints.height * 0.07,
                        child: TextField(
                          controller: _idadeEmpresa,
                          decoration:
                              InputDecoration(labelText: 'Sua resposta'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  width: constraints.width * .85,
                  height: constraints.height * .06,
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
                      enviarDadosPage01(_email, _endereco, _telefone,
                          _razaoSocial, _cnpj, _idadeEmpresa);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MentoriaEspecificaPage02(),
                        ),
                      );
                    },
                    child: Text(
                      'Próxima',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: constraints.width * 0.047,
                      ),
                    ),
                    color: Color(0xFF011526),
                  ),
                ),
              ]),
            ),
          ],
        ));
  }
}

Future<String> enviarDadosPage01(
    email, endereco, telefone, razaoSocial, cnpj, idadeEmpresa) async {
  String retornoDados;
  var response = await http.post(
      "https://api-project-stimulus-2020.herokuapp.com/api/mapeamento/01/$email/$endereco/$telefone/$razaoSocial/$cnpj/$idadeEmpresa");
  var dados = jsonDecode(response.body);

  if (dados['message'] == 'success') {
    debugPrint(dados['user'].toString());
    debugPrint(dados['coletaFragilidade'].toString());
    retornoDados = dados['user'].toString();
    return retornoDados;
  }
  return null;
}
