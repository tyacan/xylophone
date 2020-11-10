import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());



class XylophoneApp extends StatelessWidget {
  final audioCache = AudioCache();
  static AudioCache playAudio = new AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                noteKey(1, Colors.red,),
                noteKey(2, Colors.orange,),
                noteKey(3, Colors.yellow,),
                noteKey(4, Colors.green,),
                noteKey(5, Colors.teal,),
                noteKey(6, Colors.blue,),
                noteKey(7, Colors.purple,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


Expanded noteKey(int order, Color color) {
  return Expanded(
    flex: 1,
    child: FlatButton(
      child: Text(''),
      color: color,
      onPressed: () {
        playNote(order);
      },
    ),
  );
}

void playNote(int order) {
  final audioCache = AudioCache();
  audioCache.play('note$order.wav');
}