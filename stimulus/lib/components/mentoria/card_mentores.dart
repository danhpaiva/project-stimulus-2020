import 'package:flutter/material.dart';

class CardMentores extends StatefulWidget {
  final String imagemPerfil;
  final String nomeMentor;
  final String areaMentor;
  final String classificacaoMentor;

  CardMentores(
      {Key key,
      @required this.imagemPerfil,
      @required this.nomeMentor,
      @required this.areaMentor,
      @required this.classificacaoMentor})
      : super(key: key);

  @override
  _CardMentoresState createState() => _CardMentoresState(
      imagemPerfil, nomeMentor, areaMentor, classificacaoMentor);
}

class _CardMentoresState extends State<CardMentores> {
  String image;
  String nome;
  String area;
  String classificacao;

  _CardMentoresState(String imagemPerfil, String nomeMentor, String areaMentor,
      String classificacaoMentor) {
    this.image = imagemPerfil;
    this.nome = nomeMentor;
    this.area = areaMentor;
    this.classificacao = classificacaoMentor;
  }

  @override
  Widget build(BuildContext context) {
    var constraints = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: .5, //                   <--- border width here
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              offset: Offset(1, 1.0),
              blurRadius: 3.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(6)),
          color: Colors.grey[300]),
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(6),
      width: constraints.width * 0.8,
      height: constraints.height * 0.16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: .5, //                   <--- border width here
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/$image'),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(100.0),
              ),
            ),
          ),
          Container(
            width: constraints.width * 0.55,
            padding: EdgeInsets.only(left: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: constraints.width * 0.6,
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    '$nome',
                    style: TextStyle(
                      fontSize: constraints.width * 0.053,
                      color: Color(0xFF011526),
                    ),
                  ),
                ),
                Container(
                  width: constraints.width * 0.6,
                  padding: EdgeInsets.only(bottom: 4),
                  child: Text(
                    '$area',
                    style: TextStyle(
                      fontSize: constraints.width * 0.044,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                Container(
                  width: constraints.width * 0.6,
                  height: constraints.height * 0.02,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/classificacao_0$classificacao.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.person),
              Container(
                height: constraints.height * 0.035,
                child: Image.asset('assets/logo_whatsapp.png'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
