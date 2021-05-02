import 'dart:ui';
import 'package:chess_puzz/chessPuzzels.dart';
import 'package:chess_puzz/constants.dart';
import 'package:chess_puzz/screens/levels.dart';
import 'package:chess_puzz/widget/chess.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stateless_chessboard/flutter_stateless_chessboard.dart';
import 'package:flutter_stateless_chessboard/types.dart' as types;
import 'package:provider/provider.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class Puzzle extends StatefulWidget {
  String puzzle;
  String rePuzzle;

  final int puzzleNumber;

  Puzzle({Key key, this.puzzle, this.puzzleNumber, this.rePuzzle})
      : super(key: key);
  @override
  _PuzzleState createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {
  int turn = 0;
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Provider.of<ChessPuzzle>(context).isSolved
            ? Colors.greenAccent[200]
            : kthird_color,
        appBar: AppBar(
          centerTitle: true,
          title: Text('puzzle ${(widget.puzzleNumber + 1).toString()}',
              style: TextStyle(
                  color: kSecondary_color,
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
          backgroundColor: Provider.of<ChessPuzzle>(context).isSolved
              ? Colors.greenAccent[200]
              : kthird_color,
          shadowColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.settings,
                color: kSecondary_color,
                size: 28.0,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 8,
                          offset: Offset(2, 1),
                          spreadRadius: 7.0,
                          color: kSecondary_color.withOpacity(0.6))
                    ]),
                child: Chessboard(
                  darkSquareColor: kSecondary_color,
                  lightSquareColor: kPrimary_color,
                  fen: widget.puzzle,
                  size: size.width * 0.93,
                  orientation: Provider.of<ChessPuzzle>(context).isWhiteToMove
                      ? types.Color.WHITE
                      : types.Color.BLACK,
                  onMove: (move) {
                    List<dynamic> solutions =
                        Provider.of<ChessPuzzle>(context, listen: false)
                            .solution;
                    print(solutions.length);

                    var nextFen = makeMove(widget.puzzle, {
                      'from': move.from,
                      'to': move.to,
                      'promotion': 'q',
                    });
                    print(move.to);
                    if (nextFen != null) {
                      setState(() {
                        widget.puzzle = nextFen;
                      });
                    }
                    //if one solution move
                    if (solutions.length == 1) {
                      print(move.to + solutions[0]);
                      if (move.to == solutions[0]) {
                        setState(() {
                          Provider.of<ChessPuzzle>(context, listen: false)
                              .solved();
                          // solved = true;
                          showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (_) => AssetGiffyDialog(
                                    image:
                                        Image.asset('assets/img/success.gif'),
                                    title: Text(
                                      'great. well done',
                                      style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    description: Text(
                                      'you made best move here may be there are some good moves as well but only best move considered',
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
                                    onOkButtonPressed: () =>
                                        Navigator.pop(context),
                                  ));
                        });
                      } else {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (_) => AssetGiffyDialog(
                                  image: Image.asset('assets/img/wrong.gif'),
                                  title: Text(
                                    'mistak',
                                    style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  description: Text(
                                    'may be your move is not bad or may be its good but only best move considered here ',
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
                                      nextFen = widget.rePuzzle;
                                      turn = 0;
                                      Navigator.pop(context);
                                    });
                                  },
                                  onCancelButtonPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                ));
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
                            print(nextFenn);
                            if (nextFenn != null) {
                              setState(() {
                                widget.puzzle = nextFenn;

                                turn++;
                              });
                            }
                          } else {
                            showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (_) => AssetGiffyDialog(
                                      image:
                                          Image.asset('assets/img/wrong.gif'),
                                      title: Text(
                                        'mistak',
                                        style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      description: Text(
                                        'may be your move is not bad or may be its good but only best move considered here ',
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
                                          nextFen = widget.rePuzzle;
                                          turn = 0;
                                          Navigator.pop(context);
                                        });
                                      },
                                      onCancelButtonPressed: () {
                                        Navigator.pop(context);
                                        Navigator.pop(context);
                                      },
                                    ));
                          }
                          break;

                        case 1:
                          if (move.to == solutions[2]) {
                            setState(() {
                              Provider.of<ChessPuzzle>(context, listen: false)
                                  .solved();
                              turn++;
                            });
                            showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (_) => AssetGiffyDialog(
                                    image:
                                        Image.asset('assets/img/success.gif'),
                                    title: Text(
                                      'great. well done',
                                      style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    description: Text(
                                      'you made best move here may be there are some good moves as well but only best move considered',
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
                                    onOkButtonPressed: () {
                                      Navigator.pop(context);
                                    }));
                          } else {
                            showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (_) => AssetGiffyDialog(
                                      image:
                                          Image.asset('assets/img/wrong.gif'),
                                      title: Text(
                                        'mistak',
                                        style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      description: Text(
                                        'may be your move is not bad or may be its good but only best move considered here ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(),
                                      ),
                                      entryAnimation: EntryAnimation.TOP,
                                      buttonOkText: Text('try again'),
                                      buttonOkColor: Colors.grey,
                                      buttonCancelText: Text('go back'),
                                      onOkButtonPressed: () {
                                        setState(() {
                                          turn = 0;
                                          widget.puzzle = widget.rePuzzle;
                                          nextFen = widget.rePuzzle;
                                          Navigator.pop(context);
                                        });
                                      },
                                      onCancelButtonPressed: () {
                                        Navigator.pop(context);
                                        Navigator.pop(context);
                                      },
                                    ));
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
                            showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (_) => AssetGiffyDialog(
                                      image:
                                          Image.asset('assets/img/wrong.gif'),
                                      title: Text(
                                        'mistak',
                                        style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      description: Text(
                                        'may be your move is not bad or may be its good but only best move considered here ',
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
                                          nextFen = widget.rePuzzle;
                                          turn = 0;
                                          Navigator.pop(context);
                                        });
                                      },
                                      onCancelButtonPressed: () {
                                        Navigator.pop(context);
                                        Navigator.pop(context);
                                      },
                                    ));
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
                            showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (_) => AssetGiffyDialog(
                                      image:
                                          Image.asset('assets/img/wrong.gif'),
                                      title: Text(
                                        'mistak',
                                        style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      description: Text(
                                        'may be your move is not bad or may be its good but only best move considered here ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(),
                                      ),
                                      entryAnimation: EntryAnimation.TOP,
                                      buttonOkText: Text('try again'),
                                      buttonOkColor: Colors.grey,
                                      buttonCancelText: Text('go back'),
                                      onOkButtonPressed: () {
                                        setState(() {
                                          turn = 0;
                                          widget.puzzle = widget.rePuzzle;
                                          nextFen = widget.rePuzzle;
                                          Navigator.pop(context);
                                        });
                                      },
                                      onCancelButtonPressed: () {
                                        Navigator.pop(context);
                                        Navigator.pop(context);
                                      },
                                    ));
                          }
                          break;
                        case 2:
                          if (move.to == solutions[4]) {
                            setState(() {
                              Provider.of<ChessPuzzle>(context, listen: false)
                                  .solved();
                              turn++;
                            });
                            showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (_) => AssetGiffyDialog(
                                    image:
                                        Image.asset('assets/img/success.gif'),
                                    title: Text(
                                      'great. well done',
                                      style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    description: Text(
                                      'you made best move here may be there are some good moves as well but only best move considered',
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
                                    onOkButtonPressed: () {
                                      Navigator.pop(context);
                                    }));
                          } else {
                            showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (_) => AssetGiffyDialog(
                                      image:
                                          Image.asset('assets/img/wrong.gif'),
                                      title: Text(
                                        'not accurate answer',
                                        style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      description: Text(
                                        'may be your move is not bad or may be its good but only best move considered here ',
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
            SizedBox(
              height: 40.0,
            ),
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
                          style:
                              TextStyle(color: kSecondary_color, fontSize: 25),
                        )
                      : Text(
                          'Black To Play',
                          style:
                              TextStyle(color: kSecondary_color, fontSize: 25),
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
