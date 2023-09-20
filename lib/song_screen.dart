import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:musicplayerapp/main.dart';

class SongScreen extends StatefulWidget {
  final String song;
  final String imageSong;
  final String signer;
  const SongScreen({
    Key? key,
    required this.song,
    required this.imageSong,
    required this.signer,
  }) : super(key: key);

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  int count = 0;
  AssetsAudioPlayer _audioAsset = AssetsAudioPlayer.newPlayer();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.92,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.84,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                      color: Colors.deepPurple),
                ),
                Positioned(
                    top: 50,
                    left: MediaQuery.of(context).size.width * 0.2,
                    right: MediaQuery.of(context).size.width * 0.2,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SafeArea(
                            child: Text(
                          'NOW PLAYING',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              letterSpacing: 10,
                              fontWeight: FontWeight.bold),
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 40),
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 0.5),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 10),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    'assets/images/${widget.imageSong}',
                                    width: 140,
                                  )),
                            ),
                          ),
                        ),
                        Text(
                          widget.song.toUpperCase(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,),
                        ),
                        Text(
                          widget.signer.toUpperCase(),
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 130,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: GestureDetector(
                                onTap: () {
                                  _audioAsset.seek(Duration(
                                      seconds: _audioAsset
                                              .currentPosition.value.inSeconds -
                                          10));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        color: Colors.white, width: 2),
                                    color: Colors.deepPurple,
                                  ),
                                  // color: Colors.grey,
                                  padding: EdgeInsets.all(15),
                                  child: Icon(Icons.replay_30_rounded),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                if (count == 0) {
                                  audioPlayerCurrent.stop();
                                  audioPlayerCurrent=_audioAsset;
                                  _audioAsset.open(
                                    Audio("assets/songs/${widget.song}.mp3"),
                                    autoStart: true,
                                    showNotification: true,
                                  );
                                  count = 1;
                                } else if (count == 1) {
                                  count = 2;
                                  _audioAsset.pause();
                                } else if (count == 2) {
                                  count = 1;
                                  _audioAsset.play();
                                }
                                setState(() {});
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        color: Colors.white, width: 2),
                                    color: Colors.deepPurple,
                                  ),
                                  padding: EdgeInsets.all(30),
                                  child: count == 2 || count == 0
                                      ? Icon(
                                          Icons.play_arrow,
                                          size: 30,
                                        )
                                      : Icon(
                                          Icons.stop,
                                          size: 30,
                                        ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _audioAsset.seek(Duration(
                                    seconds: _audioAsset
                                            .currentPosition.value.inSeconds +
                                        10));
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        color: Colors.white, width: 2),
                                    color: Colors.deepPurple,
                                  ),
                                  padding: EdgeInsets.all(15),
                                  child: Icon(Icons.replay_30_rounded),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
              ],
            ),
            StreamBuilder(
                stream: _audioAsset.currentPosition,
                builder: (context, snapshot) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ProgressBar(
                        onSeek: (duration) {
                          _audioAsset.seek(duration);
                        },
                        baseBarColor: Colors.deepPurple,
                        progressBarColor: Colors.grey,
                        progress: _audioAsset.currentPosition.value,
                        total: _audioAsset.current.valueOrNull?.audio.duration ??
                            Duration(seconds: 4)),
                  );
                })
          ],
        ),
      ),
    );
  }
}
