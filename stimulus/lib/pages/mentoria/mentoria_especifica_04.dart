import 'package:flutter/material.dart';

class MentoriaEspecificaPage04 extends StatefulWidget {
  @override
  _MentoriaEspecificaPage04State createState() =>
      _MentoriaEspecificaPage04State();
}

class _MentoriaEspecificaPage04State extends State<MentoriaEspecificaPage04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapeamento 4'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            child: Column(children: [
              Text('Seu negócio melhorou após a utilização do Stimulus?'),
              FloatingActionButton(onPressed: null)
            ]),
          );
        },
      ),
    );
  }
}
