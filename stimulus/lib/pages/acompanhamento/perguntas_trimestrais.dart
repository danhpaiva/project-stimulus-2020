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
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            child: Column(
              children: [
                Text('Seu negócio melhorou após a utilização do Stimulus?'),
                Container(
                  width: constraints.maxWidth * 0.8,
                  height: constraints.maxHeight * 0.05,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Text(
                    'Qual a nota você daria após experiência com o projeto (0 - 10)?'),
                Container(
                  width: constraints.maxWidth * 0.8,
                  height: constraints.maxHeight * 0.05,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Text(
                    'Descreva até o momento qual é a sua experiência com o Projeto Estímulo 2020:'),
                TextField(
                  maxLines: 10,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                FloatingActionButton(onPressed: null)
              ],
            ),
          );
        },
      ),
    );
  }
}
