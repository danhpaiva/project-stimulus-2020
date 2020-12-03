import 'package:flutter/material.dart';

class MentoriaEspecificaPage06 extends StatefulWidget {
  @override
  _MentoriaEspecificaPage06State createState() =>
      _MentoriaEspecificaPage06State();
}

class _MentoriaEspecificaPage06State extends State<MentoriaEspecificaPage06> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapeamento 6'),
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
