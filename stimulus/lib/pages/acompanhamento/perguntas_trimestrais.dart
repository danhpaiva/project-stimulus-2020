import 'package:flutter/material.dart';

class PerguntasAcompanhamento extends StatefulWidget {
  @override
  _PerguntasAcompanhamentoState createState() =>
      _PerguntasAcompanhamentoState();
}

class _PerguntasAcompanhamentoState extends State<PerguntasAcompanhamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionário'),
        backgroundColor: Color(0xff042440),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              width: constraints.maxWidth * 0.9,
              child: Column(
                children: [
                  Text(
                    'Seu negócio melhorou após a utilização do Stimulus?',
                    style: TextStyle(fontSize: constraints.maxWidth * 0.05),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 6, bottom: 10),
                    height: constraints.maxHeight * 0.06,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Qual a nota você daria após experiência com o projeto (0 - 10)?',
                    style: TextStyle(fontSize: constraints.maxWidth * 0.05),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 6, bottom: 10),
                    height: constraints.maxHeight * 0.06,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Descreva até o momento qual é a sua experiência com o Projeto Estímulo 2020:',
                    style: TextStyle(fontSize: constraints.maxWidth * 0.05),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 6, bottom: 25),
                    child: TextField(
                      maxLines: 10,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: constraints.maxWidth * 0.5,
                    color: Colors.grey,
                    height: constraints.maxHeight * 0.072,
                    child: RaisedButton(
                      child: Text(
                        'Enviar',
                        style: TextStyle(fontSize: constraints.maxWidth * 0.06),
                      ),
                      textColor: Colors.white,
                      onPressed: () {},
                      color: Color(0xff042440),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
