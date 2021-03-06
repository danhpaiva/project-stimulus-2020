import 'package:flutter/material.dart';
import 'package:stimulus/pages/mentoria/mentoria_especifica_02.dart';

class MentoriaEspecificaPage01 extends StatefulWidget {
  @override
  _MentoriaEspecificaPage01State createState() =>
      _MentoriaEspecificaPage01State();
}

class _MentoriaEspecificaPage01State extends State<MentoriaEspecificaPage01> {
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
                    onPressed: () {
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
