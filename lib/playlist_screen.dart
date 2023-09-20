import 'package:flutter/material.dart';
import 'package:musicplayerapp/main.dart';
import 'package:musicplayerapp/widgets/playlist_widget.dart';

class PlaylistScreen extends StatelessWidget {
  final String type;
  const PlaylistScreen({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> songs;
    if (type == "daily") {
      songs = daily;
    } else if (type == 'og') {
      songs = og;
    } else {
      songs = gym;
    }
    ;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                  colors: [
                    Colors.purpleAccent,
                    Colors.blueAccent,
                    Colors.deepPurple,
                    Colors.pink
                  ],
                  stops: [0.1, 0.3, 0.6, 0.9],
                )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 40),
                  child: Text(
                    'YOUR ${type.toUpperCase()} PLAYLIST',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 24,fontFamily: 'Pacifico'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: songs.length,
                itemBuilder: (context, index) {
                  return PlaylistWidget(
                      image: songs[index]['name'],
                      songName: songs[index]['name'],
                      singerName: songs[index]['singer']);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
