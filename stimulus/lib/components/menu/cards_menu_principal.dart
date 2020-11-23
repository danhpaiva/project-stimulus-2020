import 'package:flutter/material.dart';

class MenuProcess extends StatefulWidget {
  final String imageCard;
  final String titleCard;
  final String descriptionCard;

  MenuProcess(
      {Key key,
      @required this.imageCard,
      @required this.titleCard,
      @required this.descriptionCard})
      : super(key: key);

  @override
  _MenuProcessState createState() =>
      _MenuProcessState(imageCard, titleCard, descriptionCard);
}

class _MenuProcessState extends State<MenuProcess> {
  String _imageCard;
  String _titleCard;
  String _descriptionCards;

  _MenuProcessState(
      String imageCard, String titleCard, String descriptionCard) {
    this._imageCard = imageCard;
    this._titleCard = titleCard;
    this._descriptionCards = descriptionCard;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.19,
      margin: EdgeInsets.only(
        top: size.height * 0.01,
        left: size.width * 0.04,
        right: size.width * 0.04,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[300],
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            width: size.width * 0.35,
            child: Image.asset('assets/$_imageCard'),
          ),
          Container(
            width: size.width * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 2),
                  child: Text(
                    '$_titleCard',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    '$_descriptionCards',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: size.height * 0.15),
            child: Icon(
              Icons.ac_unit,
              size: size.width * 0.05,
            ),
          )
        ],
      ),
    );
  }
}
