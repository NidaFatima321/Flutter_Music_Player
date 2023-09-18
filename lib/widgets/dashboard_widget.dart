import 'package:flutter/material.dart';

import '../main.dart';

class DashboardWidget extends StatelessWidget {
  final String imageSinger;
  final String songname;
  final String singer;
  final Widget link;
  const DashboardWidget({Key? key, required this.imageSinger, required this.songname, required this.singer, required this.link}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        imageSinger==''?GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => link,));
          },
          child: Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blueGrey,
                  Colors.purple
                ],
                stops: [
                  0.1,
                  0.9
                ]
              )
            ),
          ),
        ):GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => link,));
            },
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageSinger),
                  fit: BoxFit.fill
                )
              ),
              // child: Image.asset(imageSinger,),
            )),
        Text(songname,
        style: TextStyle(
          fontFamily: 'SourceSansPro'
        ),),
        Text(singer,textAlign: TextAlign.center,)
      ],
    );
  }
}
