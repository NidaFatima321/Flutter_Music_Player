import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  final String imageSinger;
  final String songname;
  final String singer;
  const DashboardWidget({Key? key, required this.imageSinger, required this.songname, required this.singer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageSinger,height: 150,),
        Text(songname,
        style: TextStyle(
          fontFamily: 'SourceSansPro'
        ),),
        Text(singer)
      ],
    );
  }
}
