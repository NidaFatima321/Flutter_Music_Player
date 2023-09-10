import 'package:flutter/material.dart';
import 'dashboard.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/bg1.jfif'),
                    opacity: 0.9)),
          ),
          Positioned(
              // left: MediaQuery.of(context).size.width * 0.22,
              top: 20,
              child: Column(
                children: [
                  Text(
                    'SOUND PLAY',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3.0),
                  ),
                  Text(
                    "PLAY YOUR FAVOURITE MUSIC",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Image.asset(
                    'assets/images/sound.webp',
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                  ),
                ],
              ))
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Dashboard(),));
          }, label: Row(children: [Text('PLAY ME'),Icon(Icons.play_arrow)],)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
