import 'package:chess_puzz/constants.dart';
import 'package:chess_puzz/models/puzzles.dart';
import 'package:chess_puzz/screens/puzzleDetails.dart';
import 'package:chess_puzz/services/notification.dart';
import 'package:chess_puzz/storage/sharedPrefrences.dart';
import 'package:chess_puzz/widget/puzzleType.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'GenerateAd.dart';
import 'package:provider/provider.dart';
import '../services/notification.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    Provider.of<notifications>(context, listen: false).initialize();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    StoreData().unlimited();
    StoreData().save('FT', true);
    return Scaffold(
        backgroundColor: Color(0xFF407093),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF407093),
          shadowColor: Colors.transparent,
        ),
        body: Consumer<notifications>(
          builder: (context, model, _) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 65.0,
                ),
                Row(
                  children: [
                    const Text(
                      'PUZZLES',
                      style: TextStyle(fontSize: 36.0, color: kPrimary_color),
                    ),
                    Spacer(),
                    //this will be data state
                    FutureBuilder(
                      future: StoreData().getAttempt(),
                      builder: (context, snapshot) => snapshot.hasData
                          ? Text('unlimited',
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.blue[200]))
                          : const Text('Key',
                              style: TextStyle(
                                  fontSize: 25.0, color: kPrimary_color)),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    const Icon(
                      Icons.vpn_key,
                      color: kPrimary_color,
                      size: 30.0,
                    )
                  ],
                ),
                Row(
                  children: [
                    const Text('FOR',
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
                        FadeAnimatedText('EVERYONE',
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
                          
                            if (Provider.of<Puzzles>(context, listen: false)
                                .notification) {
                              model.sheduledNotification();
                            } else {
                              Provider.of<notifications>(context, listen: false)
                                  .cancelNotification();
                            }

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PuzzleDetail(
                                          tag: 5,
                                          title: 'Tactics for beginner',
                                          img: 'assets/img/beginner.png',
                                        ))).then((value) => setState(() {}));
                          },
                          child: PuzzleType(
                            tag: 5,
                            img: 'assets/img/beginner.png',
                            title: 'Tactics for beginner',
                          )),
                      InkWell(
                        onTap: () {
                          
                            if (Provider.of<Puzzles>(context, listen: false)
                                .notification) {
                              model.sheduledNotification();
                            } else {
                              Provider.of<notifications>(context, listen: false)
                                  .cancelNotification();
                            }
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PuzzleDetail(
                                        tag: 0,
                                        title: 'Mating King',
                                        img: 'assets/img/checkmate.png',
                                      ))).then((value) => setState(() {}));
                        },
                        child: PuzzleType(
                          tag: 0,
                          img: 'assets/img/checkmate.png',
                          title: 'Mating King',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                         
                            if (Provider.of<Puzzles>(context, listen: false)
                                .notification) {
                              model.sheduledNotification();
                            } else {
                              Provider.of<notifications>(context, listen: false)
                                  .cancelNotification();
                            }
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PuzzleDetail(
                                        tag: 1,
                                        title: 'Tactics',
                                        img: 'assets/img/tactic.png',
                                      ))).then((value) => setState(() {}));
                        },
                        child: PuzzleType(
                          tag: 1,
                          img: 'assets/img/tactic.png',
                          title: 'Tactics',
                        ),
                      ),
                      InkWell(
                          onTap: () {
                           
                            if (Provider.of<Puzzles>(context, listen: false)
                                .notification) {
                              model.sheduledNotification();
                            } else {
                              Provider.of<notifications>(context, listen: false)
                                  .cancelNotification();
                            }
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PuzzleDetail(
                                          tag: 2,
                                          title: 'Tactics With Top Players',
                                          img: 'assets/img/chess-player.png',
                                        ))).then((value) => setState(() {}));
                          },
                          child: PuzzleType(
                            tag: 2,
                            img: 'assets/img/chess-player.png',
                            title: 'Tactics With Top Players',
                          )),
                      InkWell(
                          onTap: () {
                           
                            if (Provider.of<Puzzles>(context, listen: false)
                                .notification) {
                              model.sheduledNotification();
                            } else {
                              Provider.of<notifications>(context, listen: false)
                                  .cancelNotification();
                            }
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PuzzleDetail(
                                          tag: 3,
                                          title: 'Master Chess Puzzle',
                                          img: 'assets/img/insane.png',
                                        ))).then((value) => setState(() {}));
                          },
                          child: PuzzleType(
                            tag: 3,
                            img: 'assets/img/insane.png',
                            title: 'Master Chess Puzzle',
                          )),
                      InkWell(
                          onTap: () {
                          
                            if (Provider.of<Puzzles>(context, listen: false)
                                .notification) {
                              model.sheduledNotification();
                            } else {
                              Provider.of<notifications>(context, listen: false)
                                  .cancelNotification();
                            }
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PuzzleDetail(
                                          tag: 4,
                                          title: 'Tactics In Openings',
                                          img: 'assets/img/opening.png',
                                        ))).then((value) => setState(() {}));
                          },
                          child: PuzzleType(
                            tag: 4,
                            img: 'assets/img/opening.png',
                            title: 'Tactics In Openings',
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
