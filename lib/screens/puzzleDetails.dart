import 'dart:ui';
import 'package:chess_puzz/models/chessPuzzels.dart';
import 'package:chess_puzz/models/puzzles.dart';
import 'package:chess_puzz/screens/GenerateAd.dart';
import 'package:chess_puzz/storage/sharedPrefrences.dart';
import 'package:provider/provider.dart';
import 'package:chess_puzz/constants.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'levels.dart';

class PuzzleDetail extends StatefulWidget {
  const PuzzleDetail({Key key, this.title, this.img, this.tag})
      : super(key: key);

  _PuzzleDetailState createState() => _PuzzleDetailState();
  final title;
  final img;
  final tag;
}

class _PuzzleDetailState extends State<PuzzleDetail> {
  bool tempbool = true;
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    List<ChessPuzzle> checkMateInOne =
        Provider.of<Puzzles>(context, listen: false).checkMateInOne;
    List<ChessPuzzle> t2019 =
        Provider.of<Puzzles>(context, listen: false).T2019;
    List<ChessPuzzle> pin = Provider.of<Puzzles>(context, listen: false).pin;
    List<ChessPuzzle> t2018 =
        Provider.of<Puzzles>(context, listen: false).T2018;
    List<ChessPuzzle> forks =
        Provider.of<Puzzles>(context, listen: false).forks;
    List<ChessPuzzle> checkMateInTwo =
        Provider.of<Puzzles>(context, listen: false).checkMateInTwo;
    List<ChessPuzzle> checkMateInThree =
        Provider.of<Puzzles>(context, listen: false).checkMateInThree;
    List<ChessPuzzle> checkMateInFour =
        Provider.of<Puzzles>(context, listen: false).checkMateInFour;
    List<ChessPuzzle> sacrifice =
        Provider.of<Puzzles>(context, listen: false).sacrifice;
    List<ChessPuzzle> discoverAttack =
        Provider.of<Puzzles>(context, listen: false).discoverAttack;
    List<ChessPuzzle> t2017 =
        Provider.of<Puzzles>(context, listen: false).T2017;
    List<ChessPuzzle> t2016 =
        Provider.of<Puzzles>(context, listen: false).T2016;
    List<ChessPuzzle> beginnerTactics =
        Provider.of<Puzzles>(context, listen: false).beginnerTactics;
    List<ChessPuzzle> masterTactics =
        Provider.of<Puzzles>(context, listen: false).masterTactics;
    List<ChessPuzzle> english =
        Provider.of<Puzzles>(context, listen: false).english;
    List<ChessPuzzle> caroKann =
        Provider.of<Puzzles>(context, listen: false).caroKann;
    List<ChessPuzzle> french =
        Provider.of<Puzzles>(context, listen: false).french;
    List<ChessPuzzle> kingsIndianDefence =
        Provider.of<Puzzles>(context, listen: false).kingsIndianDefence;
    List<ChessPuzzle> ruyLopez =
        Provider.of<Puzzles>(context, listen: false).ruyLopez;
    List<ChessPuzzle> nimzoIndian =
        Provider.of<Puzzles>(context, listen: false).nimzoIndian;

