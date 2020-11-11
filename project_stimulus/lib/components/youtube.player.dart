import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class RodarYoutube extends StatefulWidget {
  String videoURL;
  String title;
  String des;

  @override
  RodarYoutubeState createState() => RodarYoutubeState();

  RodarYoutube(
    this.videoURL,
    this.title,
    this.des,
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
          return Column(
            children: <Widget>[
              player,
              SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Text(
                          widget.title.toUpperCase(),
                          style: TextStyle(
                              fontFamily: 'TT NORMS',
                              fontSize: 20,
                              fontWeight: FontWeight.w100),
                        ),
                        Text(
                          widget.des,
                          style: TextStyle(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    ));
  }
}
