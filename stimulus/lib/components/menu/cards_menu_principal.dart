import 'package:flutter/material.dart';

class MenuProcess extends StatefulWidget {
  final String imageCard;
  final String titleCard;
  final String descriptionCard;
  final IconData iconCard;

  MenuProcess(
      {Key key,
      @required this.imageCard,
      @required this.titleCard,
      @required this.descriptionCard,
      @required this.iconCard})
      : super(key: key);

  @override
  _MenuProcessState createState() =>
      _MenuProcessState(imageCard, titleCard, descriptionCard, iconCard);
}

class _MenuProcessState extends State<MenuProcess> {
  String _imageCard;
  String _titleCard;
  String _descriptionCards;
  IconData _iconCard;

  _MenuProcessState(String imageCard, String titleCard, String descriptionCard,
      IconData iconCard) {
    this._imageCard = imageCard;
    this._titleCard = titleCard;
    this._descriptionCards = descriptionCard;
    this._iconCard = iconCard;
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
                  width: size.width * 0.5,
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
              _iconCard,
              size: size.width * 0.05,
              color: Color(0xff042440),
            ),
          )
        ],
      ),
    );
  }
}
