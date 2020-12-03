import 'package:flutter/material.dart';

class MentoriaEspecificaPage02 extends StatefulWidget {
  @override
  _MentoriaEspecificaPage02State createState() =>
      _MentoriaEspecificaPage02State();
}

class _MentoriaEspecificaPage02State extends State<MentoriaEspecificaPage02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapeamento 2'),
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
