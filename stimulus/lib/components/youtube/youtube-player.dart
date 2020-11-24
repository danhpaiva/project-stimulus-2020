import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class RodarYoutube extends StatefulWidget {
  String videoURL;
  String title;
  String descricao;

  @override
  RodarYoutubeState createState() => RodarYoutubeState();

  RodarYoutube(
    this.videoURL,
    this.title,
    this.descricao,
  );
}

class RodarYoutubeState extends State<RodarYoutube> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoURL),
      flags: YoutubePlayerFlags(
          autoPlay: false, mute: false, controlsVisibleAtStart: true),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: _controller,
            aspectRatio: 16 / 9,
            showVideoProgressIndicator: true,
          ),
          builder: (context, player) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
                color: Colors.blue[100],
              ),
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(bottom: 10),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(top: 14, bottom: 12, left: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      color: Color(0xFF011526),
                    ),
                    child: Text(
                      'Financeiro',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                  Container(padding: EdgeInsets.all(10), child: player),
                  Container(
                    padding: EdgeInsets.all(11),
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                widget.title,
                                style: TextStyle(
                                  fontFamily: 'TT NORMS',
                                  fontSize: 21,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 12, right: 5),
                              child: Text(
                                widget.descricao,
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
