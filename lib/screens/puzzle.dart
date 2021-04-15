import 'dart:ui';

import 'package:chess_puzz/constants.dart';
import 'package:chess_puzz/widget/chess.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stateless_chessboard/flutter_stateless_chessboard.dart';
import 'package:flutter_stateless_chessboard/types.dart' as types;

class Puzzle extends StatefulWidget {
   String puzzle;
  final int puzzleNumber;
  bool isSolved;
  final String solution;
  final String description;
  final bool isWhiteToMove;

  Puzzle(
      {Key key,
      this.puzzle,
      this.isSolved,
      this.solution,
      this.description,
      this.isWhiteToMove,
      this.puzzleNumber})
      : super(key: key);
  @override
  _PuzzleState createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {
  

  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool temp = false;

    return Scaffold(
        backgroundColor:
            widget.isSolved ? Colors.greenAccent[400] : kthird_color,
        appBar: AppBar(
          centerTitle: true,
          title: Text('puzzle ${(widget.puzzleNumber + 1).toString()}',
              style: TextStyle(
                  color: widget.isWhiteToMove
                      ? Colors.yellowAccent
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
              child: Chessboard(
                darkSquareColor: kSecondary_color,
                lightSquareColor: kPrimary_color,
                fen: widget.puzzle,
                size: size.width * 0.93,
                orientation: widget.isWhiteToMove
                    ? types.Color.WHITE
                    : types.Color.BLACK,
                onMove: (move) {
                  List<String> solutions = widget.solution.split(' ');

                  final nextFen = makeMove(widget.puzzle, {
                    'from': move.from,
                    'to': move.to,
                    'promotion': 'q',
                  });

                  if (nextFen != null) {
                    setState(() {
                      widget.puzzle = nextFen;
                    });
                  }

                  if (solutions.length == 1) {
                    print(move.to + solutions[0]);
                    if (move.to == solutions[0]) {
                      setState(() {
                        widget.isSolved = true;
                      });
                    }
                  }
                  if (solutions.length == 3) {
                    if (move.to == solutions[0]) {}
                    if (temp) {
                      if (move.to == solutions[2]) {
                        setState(() {
                          widget.isSolved = true;
                        });
                      }
                    }
                  }

                  // print(move.to);
                  // print(solutions);
                },
              ),
            ),
            SizedBox(
              height: 38.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  widget.isWhiteToMove
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
                  widget.isWhiteToMove
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
            Padding(
              padding: const EdgeInsets.only(
                  right: 40, left: 40, top: 50, bottom: 5),
              child: Row(
                children: [
                  Container(
                      height: 62,
                      width: 62,
                      child: Image.asset(
                        'assets/img/left_next.png',
                        fit: BoxFit.cover,
                      )),
                  Spacer(),
                  GestureDetector( onTap: (){
                    setState(() {
                      
                    });
                  },
                    child: Container(
                        height: 62,
                        width: 62,
                        child: Image.asset(
                          'assets/img/right_next.png',
                          fit: BoxFit.cover,
                        )),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
