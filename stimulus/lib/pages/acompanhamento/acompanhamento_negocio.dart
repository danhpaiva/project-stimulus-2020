import 'package:flutter/material.dart';
import 'package:stimulus/pages/acompanhamento/perguntas_trimestrais.dart';

class AcompanhamentoNegocio extends StatefulWidget {
  int ultimoQuestionarioFeito = 0;

  AcompanhamentoNegocio({Key key, @required this.ultimoQuestionarioFeito})
      : super(key: key);

  @override
  _AcompanhamentoNegocioState createState() =>
      _AcompanhamentoNegocioState(ultimoQuestionarioFeito);
}

class _AcompanhamentoNegocioState extends State<AcompanhamentoNegocio> {
  int _ultimoQuestionarioFeito;

  _AcompanhamentoNegocioState(int ultimoQuestionarioFeito) {
    this._ultimoQuestionarioFeito = ultimoQuestionarioFeito;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * .09,
        centerTitle: true,
        iconTheme: IconTheme.of(context),
        leadingWidth: MediaQuery.of(context).size.width * .085,
        title: Text(
          'Acompanhamento de Negócio',
          style: TextStyle(color: Color(0xff042440), fontSize: 21),
        ),
        backgroundColor: Colors.transparent, // <-- APPBAR WITH TRANSPARENT BG
        elevation: 0, // <-- ELEVATION ZEROED
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          var screenWidth = constraints.maxWidth;
          var screenHeight = constraints.maxHeight;

          return ListView(
            children: <Widget>[
              Container(
                child: Column(
                  children: [
                    Container(
                      height: screenHeight - screenHeight * 0.01,
                      child: Column(
                        children: [
                          Container(
                            width: screenWidth * 0.85,
                            child: Center(
                              child: Text(
                                'A sua empresa é de grande valor para nós, pois o nosso objetivo é promover o seu crescimento. \n E esse espaço é destinado para a sua avaliação, de como tem caminhado sua empresa após a parceria com o projeto Estímulo 2020.',
                                style: TextStyle(
                                    fontSize: screenWidth * 0.05,
                                    color: Colors.grey[600]),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            width: screenWidth * 0.85,
                            child: RaisedButton(
                              onPressed: _ultimoQuestionarioFeito == 0
                                  ? () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              PerguntasAcompanhamento(),
                                        ),
                                      );
                                    }
                                  : () {},
                              color: _ultimoQuestionarioFeito == 0
                                  ? Color(0xFF011526)
                                  : Colors.green[900],
                              padding: EdgeInsets.all(0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.blue[300],
                                      width: 4,
                                    ),
                                  ),
                                ),
                                padding: EdgeInsets.only(left: 12, right: 6),
                                height: screenHeight * 0.12,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '1º Questionário Avaliativo',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.05,
                                          color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.event_note,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            width: screenWidth * 0.85,
                            child: RaisedButton(
                              color: _ultimoQuestionarioFeito == 2
                                  ? Colors.green[900]
                                  : Color(0xFF011526),
                              padding: EdgeInsets.all(0),
                              onPressed: _ultimoQuestionarioFeito == 0
                                  ? null
                                  : _ultimoQuestionarioFeito == 1
                                      ? () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  PerguntasAcompanhamento(),
                                            ),
                                          );
                                        }
                                      : () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.blue[300],
                                      width: 4,
                                    ),
                                  ),
                                ),
                                padding: EdgeInsets.only(left: 12, right: 6),
                                height: screenHeight * 0.12,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '2º Questionário Avaliativo',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.05,
                                          color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.event_note,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            width: screenWidth * 0.85,
                            child: RaisedButton(
                              color: _ultimoQuestionarioFeito == 3
                                  ? Colors.green[900]
                                  : Color(0xFF011526),
                              padding: EdgeInsets.all(0),
                              onPressed: null,
                              child: Container(
                                padding: EdgeInsets.only(left: 12, right: 6),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.blue[300],
                                      width: 4,
                                    ),
                                  ),
                                ),
                                height: screenHeight * 0.12,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '3º Questionário Avaliativo',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.05,
                                          color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.event_note,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            width: screenWidth * 0.85,
                            child: RaisedButton(
                              color: _ultimoQuestionarioFeito == 2
                                  ? Colors.green[900]
                                  : Color(0xFF011526),
                              padding: EdgeInsets.all(0),
                              onPressed: null,
                              child: Container(
                                padding: EdgeInsets.only(left: 12, right: 6),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.blue[300],
                                      width: 4,
                                    ),
                                  ),
                                ),
                                height: screenHeight * 0.12,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '4º Questionário Avaliativo',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.05,
                                          color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.event_note,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
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
