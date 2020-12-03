import 'package:flutter/material.dart';
import 'package:stimulus/pages/mentoria/mentores.dart';
import 'package:stimulus/pages/menu_principal.dart';

class MentoriaEspecificaSucesso extends StatefulWidget {
  @override
  _MentoriaEspecificaSucessoState createState() =>
      _MentoriaEspecificaSucessoState();
}

class _MentoriaEspecificaSucessoState extends State<MentoriaEspecificaSucesso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Mapeamento',
          style: TextStyle(fontSize: 20, color: Color(0xFF011526)),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15, left: 30, right: 30),
                  child: Center(
                    child: Text(
                      'Mapeamento preenchido com Sucesso!',
                      style: TextStyle(fontSize: constraints.maxWidth * 0.08),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5, left: 30, right: 30),
                  child: Center(
                    child: Text(
                      'As respostas, desse formulário, nos auxiliarão a indentificar como sua empresa está e se ela está apta para coolaborar com o crescimento de outras empresas.',
                      style: TextStyle(
                          fontSize: constraints.maxWidth * 0.04,
                          color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  height: constraints.maxWidth * 0.45,
                  child: Image.asset('assets/mapeamento_sucesso.png'),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 45, right: 45),
                  child: Center(
                    child: Text(
                      'Obrigado por topar preencher o mapeamento de suas fragilidades.',
                      style: TextStyle(
                          fontSize: constraints.maxWidth * 0.05,
                          color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 20, bottom: 5, left: 45, right: 45),
                  height: constraints.maxHeight * 0.08,
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xFF011526),
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: new BorderRadius.circular(9.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MenuPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: constraints.maxWidth * 0.047,
                      ),
                    ),
                    color: Color(0xFF011526),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 10, bottom: 20, left: 45, right: 45),
                  height: constraints.maxHeight * 0.08,
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xFF011526),
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: new BorderRadius.circular(9.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageMentores(),
                        ),
                      );
                    },
                    child: Text(
                      'Mentores Disponíveis',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: constraints.maxWidth * 0.047,
                      ),
                    ),
                    color: Color(0xFF011526),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
