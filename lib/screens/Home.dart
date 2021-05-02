import 'package:chess_puzz/constants.dart';
import 'package:chess_puzz/screens/puzzleDetails.dart';
import 'package:chess_puzz/widget/puzzleType.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFF407093),
          appBar: AppBar(
            backgroundColor: Color(0xFF407093),
            shadowColor: Colors.transparent,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(
                  Icons.settings,
                  color: kPrimary_color,
                  size: 28.0,
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 65.0,
                ),
                Row(
                  children: [
                    Text(
                      'PUZZLES',
                      style: TextStyle(fontSize: 40.0, color: kPrimary_color),
                    ),
                    Spacer(),
                    //this will be data state
                    Text('15',
                        style:
                            TextStyle(fontSize: 25.0, color: kPrimary_color)),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      Icons.vpn_key,
                      color: kPrimary_color,
                      size: 30.0,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text('FOR',
                        style:
                            TextStyle(fontSize: 20.0, color: kPrimary_color)),
                    SizedBox(
                      width: 8.0,
                    ),
                    AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        FadeAnimatedText('YOU',
                            textStyle: TextStyle(
                                fontSize: 20.0, color: kPrimary_color)),
                        FadeAnimatedText('EVERY ONE',
                            textStyle: TextStyle(
                                fontSize: 20.0, color: kPrimary_color)),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PuzzleDetail(
                                        title: 'Mating King',
                                        img: 'assets/img/checkmate.png',
                                      )));
                        },
                        child: PuzzleType(
                          img: 'assets/img/checkmate.png',
                          title: 'Mating King',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PuzzleDetail(
                                        title: 'Tactics',
                                        img: 'assets/img/tactic.png',
                                      )));
                        },
                        child: PuzzleType(
                          img: 'assets/img/tactic.png',
                          title: 'Tactics',
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PuzzleDetail(
                                          title: 'Tactics With Top Players',
                                          img: 'assets/img/chess-player.png',
                                        )));
                          },
                          child: PuzzleType(
                            img: 'assets/img/chess-player.png',
                            title: 'Tactics With Top Players',
                          )),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
