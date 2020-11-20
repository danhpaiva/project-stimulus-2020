import 'package:flutter/material.dart';

class Modules_ListView extends StatefulWidget {
  final moduleName;
  final IconData iconModule;
  final List imagesCards;
  final List titleCards;

  Modules_ListView(
      {Key key,
      @required this.moduleName,
      @required this.iconModule,
      @required this.imagesCards,
      @required this.titleCards})
      : super(key: key);

  @override
  _Modules_ListViewState createState() =>
      _Modules_ListViewState(moduleName, iconModule, imagesCards, titleCards);
}

class _Modules_ListViewState extends State<Modules_ListView> {
  String _moduleName;
  IconData _iconModule;
  List _imagesCards;
  List _titleCards;

  _Modules_ListViewState(String moduleName, IconData iconModule,
      List imagesCards, List titleCards) {
    this._moduleName = moduleName;
    this._iconModule = iconModule;
    this._imagesCards = imagesCards;
    this._titleCards = titleCards;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(right: 6, left: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 8, bottom: 5),
                child: Text(
                  '$_moduleName',
                  style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff042440),
                      fontFamily: 'TimeNewRoman'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 22, right: 4),
                child: Icon(
                  _iconModule,
                  size: 26,
                  color: Color(0xff042440),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 220,
          margin: EdgeInsets.only(
            top: 6,
            bottom: 6,
            left: 12,
          ),
          child: Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _imagesCards.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                    border: Border.all(
                      color: Colors.grey[300],
                      width: 1, //                   <--- border width here
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1, 1.0),
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(right: 10, bottom: 4),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                    width: 160,
                    child: GestureDetector(
                      onTap: () {
                        debugPrint('clicou $index');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          color: Colors.blue[100],
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(7),
                              height: 110,
                              width: 200,
                              child:
                                  Image.asset('assets/${_imagesCards[index]}'),
                            ),
                            Container(
                              height: 80,
                              padding:
                                  EdgeInsets.only(top: 6, left: 8, right: 8),
                              child: Text(
                                '${_titleCards[index]}',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '$_moduleName',
                                      style: TextStyle(
                                          color: Color(0xff042440),
                                          fontSize: 10),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 1),
                                    child: Icon(
                                      Icons.play_arrow,
                                      size: 22,
                                      color: Color(0xff042440),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
