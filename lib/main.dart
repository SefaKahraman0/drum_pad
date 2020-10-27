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

  Color floorOne = Colors.red; //kick
  Color floorTwo = Colors.amber; //hihat
  Color floorThree = Colors.teal; //crash
  Color floorFour = Colors.purple; //snare
  Color floorFive = Colors.white60; //tom

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
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "DRUM PAD",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontFamily: 'Pacifico',
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              padExplainText("Kick     : "),
                              padExplainContainer(floorOne, 0),
                            ],
                          ),
                          Row(
                            children: [
                              padExplainText("Hi-Hat : "),
                              padExplainContainer(floorTwo, 1),
                            ],
                          ),
                          Row(
                            children: [
                              padExplainText("Crash  : "),
                              padExplainContainer(floorThree, 1),
                            ],
                          ),
                          Row(
                            children: [
                              padExplainText("Snare  : "),
                              padExplainContainer(floorFour, 1),
                            ],
                          ),
                          Row(
                            children: [
                              padExplainText("Tom    : "),
                              padExplainContainer(floorFive, 2),
                            ],
                          ),
                        ],
                      ),
                      margin: EdgeInsets.only(bottom: 30),
                    ),
                    Row(
                      children: [
                        Expanded(child: pad(floorFive, "tom/707_tom.wav")),
                        Expanded(child: pad(floorFive, "tom/909_tom.wav")),
                        Expanded(child: pad(floorFive, "tom/overhead_tom.wav")),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: pad(floorFive, "tom/prom_tom.wav")),
                        Expanded(child: pad(floorFive, "tom/titey_tom.wav")),
                        Expanded(
                            child: pad(floorFive, "tom/toidiling_tom.wav")),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: pad(floorThree, "crash/707_crash.wav")),
                        Expanded(
                            child: pad(floorThree, "crash/707_crash_ride.wav")),
                        Expanded(child: pad(floorThree, "crash/909_crash.wav")),
                        Expanded(
                            child: pad(floorThree, "crash/909_crash_ride.wav")),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: pad(floorTwo, "hihat/707_ch_hihat.wav")),
                        Expanded(
                            child: pad(floorTwo, "hihat/707_oh_hihat.wav")),
                        Expanded(
                            child: pad(floorTwo, "hihat/808_ch_hihat.wav")),
                        Expanded(
                            child: pad(floorTwo, "hihat/808_oh_hihat.wav")),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: pad(floorTwo, "hihat/909_ch_hihat.wav")),
                        Expanded(
                            child: pad(floorTwo, "hihat/909_oh_hihat.wav")),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: pad(floorFour, "snare/fpc_snare.wav")),
                        Expanded(
                            child: pad(floorFour, "snare/fpc_snare_1.wav")),
                        Expanded(
                            child: pad(floorFour, "snare/krunkedy_snare.wav")),
                        Expanded(
                            child: pad(floorFour, "snare/loose_snare.wav")),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child:
                                pad(floorFour, "snare/overhead_snare_1.wav")),
                        Expanded(
                            child:
                                pad(floorFour, "snare/overhead_snare_2.wav")),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: pad(floorOne, "kick/22in_kick.wav")),
                        Expanded(child: pad(floorOne, "kick/ekit_kick.wav")),
                        Expanded(child: pad(floorOne, "kick/22in_kick.wav")),
                        Expanded(child: pad(floorOne, "kick/ekit_kick.wav")),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(child: pad(floorOne, "kick/fpc_1_kick.wav")),
                        Expanded(child: pad(floorOne, "kick/fpc_1_kick.wav")),
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

  Container padExplainContainer(
      Color colorExplainContainer, double spaceColorExplainContainer) {
    return Container(
      margin: EdgeInsets.only(left: spaceColorExplainContainer),
      width: 15,
      height: 15,
      color: colorExplainContainer,
    );
  }

  Text padExplainText(String stringExplainPad) {
    return Text(
      stringExplainPad,
      style: TextStyle(color: Colors.white, fontSize: 15),
    );
  }

  Container pad(Color color, String sound) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 60,
      height: 50,
      child: FlatButton(
          onPressed: () {
            audioPlayer.play(sound);
          },
          color: color),
    );
  }
}
