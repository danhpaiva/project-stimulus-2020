import 'package:flutter/material.dart';

class MenuProcess extends StatefulWidget {
  final String textTitleInfo;
  final String imageCard;
  final String titleCard;
  final String descriptionCard;

  MenuProcess(
      {Key key,
      @required this.textTitleInfo,
      @required this.imageCard,
      @required this.titleCard,
      @required this.descriptionCard})
      : super(key: key);

  @override
  _MenuProcessState createState() =>
      _MenuProcessState(textTitleInfo, imageCard, titleCard, descriptionCard);
}

class _MenuProcessState extends State<MenuProcess> {
  String _textTitleInfo;
  String _imageCard;
  String _titleCard;
  String _descriptionCards;

  _MenuProcessState(String textTitleInfo, String imageCard, String titleCard,
      String descriptionCard) {
    this._textTitleInfo = textTitleInfo;
    this._imageCard = imageCard;
    this._titleCard = titleCard;
    this._descriptionCards = descriptionCard;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 340,
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(bottom: 8),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey[300],
                  width: 1.0,
                ),
              ),
            ),
            child: Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 160,
                    width: 120,
                    child: Image.asset('assets/$_imageCard'),
                  ),
                  Container(
                    width: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 2, left: 2),
                          child: Text(
                            '$_titleCard',
                            style: TextStyle(
                                fontSize: 20, color: Color(0xff000000)),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 10, left: 2),
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
                    height: 160,
                    padding: EdgeInsets.only(bottom: 116, right: 4),
                    child: Icon(
                      Icons.ac_unit,
                      size: 18,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
