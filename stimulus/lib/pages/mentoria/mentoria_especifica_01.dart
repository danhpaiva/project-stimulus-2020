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
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapeamento'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(children: [
              Container(
                //constraints.maxWidth * .8,
                margin: EdgeInsets.only(top: 12, left: 20),
                width: constraints.maxWidth * .9,
                child: Column(
                  children: [
                    Container(
                      width: constraints.maxWidth * .9,
                      child: Text(
                        'Endereço: *',
                        style: TextStyle(
                            color: Color(0xFF011526),
                            fontSize: constraints.maxHeight * 0.03),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      padding:
                          EdgeInsets.only(top: 1, left: 6, right: 6, bottom: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.grey[200],
                      ),
                      height: constraints.maxHeight * 0.07,
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Sua resposta'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //constraints.maxWidth * .8,
                margin: EdgeInsets.only(top: 12, left: 20),
                width: constraints.maxWidth * .9,
                child: Column(
                  children: [
                    Container(
                      width: constraints.maxWidth * .9,
                      child: Text(
                        'Telefone: *',
                        style: TextStyle(
                            color: Color(0xFF011526),
                            fontSize: constraints.maxHeight * 0.03),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      padding:
                          EdgeInsets.only(top: 1, left: 6, right: 6, bottom: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.grey[200],
                      ),
                      height: constraints.maxHeight * 0.07,
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Sua resposta'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //constraints.maxWidth * .8,
                margin: EdgeInsets.only(top: 12, left: 20),
                width: constraints.maxWidth * .9,
                child: Column(
                  children: [
                    Container(
                      width: constraints.maxWidth * .9,
                      child: Text(
                        'Razão Social: *',
                        style: TextStyle(
                            color: Color(0xFF011526),
                            fontSize: constraints.maxHeight * 0.03),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      padding:
                          EdgeInsets.only(top: 1, left: 6, right: 6, bottom: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.grey[200],
                      ),
                      height: constraints.maxHeight * 0.07,
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Sua resposta'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //constraints.maxWidth * .8,
                margin: EdgeInsets.only(top: 12, left: 20),
                width: constraints.maxWidth * .9,
                child: Column(
                  children: [
                    Container(
                      width: constraints.maxWidth * .9,
                      child: Text(
                        'CNPJ: *',
                        style: TextStyle(
                            color: Color(0xFF011526),
                            fontSize: constraints.maxHeight * 0.03),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      padding:
                          EdgeInsets.only(top: 1, left: 6, right: 6, bottom: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.grey[200],
                      ),
                      height: constraints.maxHeight * 0.07,
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Sua resposta'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //constraints.maxWidth * .8,
                margin: EdgeInsets.only(top: 12, left: 20),
                width: constraints.maxWidth * .9,
                child: Column(
                  children: [
                    Container(
                      width: constraints.maxWidth * .9,
                      child: Text(
                        'Idade da empresa: *:',
                        style: TextStyle(
                            color: Color(0xFF011526),
                            fontSize: constraints.maxHeight * 0.03),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      padding:
                          EdgeInsets.only(top: 1, left: 6, right: 6, bottom: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.grey[200],
                      ),
                      height: constraints.maxHeight * 0.07,
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Sua resposta'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: constraints.maxWidth * .5,
                height: constraints.maxHeight * .06,
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
                      fontSize: constraints.maxWidth * 0.047,
                    ),
                  ),
                  color: Color(0xFF011526),
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}
