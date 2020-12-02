import 'package:flutter/material.dart';

class MentoriaEspecifica extends StatefulWidget {
  @override
  _MentoriaEspecificaState createState() => _MentoriaEspecificaState();
}

class _MentoriaEspecificaState extends State<MentoriaEspecifica> {
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
