import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:musicplayerapp/main.dart';
import 'package:musicplayerapp/playlist_screen.dart';
import 'package:musicplayerapp/widgets/dashboard_widget.dart';
import 'package:musicplayerapp/song_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "LATEST",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          colors: [Colors.pink, Colors.purple, Colors.blue],
                          stops: [0.1, 0.6, 0.9],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ASIM AZHAR',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 3.0),
                      ),
                      Text('GHALAT FEHMI',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Opacity(
                            opacity: 0.7,
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SongScreen(song: 'ghalatfehmi', imageSong: 'dard.jfif', signer:'asim azhar'),));
                              },
                              child: Text('LISTEN NOW'),
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.grey),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "MOST PLAYED",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                CarouselSlider(
                    items: [
                      DashboardWidget(
                        imageSinger: 'assets/images/dard.jfif',
                        singer: 'ASIM AZHAR',
                        songname: 'DARD', link: SongScreen(song: 'dard', imageSong: 'dard.jfif', signer: 'asim azhar',),
                      ),
                      DashboardWidget(
                        imageSinger: 'assets/images/jhoom.jfif',
                        singer: 'ALI ZAFAR',
                        songname: 'JHOOM',
                          link: SongScreen(song: 'jhoom', imageSong: 'jhoom.jfif', signer: 'ali zafar',)
                      ),
                      DashboardWidget(
                        imageSinger: 'assets/images/kesebatain.jfif',
                        singer: 'ATIF ASLAM',
                        songname: 'KESE BATAIN',
                          link: SongScreen(song: 'kesebatain', imageSong: 'kesebatain.jfif', signer: 'Atif Aslam',)
                      ),
                      DashboardWidget(
                        imageSinger: 'assets/images/terawohpyar.jpg',
                        singer: 'MOMINAH MUSTEHSAN',
                        songname: 'TERA WOH PYAR',
                          link: SongScreen(song: 'terawohpyar', imageSong: 'terawohpyar.jpg', signer: 'Momina Mustehsan',)
                      ),
                    ],
                    options: CarouselOptions(
                      height: 200,
                      viewportFraction: 0.4,
                      initialPage: 0,
                      reverse: false,
                      // autoPlay: true,
                      // autoPlayInterval: Duration(seconds: 3),
                      // autoPlayAnimationDuration: Duration(milliseconds: 800),
                      // autoPlayCurve: Curves.fastOutSlowIn,
                      // enlargeCenterPage: true,
                      // enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "PLAYLISTS",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                CarouselSlider(
                    items: [
                      DashboardWidget(
                        imageSinger: '',
                        singer: 'DAILY DOSE',
                        songname: '${daily.length}',
                          link: PlaylistScreen(type: 'daily',)
                      ),
                      DashboardWidget(
                        imageSinger: '',
                        singer: 'OGs',
                        songname: '${og.length}',
                          link: PlaylistScreen(type: 'og',)
                      ),
                      DashboardWidget(
                        imageSinger: '',
                        singer: 'GYM SONGS',
                        songname: '${gym.length}',
                          link: PlaylistScreen(type: 'gym',)
                      ),
                    ],
                    options: CarouselOptions(
                      height: 200,
                      viewportFraction: 0.4,
                      initialPage: 0,
                      reverse: false,
                      scrollDirection: Axis.horizontal,
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "ARTISTS",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                CarouselSlider(
                    items: [
                      DashboardWidget(
                        imageSinger: 'assets/images/arijit.jfif',
                        singer: 'ARIJIT SINGH',
                        songname: '${arijit.length}',
                          link: PlaylistScreen(type: 'arijit',)
                      ),
                      DashboardWidget(
                        imageSinger: 'assets/images/kesebatain.jfif',
                        singer: 'ATIF ASLAM',
                        songname: '${atif.length}',
                          link: PlaylistScreen(type: 'atif',)
                      ),
                      DashboardWidget(
                        imageSinger: 'assets/images/asim.jfif',
                        singer: 'ASIM AZHAR',
                        songname: '${asim.length}',
                          link: PlaylistScreen(type: 'asim',)
                      ),
                    ],
                    options: CarouselOptions(
                      height: 200,
                      viewportFraction: 0.4,
                      initialPage: 0,
                      reverse: false,
                      scrollDirection: Axis.horizontal,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
