import 'package:flutter/material.dart';
import 'dart:ui';
import 'pages/cadastrar.dart';
import 'pages/entrar.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  width: constraints.maxWidth * .5,
                  margin: const EdgeInsets.only(top: 100),
                  child: Image.asset(
                    'assets/logo.png',
                  )),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: constraints.maxWidth * .4,
                      height: constraints.maxHeight * .065,
                      child: RaisedButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(12.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          'ENTRAR',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: constraints.maxWidth * 0.047),
                        ),
                        color: Color(0xFF011526),
                      ),
                    ),
                    Container(
                      width: constraints.maxWidth * .4,
                      height: constraints.maxHeight * .065,
                      child: FlatButton(
                        shape: new RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xFF011526),
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: new BorderRadius.circular(12.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpPage(),
                            ),
                          );
                        },
                        child: Text(
                          'CADASTRAR',
                          style: TextStyle(
                              color: Color(0xFF011526),
                              fontSize: constraints.maxWidth * 0.047),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15),
                child: Image.asset('assets/logo-estimulo.png',
                    width: constraints.maxWidth * 0.5),
              ),
            ],
          );
        },
      ),
    );
  }
}
