import 'package:flutter/material.dart';
import 'package:musicplayerapp/song_screen.dart';

class PlaylistWidget extends StatelessWidget {
  final String image;
  final String songName;
  final String singerName;
  const PlaylistWidget(
      {Key? key,
      required this.image,
      required this.songName,
      required this.singerName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/images/${image}.jpg',
            ),
          ),
          title: Column(
            children: [
              Text(songName.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15
              ),),
              Text(singerName)],
          ),
          trailing: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SongScreen(
                      song: songName,
                      imageSong: '${image}.jpg',
                      signer: singerName),
                ));
              },
              child: 
              Stack(
                children: [
                  Image.asset('assets/images/splash.png',width: 60,),
                  Positioned(
                      left: 15,
                      child: Icon(Icons.play_arrow,size: 30,color: Colors.white,))
                ],
              )
          ),
        ),
      ),
    );
  }
}
