import 'dart:ui';
import 'package:chess_puzz/chessPuzzels.dart';
import 'package:chess_puzz/puzzles.dart';
import 'package:provider/provider.dart';
import 'package:chess_puzz/constants.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'levels.dart';

class PuzzleDetail extends StatefulWidget {
  const PuzzleDetail({Key key, this.title, this.img}) : super(key: key);

  _PuzzleDetailState createState() => _PuzzleDetailState();
  final title;
  final img;
}

class _PuzzleDetailState extends State<PuzzleDetail> {
  
  Widget build(BuildContext context) {
    List<ChessPuzzle> checkMateInOne =
        Provider.of<Puzzles>(context, listen: false).checkMateInOne;
    List<ChessPuzzle> t2019 =
        Provider.of<Puzzles>(context, listen: false).T2019;
    List<ChessPuzzle> pin = Provider.of<Puzzles>(context, listen: false).pin;

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
                              )));
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
                            text: TextSpan(
                                text: 'Check Mate In ',
                                style: TextStyle(
                                    color: kSecondary_color, fontSize: 20),
                                children: [
                                  TextSpan(
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
                          text: TextSpan(
                              text: 'Check Mate In ',
                              style: TextStyle(
                                  color: kSecondary_color, fontSize: 20),
                              children: [
                                TextSpan(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                          text: TextSpan(
                              text: 'Check Mate In ',
                              style: TextStyle(
                                  color: kSecondary_color, fontSize: 19),
                              children: [
                                TextSpan(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                          text: TextSpan(
                              text: 'Check Mate In ',
                              style: TextStyle(
                                  color: kSecondary_color, fontSize: 20),
                              children: [
                                TextSpan(
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
                        child: Image.asset('assets/img/check_mate_king.png'))
                  ],
                ),
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
                              Levels(title: 'Pin', puzzels: pin)));
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
                        'Forks',
                        style: TextStyle(
                          color: kSecondary_color,
                          fontSize: 19,
                        ),
                      ),
                    ),
                    Expanded(flex: 2, child: Image.asset('assets/img/idea.png'))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                    Expanded(flex: 2, child: Image.asset('assets/img/idea.png'))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                        'Sacrifice',
                        style: TextStyle(
                          color: kSecondary_color,
                          fontSize: 19,
                        ),
                      ),
                    ),
                    Expanded(flex: 2, child: Image.asset('assets/img/idea.png'))
                  ],
                ),
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
                                title: '2019',
                                puzzels: t2019,
                              )));
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                        '2010',
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                        '2012',
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
            size: 30,
          ),
        ),
        backgroundColor: kthird_color,
        elevation: 0.0,
        title: Text(
          widget.title,
          style: TextStyle(color: kSecondary_color, fontSize: 25.0),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
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
                  child: Image.asset(
                    widget.img,
                    fit: BoxFit.cover,
                  ),
                ),
                Spacer(),
                Text(
                  widget.title == 'Mating King' ? '15%' : '70%',
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
              percent: widget.title == 'Mating King' ? 0.15 : 0.70,
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
                    : goToPuzzlesTopPlayers(),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