    Container goToPuzzlesMating() {
      return Container(
        height: 200,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Levels(
                                title: 'Check Mate In One',
                                puzzels: checkMateInOne,
                              ))).then((value) => setState(() {}));
                },
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: kPrimary_color.withOpacity(0.6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                          flex: 1,
                          child: RichText(
                            text: const TextSpan(
                                text: 'Check Mate In ',
                                style: TextStyle(
                                    color: kSecondary_color, fontSize: 20),
                                children: [
                                  const TextSpan(
                                    text: 'One',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )
                                ]),
                          )),
                      Expanded(
                          flex: 2,
                          child: Image.asset('assets/img/check_mate_king.png'))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Levels(
                                title: 'Check Mate In Two',
                                puzzels: checkMateInTwo,
                              ))).then((value) => setState(() {}));
                },
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: kPrimary_color.withOpacity(0.6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                          flex: 1,
                          child: RichText(
                            text: const TextSpan(
                                text: 'Check Mate In ',
                                style: TextStyle(
                                    color: kSecondary_color, fontSize: 20),
                                children: [
                                  const TextSpan(
                                    text: 'Two',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )
                                ]),
                          )),
                      Expanded(
                          flex: 2,
                          child: Image.asset('assets/img/check_mate_king.png'))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Levels(
                                title: 'Check Mate In Three',
                                puzzels: checkMateInThree,
                              ))).then((value) => setState(() {}));
                },
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: kPrimary_color.withOpacity(0.6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                          flex: 1,
                          child: RichText(
                            text: const TextSpan(
                                text: 'Check Mate In ',
                                style: TextStyle(
                                    color: kSecondary_color, fontSize: 19),
                                children: [
                                  const TextSpan(
                                    text: 'Three',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )
                                ]),
                          )),
                      Expanded(
                          flex: 2,
                          child: Image.asset('assets/img/check_mate_king.png'))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: FutureBuilder(
                future: Future.wait(
                    [StoreData().getAttempt(), StoreData().read('tempbool')]),
                builder: (context, snapshot) {
                  return InkWell(
                    onTap: () {
                      if (!(snapshot.data[1])) {
                        if (snapshot.data[0] < 30) {
                          showAlertDialog(context);
                        } else {
                          showAlertDialogunlock(context);
                        }
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Levels(
                                      title: 'Check Mate In Four',
                                      puzzels: checkMateInFour,
                                    ))).then((value) => setState(() {}));
                      }
                    },
                    child: Container(
                      height: 80,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: kPrimary_color.withOpacity(0.6),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          (!(snapshot.data[1]))
                              ? Expanded(
                                  flex: 1,
                                  child: RichText(
                                    text: TextSpan(
                                        text: 'LOCKED\n',
                                        style: TextStyle(
                                            color: Colors.red[400],
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold),
                                        children: [
                                          const TextSpan(
                                            text: '30 Keys neended',
                                            style: TextStyle(
                                                color: kSecondary_color,
                                                fontSize: 16),
                                          )
                                        ]),
                                  ))
                              : Expanded(
                                  flex: 1,
                                  child: RichText(
                                    text: const TextSpan(
                                        text: 'Check Mate In ',
                                        style: TextStyle(
                                            color: kSecondary_color,
                                            fontSize: 20),
                                        children: [
                                          const TextSpan(
                                            text: 'Four',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          )
                                        ]),
                                  )),
                          Expanded(
                              flex: 2,
                              child: (!(snapshot.data[1]))
                                  ? Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Image.asset('assets/img/lock.png'),
                                    )
                                  : Image.asset(
                                      'assets/img/check_mate_king.png'))
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      );
    }

    Container goToBeginnerPuzzle() {
      return Container(
        height: 200,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Levels(
                                title: 'Tactics for beginner',
                                puzzels: beginnerTactics,
                              ))).then((value) => setState(() {}));
                },
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: kPrimary_color.withOpacity(0.6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                          flex: 1,
                          child: Text(
                            "Beginner Puzzles",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: kSecondary_color,
                              fontSize: 19,
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Image.asset('assets/img/beginner2.png'))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Container goToMasterPuzzle() {
      return Container(
        height: 200,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Levels(
                                title: 'Master chess puzzles',
                                puzzels: masterTactics,
                              ))).then((value) => setState(() {}));
                },
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: kPrimary_color.withOpacity(0.6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                          flex: 1,
                          child: Text(
                            "Master chess puzzles",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: kSecondary_color,
                              fontSize: 19,
                            ),
                          )),
                      Expanded(
                          flex: 2, child: Image.asset('assets/img/insane2.png'))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Container goToOpeningPuzzle() {
      return Container(
        height: 200,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Levels(
                                title: 'Ruy Lopez',
                                puzzels: ruyLopez,
                              ))).then((value) => setState(() {}));
                },
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: kPrimary_color.withOpacity(0.6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                          flex: 1,
                          child: Text(
                            'Ruy Lopez',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: kSecondary_color,
                              fontSize: 19,
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Image.asset('assets/img/opening2.png'))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Levels(
                                title: 'Nimzo-Indian',
                                puzzels: nimzoIndian,
                              ))).then((value) => setState(() {}));
                },
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: kPrimary_color.withOpacity(0.6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                          flex: 1,
                          child: Text(
                            'Nimzo-Indian',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: kSecondary_color,
                              fontSize: 19,
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Image.asset('assets/img/opening2.png'))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Levels(
                                title: "King's Indian Defense",
                                puzzels: kingsIndianDefence,
                              ))).then((value) => setState(() {}));
                },
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: kPrimary_color.withOpacity(0.6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                          flex: 1,
                          child: Text(
                            "King's Indian Defense",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: kSecondary_color,
                              fontSize: 19,
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Image.asset('assets/img/opening2.png'))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Levels(
                                title: 'French',
                                puzzels: french,
                              ))).then((value) => setState(() {}));
                },
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: kPrimary_color.withOpacity(0.6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                          flex: 1,
                          child: Text(
                            'French',
                            style: TextStyle(
                              color: kSecondary_color,
                              fontSize: 19,
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Image.asset('assets/img/opening2.png'))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: FutureBuilder(
                future: Future.wait([
                  StoreData().getAttempt(),
                  StoreData().read('tempboolForCaroKann')
                ]),
                builder: (context, snapshot) {
                  return InkWell(
                    onTap: () {
                      if (!(snapshot.data[1])) {
                        if (snapshot.data[0] < 30) {
                          showAlertDialog(context);
                        } else {
                          showAlertDialogunlockForCaroKann(context);
                        }
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Levels(
                                      title: 'Caro-Kann',
                                      puzzels: caroKann,
                                    ))).then((value) => setState(() {}));
                      }
                    },
                    child: Container(
                      height: 80,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: kPrimary_color.withOpacity(0.6),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          (!(snapshot.data[1]))
                              ? Expanded(
                                  flex: 1,
                                  child: RichText(
                                    text: TextSpan(
                                        text: 'LOCKED\n',
                                        style: TextStyle(
                                            color: Colors.red[400],
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold),
                                        children: [
                                          TextSpan(
                                            text: '30 Keys neended',
                                            style: TextStyle(
                                                color: kSecondary_color,
                                                fontSize: 16),
                                          )
                                        ]),
                                  ))
                              : Expanded(
                                  flex: 1,
                                  child: Text(
                                    'Caro-Kann',
                                    style: TextStyle(
                                      color: kSecondary_color,
                                      fontSize: 19,
                                    ),
                                  )),
                          Expanded(
                              flex: 2,
                              child: !(snapshot.data[1])
                                  ? Image.asset('assets/img/lock.png')
                                  : Image.asset('assets/img/opening2.png'))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: FutureBuilder(
                future: Future.wait([
                  StoreData().getAttempt(),
                  StoreData().read('tempboolForEnglish')
                ]),
                builder: (context, snapshot) {
                  return InkWell(
                    onTap: () {
                      if (!(snapshot.data[1])) {
                        if (snapshot.data[0] < 30) {
                          showAlertDialog(context);
                        } else {
                          showAlertDialogunlockForEnglish(context);
                        }
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Levels(
                                      title: 'English',
                                      puzzels: english,
                                    ))).then((value) => setState(() {}));
                      }
                    },
                    child: Container(
                      height: 80,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: kPrimary_color.withOpacity(0.6),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          (!(snapshot.data[1]))
                              ? Expanded(
                                  flex: 1,
                                  child: RichText(
                                    text: TextSpan(
                                        text: 'LOCKED\n',
                                        style: TextStyle(
                                            color: Colors.red[400],
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold),
                                        children: [
                                          TextSpan(
                                            text: '30 Keys neended',
                                            style: TextStyle(
                                                color: kSecondary_color,
                                                fontSize: 16),
                                          )
                                        ]),
                                  ))
                              : Expanded(
                                  flex: 1,
                                  child: Text(
                                    'English',
                                    style: TextStyle(
                                      color: kSecondary_color,
                                      fontSize: 19,
                                    ),
                                  )),
                          Expanded(
                              flex: 2,
                              child: !(snapshot.data[1])
                                  ? Image.asset('assets/img/lock.png')
                                  : Image.asset('assets/img/opening2.png'))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    }

    Container goToPuzzlesTactics() {
      return Container(
        height: 200,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Levels(title: 'Pin', puzzels: pin)))
                      .then((value) => setState(() {}));
                },
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: kPrimary_color.withOpacity(0.6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                          flex: 1,
                          child: Text(
                            'Pin',
                            style: TextStyle(
                              color: kSecondary_color,
                              fontSize: 19,
                            ),
                          )),
                      Expanded(
                          flex: 2, child: Image.asset('assets/img/idea.png'))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Levels(
                                title: 'Double Attack',
                                puzzels: forks,
                              ))).then((value) => setState(() {}));
                },
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: kPrimary_color.withOpacity(0.6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Double Attack',
                          style: TextStyle(
                            color: kSecondary_color,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2, child: Image.asset('assets/img/idea.png'))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Levels(
                                  title: 'Discover Attack',
                                  puzzels: discoverAttack)))
                      .then((value) => setState(() {}));
                },
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: kPrimary_color.withOpacity(0.6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Discover Attack',
                          style: TextStyle(
                            color: kSecondary_color,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2, child: Image.asset('assets/img/idea.png'))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: FutureBuilder(
                future: Future.wait([
                  StoreData().getAttempt(),
                  StoreData().read('tempboolForSacrifice')
                ]),
                builder: (context, snapshot) {
                  return InkWell(
                    onTap: () {
                      if (!(snapshot.data[1])) {
                        if (snapshot.data[0] < 30) {
                          showAlertDialog(context);
                        } else {
                          showAlertDialogunlockForSacrifice(context);
                        }
                      } else {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Levels(
                                        title: 'Sacrifice',
                                        puzzels: sacrifice)))
                            .then((value) => setState(() {}));
                      }
                    },
                    child: Container(
                      height: 80,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: kPrimary_color.withOpacity(0.6),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          (!(snapshot.data[1]))
                              ? Expanded(
                                  flex: 1,
                                  child: RichText(
                                    text: TextSpan(
                                        text: 'LOCKED\n',
                                        style: TextStyle(
                                            color: Colors.red[400],
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold),
                                        children: [
                                          TextSpan(
                                            text: '30 Keys neended',
                                            style: TextStyle(
                                                color: kSecondary_color,
                                                fontSize: 16),
                                          )
                                        ]),
                                  ))
                              : Expanded(
                                  flex: 1,
                                  child: Text(
                                    'Sacrifice',
                                    style: TextStyle(
                                      color: kSecondary_color,
                                      fontSize: 19,
                                    ),
                                  ),
                                ),
                          Expanded(
                              flex: 2,
                              child: !(snapshot.data[1])
                                  ? Image.asset('assets/img/lock.png')
                                  : Image.asset('assets/img/idea.png'))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    }

    Container goToPuzzlesTopPlayers() {
      return Container(
        height: 200,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Levels(
                                title: 'T2019',
                                puzzels: t2019,
                              ))).then((value) => setState(() {}));
                },
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: kPrimary_color.withOpacity(0.6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                          flex: 1,
                          child: Text(
                            '2019',
                            style: TextStyle(
                              color: kSecondary_color,
                              fontSize: 19,
                            ),
                          )),
                      Expanded(
                          flex: 2, child: Image.asset('assets/img/player.png'))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Levels(
                                title: 'T2018',
                                puzzels: t2018,
                              ))).then((value) => setState(() {}));
                },
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: kPrimary_color.withOpacity(0.6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          '2018',
                          style: TextStyle(
                            color: kSecondary_color,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2, child: Image.asset('assets/img/player.png'))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Levels(title: 'T2017', puzzels: t2017)))
                      .then((value) => setState(() {}));
                },
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: kPrimary_color.withOpacity(0.6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          '2017',
                          style: TextStyle(
                            color: kSecondary_color,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2, child: Image.asset('assets/img/player.png'))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Levels(title: 'T2016', puzzels: t2016)))
                      .then((value) => setState(() {}));
                },
                child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: kPrimary_color.withOpacity(0.6),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          '2016',
                          style: TextStyle(
                            color: kSecondary_color,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2, child: Image.asset('assets/img/player.png'))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kthird_color,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: kSecondary_color,
            size: size.width > 650 ? 40 : 30,
          ),
        ),
        backgroundColor: kthird_color,
        elevation: 0.0,
        title: Text(
          widget.title,
          style: TextStyle(
              color: kSecondary_color, fontSize: size.width > 650 ? 35 : 25.0),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: FutureBuilder(
            future: widget.title == 'Tactics'
                ? StoreData().readForTactics()
                : widget.title == 'Mating King'
                    ? StoreData().readForCheckMate()
                    : widget.title == 'Tactics for beginner'
                        ? StoreData().readForBeginnerTactics()
                        : widget.title == 'Master Chess Puzzle'
                            ? StoreData().readForMasterTactics()
                            : widget.title == 'Tactics In Openings'
                                ? StoreData().readForOpeningTactics()
                                : StoreData().readForTacticsWithTopPlayers(),
            builder: (context, snapshot) => snapshot.connectionState ==
                    ConnectionState.done
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Spacer(),
                          Container(
                            height: 120,
                            width: 120,
                            child: Hero(
                              tag: widget.tag,
                              child: Image.asset(
                                widget.img,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Spacer(),
                          Text(
                            widget.title == 'Tactics'
                                ? snapshot.data /
                                            (pin.length +
                                                forks.length +
                                                discoverAttack.length +
                                                sacrifice.length) >
                                        1
                                    ? '100%'
                                    : '${(snapshot.data / (pin.length + forks.length + discoverAttack.length + sacrifice.length) * 100).floor()}%'
                                : widget.title == 'Mating King'
                                    ? snapshot.data /
                                                (checkMateInOne.length +
                                                    checkMateInTwo.length +
                                                    checkMateInFour.length +
                                                    checkMateInThree.length) >
                                            1
                                        ? '100%'
                                        : '${(snapshot.data / (checkMateInOne.length + checkMateInTwo.length + checkMateInThree.length + checkMateInFour.length) * 100).floor()}%'
                                    : widget.title == 'Tactics In Openings'
                                        ? snapshot.data /
                                                    (french.length +
                                                        english.length +
                                                        kingsIndianDefence
                                                            .length +
                                                        nimzoIndian.length +
                                                        caroKann.length +
                                                        ruyLopez.length) >
                                                1
                                            ? '100%'
                                            : '${(snapshot.data / (french.length + english.length + kingsIndianDefence.length + nimzoIndian.length + caroKann.length + ruyLopez.length) * 100).floor()}%'
                                        : widget.title == 'Master Chess Puzzle'
                                            ? snapshot.data /
                                                        (masterTactics.length) >
                                                    1
                                                ? '100%'
                                                : '${(snapshot.data / (masterTactics.length) * 100).floor()}%'
                                            : widget.title ==
                                                    'Tactics for beginner'
                                                ? snapshot.data /
                                                            (beginnerTactics
                                                                .length) >
                                                        1
                                                    ? '100%'
                                                    : '${(snapshot.data / (beginnerTactics.length) * 100).floor()}%'
                                                : snapshot.data /
                                                            (t2019.length +
                                                                t2018.length +
                                                                t2017.length +
                                                                t2016.length) >
                                                        1
                                                    ? '100%'
                                                    : '${(snapshot.data / (t2019.length + t2018.length + t2017.length + t2016.length) * 100).floor()}%',
                            style: TextStyle(
                                textBaseline: TextBaseline.ideographic,
                                color: kSecondary_color,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                        ],
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Spacer(),
                      LinearPercentIndicator(
                        alignment: MainAxisAlignment.center,
                        width: 300.0,
                        lineHeight: 18.0,
                        percent: widget.title == 'Tactics'
                            ? snapshot.data /
                                        (pin.length +
                                            forks.length +
                                            discoverAttack.length +
                                            sacrifice.length) >
                                    1
                                ? 1
                                : snapshot.data /
                                    (pin.length +
                                        forks.length +
                                        sacrifice.length +
                                        discoverAttack.length)
                            : widget.title == 'Mating King'
                                ? snapshot.data /
                                            (checkMateInOne.length +
                                                checkMateInTwo.length +
                                                checkMateInFour.length +
                                                checkMateInThree.length) >
                                        1
                                    ? 1
                                    : snapshot.data /
                                        (checkMateInOne.length +
                                            checkMateInTwo.length +
                                            checkMateInFour.length +
                                            checkMateInThree.length)
                                : widget.title == 'Tactics for beginner'
                                    ? snapshot.data / (beginnerTactics.length) >
                                            1
                                        ? 1
                                        : snapshot.data /
                                            (beginnerTactics.length)
                                    : widget.title == 'Master Chess Puzzle'
                                        ? snapshot.data /
                                                    (masterTactics.length) >
                                                1
                                            ? 1
                                            : widget.title ==
                                                    'Tactics In Openings'
                                                ? snapshot.data /
                                                            (french.length +
                                                                english.length +
                                                                caroKann
                                                                    .length +
                                                                nimzoIndian
                                                                    .length +
                                                                ruyLopez
                                                                    .length +
                                                                kingsIndianDefence
                                                                    .length) >
                                                        1
                                                    ? 1
                                                    : snapshot.data /
                                                        (french.length +
                                                            english.length +
                                                            caroKann.length +
                                                            nimzoIndian.length +
                                                            ruyLopez.length +
                                                            kingsIndianDefence
                                                                .length)
                                                : snapshot.data /
                                                    (masterTactics.length)
                                        : snapshot.data /
                                                    (t2019.length +
                                                        t2018.length +
                                                        t2017.length +
                                                        t2016.length) >
                                                1
                                            ? 1
                                            : snapshot.data /
                                                (t2019.length +
                                                    t2018.length +
                                                    t2017.length +
                                                    t2016.length),
                        backgroundColor: Colors.grey,
                        progressColor: kSecondary_color,
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60.0),
                        child: Divider(
                          color: kSecondary_color,
                          thickness: 2,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Puzzles',
                        style: TextStyle(fontSize: 30, color: kSecondary_color),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Spacer(),
                      widget.title == 'Mating King'
                          ? goToPuzzlesMating()
                          : widget.title == 'Tactics'
                              ? goToPuzzlesTactics()
                              : widget.title == 'Tactics for beginner'
                                  ? goToBeginnerPuzzle()
                                  : widget.title == 'Master Chess Puzzle'
                                      ? goToMasterPuzzle()
                                      : widget.title == 'Tactics In Openings'
                                          ? goToOpeningPuzzle()
                                          : goToPuzzlesTopPlayers(),
                      Spacer(
                        flex: 2,
                      ),
                    ],
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  )),
      ),
    );
  }

  showAlertDialogunlock(BuildContext context) {
    // set up the buttons

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        "Locked",
        style: TextStyle(
          color: Colors.red[300],
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Text('this section is locked you can unlock it with 30 keys',
          style: TextStyle(color: kSecondary_color, fontSize: 16)),
      actions: [
        ElevatedButton(
            onPressed: () {
              StoreData().unlocking();
              Navigator.pop(context);
              setState(() {});
            },
            child: Text(
              'unlock',
              style: TextStyle(),
            ))
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialogunlockForEnglish(BuildContext context) {
    // set up the buttons

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        "Locked",
        style: TextStyle(
          color: Colors.red[300],
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Text('this section is locked you can unlock it with 30 keys',
          style: TextStyle(color: kSecondary_color, fontSize: 16)),
      actions: [
        ElevatedButton(
            onPressed: () {
              StoreData().unlockingForEnglish();
              Navigator.pop(context);
              setState(() {});
            },
            child: Text(
              'unlock',
              style: TextStyle(),
            ))
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialogunlockForSacrifice(BuildContext context) {
    // set up the buttons

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        "Locked",
        style: TextStyle(
          color: Colors.red[300],
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Text('this section is locked you can unlock it with 30 keys',
          style: TextStyle(color: kSecondary_color, fontSize: 16)),
      actions: [
        ElevatedButton(
            onPressed: () {
              StoreData().unlockingForSacrifice();
              Navigator.pop(context);
              setState(() {});
            },
            child: Text(
              'unlock',
              style: TextStyle(),
            ))
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialogunlockForCaroKann(BuildContext context) {
    // set up the buttons

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        "Locked",
        style: TextStyle(
          color: Colors.red[300],
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Text('this section is locked you can unlock it with 30 keys',
          style: TextStyle(color: kSecondary_color, fontSize: 16)),
      actions: [
        ElevatedButton(
            onPressed: () {
              StoreData().unlockingForCaroKann();
              Navigator.pop(context);
              setState(() {});
            },
            child: Text(
              'unlock',
              style: TextStyle(),
            ))
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        "Locked",
        style: TextStyle(
          color: Colors.red,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Text('this section is locked you can unlock it with 30 keys',
          style: TextStyle(color: kSecondary_color, fontSize: 16)),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AdScreen()))
                  .then((value) => setState(() {}));
            },
            child: Text(
              'Get keys',
              style: TextStyle(),
            ))
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
