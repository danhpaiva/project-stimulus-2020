import 'package:flutter/material.dart';

class MentoriaEspecificaPage05 extends StatefulWidget {
  @override
  _MentoriaEspecificaPage05State createState() =>
      _MentoriaEspecificaPage05State();
}

class _MentoriaEspecificaPage05State extends State<MentoriaEspecificaPage05> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapeamento 5'),
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
