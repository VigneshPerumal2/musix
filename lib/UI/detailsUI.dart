import 'dart:async';

import 'package:flutter/material.dart';
import '../BLoC/music_detail_bloc_provider.dart';
import '../models/lyrics.dart';

class detailsUI extends StatefulWidget {
  final String artist_name;
  final String track_name;
  final String album_name;
  final String explicit;
  final String track_rating;
  final int track_id;

  detailsUI({
    this.artist_name,
    this.track_name,
    this.album_name,
    this.explicit,
    this.track_rating,
    this.track_id
  });

  @override
  State<StatefulWidget> createState() {
    return detailsUIState(
        artist_name:artist_name,
        track_name:track_name,
        album_name:album_name,
        explicit:explicit,
        track_rating:track_rating,
        track_id:track_id

    );
  }
}

class detailsUIState extends State<detailsUI> {
  final String artist_name;
  final String track_name;
  final String album_name;
  final String explicit;
  final String track_rating;
  final int track_id;

  detailsUIState({
    this.artist_name,
    this.track_name,
    this.album_name,
    this.explicit,
    this.track_rating,
    this.track_id
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Details"),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Text('$track_name'),
              Text('$artist_name'),
              Text('$album_name'),
              Text('$explicit'),
              Text('$track_rating'),
            ],
          ),
        )
      ),
    );
  }
}