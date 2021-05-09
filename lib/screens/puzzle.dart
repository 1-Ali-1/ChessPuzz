import 'dart:ui';
import 'package:chess_puzz/models/chessPuzzels.dart';
import 'package:chess_puzz/constants.dart';
import 'package:chess_puzz/screens/setting.dart';
import 'package:chess_puzz/storage/sharedPrefrences.dart';
import 'package:chess_puzz/widget/chess.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stateless_chessboard/flutter_stateless_chessboard.dart';
import 'package:flutter_stateless_chessboard/types.dart' as types;
import 'package:provider/provider.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class Puzzle extends StatefulWidget {
  String puzzle;
  String rePuzzle;
  String title;
  final int puzzleNumber;

  Puzzle({Key key, this.puzzle, this.puzzleNumber, this.rePuzzle, this.title})
      : super(key: key);
  @override
  _PuzzleState createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {
  AudioCache audio = AudioCache();
  int turn = 0;
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: kthird_color,
        appBar: AppBar(
          centerTitle: true,
          title: Text('puzzle ${(widget.puzzleNumber + 1).toString()}',
              style: TextStyle(
                  color: Provider.of<ChessPuzzle>(context).isWhiteToMove
                      ? Colors.white
                      : kSecondary_color,
                  fontSize: 30.0,
                  shadows: [
                    Shadow(
                        color: Colors.black87,
                        blurRadius: 2,
                        offset: Offset(0, 1))
                  ])),
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
          elevation: 0.0,
          backgroundColor: kthird_color,
          shadowColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Setting()))
                    .then((value) => setState(() {})),
                child: Icon(
                  Icons.settings,
                  color: kSecondary_color,
                  size: 28.0,
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Spacer(),
            widget.title == 'T2019'
                ? Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 26.0, horizontal: 20.0),
                    child: Text(
                      Provider.of<ChessPuzzle>(context).playersName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kSecondary_color,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                : widget.title == 'T2018'
                    ? Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 26.0, horizontal: 20.0),
                        child: Text(
                          Provider.of<ChessPuzzle>(context).playersName,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: kSecondary_color,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    : Text(''),
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 7,
                          offset: Offset(2, 1),
                          spreadRadius: 7.0,
                          color: kdeafultBlack.withOpacity(0.7))
                    ]),
                child: FutureBuilder(
                  future: StoreData().readColor('color'),
                  builder: (context, snapshot) => Chessboard(
                    darkSquareColor: snapshot.data == 0
                        ? kdeafultBlack
                        : snapshot.data == 1
                            ? kgreenBlack
                            : snapshot.data == 2
                                ? kredBlack
                                : snapshot.data == 3
                                    ? ktournmentblack
                                    : snapshot.data == 4
                                        ? kbrownBlack
                                        : snapshot.data == 5
                                            ? kpinkblack
                                            : null,
                    lightSquareColor: snapshot.data == 0
                        ? kdeafultWhite
                        : snapshot.data == 1
                            ? kgreenWhite
                            : snapshot.data == 2
                                ? kredWhite
                                : snapshot.data == 3
                                    ? ktournmentwhite
                                    : snapshot.data == 4
                                        ? kbrownWhite
                                        : snapshot.data == 5
                                            ? kpinkwhite
                                            : null,
                    fen: widget.puzzle,
                    size: size.width * 0.94,
                    orientation: Provider.of<ChessPuzzle>(context).isWhiteToMove
                        ? types.Color.WHITE
                        : types.Color.BLACK,
                    onMove: (move) {
                      List<dynamic> solutions =
                          Provider.of<ChessPuzzle>(context, listen: false)
                              .solution;

                      var nextFen = makeMove(widget.puzzle, {
                        'from': move.from,
                        'to': move.to,
                        'promotion': 'q',
                      });

                      if (nextFen != null) {
                        setState(() {
                          widget.puzzle = nextFen;
                        });
                      }
                      //if one solution move
                      if (solutions.length == 1) {
                        if (move.to == solutions[0]) {
                          audio.play('hero_simple-celebration-01.wav');

                          widget.title == 'Pin'
                              ? StoreData()
                                  .save('Pin${widget.puzzleNumber}', true)
                              : widget.title == 'Check Mate In One'
                                  ? StoreData().save(
                                      'Check Mate In One${widget.puzzleNumber}',
                                      true)
                                  : widget.title == 'T2019'
                                      ? StoreData().save(
                                          'T2019${widget.puzzleNumber}', true)
                                      : widget.title == 'Forks'
                                          ? StoreData().save(
                                              'Forks${widget.puzzleNumber}',
                                              true)
                                          : widget.title == 'Check Mate In Two'
                                              ? StoreData().save(
                                                  'Check Mate In Two${widget.puzzleNumber}',
                                                  true)
                                              : StoreData().save(
                                                  'T2018${widget.puzzleNumber}',
                                                  true);
                          ///////////
                          widget.title == 'Pin'
                              ? StoreData().saveForTactics()
                              : widget.title == 'Check Mate In One'
                                  ? StoreData().saveForCheckMate()
                                  : widget.title == 'T2019'
                                      ? StoreData()
                                          .saveForTacticsWithTopPlayers()
                                      : widget.title == 'T2018'
                                          ? StoreData()
                                              .saveForTacticsWithTopPlayers()
                                          : widget.title == 'Forks'
                                              ? StoreData().saveForTactics()
                                              : StoreData().saveForCheckMate();

                          // solved = true;
                          showDialogSuccess(
                            sORw: 'success',
                            title: 'great. well done',
                            description:
                                'you made best move here may be there are some good moves as well but only best move considered',
                          );
                        } else {
                          audio.play('alert_error-01.wav');
                          showDialogWrong(
                            sORw: 'wrong',
                            title: 'mistake',
                            description:
                                'may be your move is not bad  but only best move considered here ',
                          );
                        }

                        // alert dialog to say success
                      }
                      //if two solution move
                      if (solutions.length == 3) {
                        switch (turn) {
                          case 0:
                            if (move.to == solutions[0]) {
                              var nextFenn =
                                  makeMoveBot(widget.puzzle, solutions[1]);

                              if (nextFenn != null) {
                                setState(() {
                                  widget.puzzle = nextFenn;

                                  turn++;
                                });
                              }
                            } else {
                              audio.play('alert_error-01.wav');
                              showDialogWrong(
                                sORw: 'wrong',
                                title: 'mistake',
                                description:
                                    'may be your move is not bad  but only best move considered here ',
                              );
                            }
                            break;

                          case 1:
                            if (move.to == solutions[2]) {
                              setState(() {
                                widget.title == 'Pin'
                                    ? StoreData()
                                        .save('Pin${widget.puzzleNumber}', true)
                                    : widget.title == 'Check Mate In One'
                                        ? StoreData().save(
                                            'Check Mate In One${widget.puzzleNumber}',
                                            true)
                                        : widget.title == 'T2019'
                                            ? StoreData().save(
                                                'T2019${widget.puzzleNumber}',
                                                true)
                                            : widget.title == 'Forks'
                                                ? StoreData().save(
                                                    'Forks${widget.puzzleNumber}',
                                                    true)
                                                : widget.title ==
                                                        'Check Mate In Two'
                                                    ? StoreData().save(
                                                        'Check Mate In Two${widget.puzzleNumber}',
                                                        true)
                                                    : StoreData().save(
                                                        'T2018${widget.puzzleNumber}',
                                                        true);
                                ///////////
                                widget.title == 'Pin'
                                    ? StoreData().saveForTactics()
                                    : widget.title == 'Check Mate In One'
                                        ? StoreData().saveForCheckMate()
                                        : widget.title == 'T2019'
                                            ? StoreData()
                                                .saveForTacticsWithTopPlayers()
                                            : widget.title == 'T2018'
                                                ? StoreData()
                                                    .saveForTacticsWithTopPlayers()
                                                : widget.title == 'Forks'
                                                    ? StoreData()
                                                        .saveForTactics()
                                                    : StoreData()
                                                        .saveForCheckMate();
                              });

                              audio.play('hero_simple-celebration-01.wav');
                              showDialogSuccess(
                                sORw: 'success',
                                title: 'great. well done',
                                description:
                                    'you made best move here may be there are some good moves as well but only best move considered',
                              );
                            } else {
                              audio.play('alert_error-01.wav');
                              showDialogWrong(
                                sORw: 'wrong',
                                title: 'mistake',
                                description:
                                    'may be your move is not bad  but only best move considered here ',
                              );
                            }
                            break;

                          default:
                        }
                      }
                      if (solutions.length == 5) {
                        switch (turn) {
                          case 0:
                            if (move.to == solutions[0]) {
                              var nextFenn =
                                  makeMoveBot(widget.puzzle, solutions[1]);

                              if (nextFenn != null) {
                                setState(() {
                                  widget.puzzle = nextFenn;

                                  turn++;
                                });
                              }
                            } else {
                              audio.play('alert_error-01.wav');
                              showDialogWrong(
                                sORw: 'wrong',
                                title: 'mistake',
                                description:
                                    'may be your move is not bad  but only best move considered here ',
                              );
                            }
                            break;

                          case 1:
                            if (move.to == solutions[2]) {
                              var nextFenn =
                                  makeMoveBot(widget.puzzle, solutions[3]);
                              print(nextFenn);
                              if (nextFenn != null) {
                                setState(() {
                                  widget.puzzle = nextFenn;

                                  turn++;
                                });
                              }
                            } else {
                              audio.play('alert_error-01.wav');
                              showDialogWrong(
                                sORw: 'wrong',
                                title: 'mistake',
                                description:
                                    'may be your move is not bad  but only best move considered here ',
                              );
                            }
                            break;
                          case 2:
                            if (move.to == solutions[4]) {
                              setState(() {
                                widget.title == 'Pin'
                                    ? StoreData()
                                        .save('Pin${widget.puzzleNumber}', true)
                                    : widget.title == 'Check Mate In One'
                                        ? StoreData().save(
                                            'Check Mate In One${widget.puzzleNumber}',
                                            true)
                                        : widget.title == 'T2019'
                                            ? StoreData().save(
                                                'T2019${widget.puzzleNumber}',
                                                true)
                                            : widget.title == 'Forks'
                                                ? StoreData().save(
                                                    'Forks${widget.puzzleNumber}',
                                                    true)
                                                : widget.title ==
                                                        'Check Mate In Two'
                                                    ? StoreData().save(
                                                        'Check Mate In Two${widget.puzzleNumber}',
                                                        true)
                                                    : StoreData().save(
                                                        'T2018${widget.puzzleNumber}',
                                                        true);
                                ///////////
                                widget.title == 'Pin'
                                    ? StoreData().saveForTactics()
                                    : widget.title == 'Check Mate In One'
                                        ? StoreData().saveForCheckMate()
                                        : widget.title == 'T2019'
                                            ? StoreData()
                                                .saveForTacticsWithTopPlayers()
                                            : widget.title == 'T2018'
                                                ? StoreData()
                                                    .saveForTacticsWithTopPlayers()
                                                : widget.title == 'Forks'
                                                    ? StoreData()
                                                        .saveForTactics()
                                                    : StoreData()
                                                        .saveForCheckMate();
                              });

                              audio.play('hero_simple-celebration-01.wav');
                              showDialogSuccess(
                                sORw: 'success',
                                title: 'great. well done',
                                description:
                                    'you made best move here may be there are some good moves as well but only best move considered',
                              );
                            } else {
                              audio.play('alert_error-01.wav');
                              showDialogWrong(
                                sORw: 'wrong',
                                title: 'mistake',
                                description:
                                    'may be your move is not bad  but only best move considered here ',
                              );
                            }
                            break;

                          default:
                        }
                      }

                      // print(move.to);
                      // print(solutions);
                    },
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Provider.of<ChessPuzzle>(context).isWhiteToMove
                      ? Container(
                          height: 55,
                          width: 55,
                          child: Image.asset(
                            'assets/img/whiteToPlay.png',
                            fit: BoxFit.cover,
                          ),
                        )
                      : Container(
                          height: 55,
                          width: 55,
                          child: Image.asset(
                            'assets/img/blackToPlay.png',
                            fit: BoxFit.cover,
                          )),
                  SizedBox(
                    width: 50.0,
                  ),
                  Provider.of<ChessPuzzle>(context).isWhiteToMove
                      ? Text(
                          'White To Play',
                          style: TextStyle(
                              color: kSecondary_color,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )
                      : Text(
                          'Black To Play',
                          style: TextStyle(
                              color: kSecondary_color,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )
                ],
              ),
            ),
            Spacer(),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    width: 1.5,
                    color: Colors.black54,
                  ),
                  shape: StadiumBorder(),
                ),
                onPressed: () {
                  showAlertDialog(context);
                },
                child: Text(
                  'hint',
                  style: TextStyle(color: kSecondary_color, fontSize: 18),
                )),
            Spacer(),
          ],
        ));
  }

  showDialogSuccess({sORw, title, description}) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => AssetGiffyDialog(
              image: Image.asset('assets/img/$sORw.gif'),
              title: Text(
                title,
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
              ),
              description: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(),
              ),
              entryAnimation: EntryAnimation.TOP,
              buttonCancelText: Text('go back'),
              buttonCancelColor: Colors.green,
              onCancelButtonPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              buttonOkText: Text('stay'),
              onOkButtonPressed: () => Navigator.pop(context),
            ));
  }

  showDialogWrong({sORw, title, description}) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => AssetGiffyDialog(
              image: Image.asset('assets/img/$sORw.gif'),
              title: Text(
                title,
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
              ),
              description: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(),
              ),
              entryAnimation: EntryAnimation.TOP,
              buttonOkText: Text('try again'),
              buttonOkColor: Colors.grey,
              buttonCancelText: Text('go back'),
              onOkButtonPressed: () {
                setState(() {
                  widget.puzzle = widget.rePuzzle;

                  Navigator.pop(context);
                });
              },
              onCancelButtonPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ));
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("not useful"),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  Widget continueButton = TextButton(
    child: Text("useful"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Hint"),
    content: Text(Provider.of<ChessPuzzle>(context, listen: false).description),
    actions: [
      cancelButton,
      continueButton,
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
