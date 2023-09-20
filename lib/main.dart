import 'package:flutter/material.dart';
import 'flash_screen.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MaterialApp(
    home: MainScreen(),
  ));
}

AssetsAudioPlayer audioPlayerCurrent = AssetsAudioPlayer();
List<dynamic> daily = [
  {"name": "chaleya", "singer": "Arijit Singh"},
  {"name": "levitating", "singer": "Dua Lipa"},
{"name":"whatjhumka","singer":"Arijit Singh"},
  {"name":"heeriye","singer":"Arijit Singh"},
];
List<dynamic> og = [
  {"name": "surajhuamadham", "singer": "Sonu Nigham"},
  {"name": "chaiya", "singer": "Sukhwinder Singh"},
  {"name": "koimilgaya", "singer": "Udit Narayan"},
  {"name": "lovemerahit", "singer": "Niraj Shridhar"},
  {"name": "kajrare", "singer": "Shanker Mahadev"},
  {"name": "tumheho", "singer": "Arijit Singh"},
];
List<dynamic> gym = [
  {"name": "abhitouparty", "singer": "Badshah"},
  {"name": "sheela", "singer": "Sunidhi Chauhan"},
  {"name": "gasolina", "singer": "Dady Yankee"},
  {"name": "breakup", "singer": "Arijit Singh"},
  {"name": "believer", "singer": "Imagine Dragons"},
];
List<dynamic> arijit=[
  {"name": "chaleya", "singer": "Arijit Singh"},
  {"name":"whatjhumka","singer":"Arijit Singh"},
  {"name":"heeriye","singer":"Arijit Singh"},
  {"name": "tumheho", "singer": "Arijit Singh"},
  {"name": "breakup", "singer": "Arijit Singh"},
  {"name": "shayad", "singer": "Arijit Singh"},
  {"name": "khairiyat", "singer": "Arijit Singh"},
  {"name": "kesariya", "singer": "Arijit Singh"},
  {"name": "nashese", "singer": "Arijit Singh"},
];List<dynamic> asim=[
  {"name": "terawohpyar", "singer": "Asim Azhar"},
  {"name": "jotunamila", "singer": "Asim Azhar"},
  {"name": "habibi", "singer": "Asim Azhar"},
];List<dynamic> atif=[
  {"name": "wohlamhe", "singer": "Atif Aslam"},
  {"name": "jeenelagahoon", "singer": "Atif Aslam"},
  {"name": "musafir", "singer": "Atif Aslam"},

];
