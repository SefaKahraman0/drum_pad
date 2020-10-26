import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrumApp(),
    );
  }
}

class DrumApp extends StatefulWidget {
  @override
  _DrumAppState createState() => _DrumAppState();
}

class _DrumAppState extends State<DrumApp> {
  final audioPlayer = AudioCache();

  Color floorOne = Colors.red;
  Color floorTwo = Colors.amber;
  Color floorThree = Colors.teal;
  Color floorFour = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001932),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(5),
          alignment: Alignment.bottomLeft,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        pad(floorOne, ""),
                        pad(floorOne, ""),
                        pad(floorOne, ""),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        pad(floorOne, "hat_1.wav"),
                        pad(floorOne, ""),
                        pad(floorOne, ""),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        pad(floorTwo, ""),
                        pad(floorTwo, ""),
                        pad(floorTwo, ""),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        pad(floorTwo, "hat_1.wav"),
                        pad(floorTwo, ""),
                        pad(floorTwo, ""),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        pad(floorThree, ""),
                        pad(floorThree, ""),
                        pad(floorThree, ""),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        pad(floorThree, "hat_1.wav"),
                        pad(floorThree, ""),
                        pad(floorThree, ""),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container pad(Color color, String sound) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 60,
      height: 60,
      child: FlatButton(
          onPressed: () {
            audioPlayer.play(sound);
          },
          color: color),
    );
  }
}
