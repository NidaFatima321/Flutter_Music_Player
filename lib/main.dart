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
  {"name": "surajhuamadham", "singer": "Arijit Singh"},
  {"name": "chaiya", "singer": "Arijit Singh"},
  {"name": "koimilgaya", "singer": "Arijit Singh"},
  {"name": "lovemerahit", "singer": "Arijit Singh"},
  {"name": "kajrare", "singer": "Arijit Singh"},
  {"name": "tumheho", "singer": "Arijit Singh"},
];
List<dynamic> gym = [
  {"name": "abhitouparty", "singer": "Arijit Singh"},
  {"name": "sheela", "singer": "Samar Singh"},
  {"name": "gasolina", "singer": "Arijit Singh"},
  {"name": "breakup", "singer": "Arijit Singh"},
  {"name": "believer", "singer": "Arijit Singh"},
];
