import 'package:flutter/material.dart';
import 'package:stimulus/pages/acompanhamento/perguntas_trimestrais.dart';

class AcompanhamentoNegocio extends StatefulWidget {
  @override
  _AcompanhamentoNegocioState createState() => _AcompanhamentoNegocioState();
}

class _AcompanhamentoNegocioState extends State<AcompanhamentoNegocio> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: LayoutBuilder(
        builder: (context, constraints) {
          var screenWidth = constraints.maxWidth;
          var screenHeight = constraints.maxHeight;

          return ListView(
            children: <Widget>[
              Container(
                child: Column(
                  children: [
                    Container(
                      height: screenHeight - screenHeight * 0.38,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PerguntasAcompanhamento(),
                                ),
                              );
                            },
                            child: Card(
                              child: Text('Card 01'),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PerguntasAcompanhamento(),
                                ),
                              );
                            },
                            child: Card(
                              child: Text('Card 01'),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PerguntasAcompanhamento(),
                                ),
                              );
                            },
                            child: Card(
                              child: Text('Card 01'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
