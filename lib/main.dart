import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
//  import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded pianoKeyTile({required Color color, required int countNo}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () {
          final player = AudioCache();
          player.play('note$countNo.wav');
        },
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                pianoKeyTile(color: Colors.red, countNo: 1),
                pianoKeyTile(color: Colors.green, countNo: 2),
                pianoKeyTile(color: Colors.blue, countNo: 3),
                pianoKeyTile(color: Colors.yellow, countNo: 4),
                pianoKeyTile(color: Colors.pink, countNo: 5),
                pianoKeyTile(color: Colors.brown, countNo: 6),
                pianoKeyTile(color: Colors.purple, countNo: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
