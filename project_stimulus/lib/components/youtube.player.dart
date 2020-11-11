import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class RodarYoutube extends StatefulWidget {
  @override
  _RodarYoutubeState createState() => _RodarYoutubeState();
}

class _RodarYoutubeState extends State<RodarYoutube> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'e--xnFnwPTU',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: YoutubePlayer(controller: _controller),
      ),
    );
  }
}
