import 'package:flutter/material.dart';

class MentoriaEspecificaPage03 extends StatefulWidget {
  @override
  _MentoriaEspecificaPage03State createState() =>
      _MentoriaEspecificaPage03State();
}

class _MentoriaEspecificaPage03State extends State<MentoriaEspecificaPage03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapeamento 3'),
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
