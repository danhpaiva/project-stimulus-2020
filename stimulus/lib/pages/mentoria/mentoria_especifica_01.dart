import 'package:flutter/material.dart';

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
