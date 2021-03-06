import 'dart:io';
import 'dart:typed_data';
import 'package:chess_puzz/models/chessPuzzels.dart';
import 'package:chess_puzz/constants.dart';
import 'package:chess_puzz/models/puzzles.dart';
import 'package:chess_puzz/screens/setting.dart';
import 'package:chess_puzz/storage/sharedPrefrences.dart';
import 'package:chess_puzz/widget/chess.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stateless_chessboard/flutter_stateless_chessboard.dart';
import 'package:flutter_stateless_chessboard/types.dart' as types;
import 'package:provider/provider.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'GenerateAd.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';

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
  ScreenshotController screenshotController = ScreenshotController();
  int attempt = 15;
  bool a = false;

  void initState() {
    super.initState();

    StoreData().getAttempt().then((value) => setState(() {
          attempt = value;
        }));
  }

  int turn = 0;
  final assetsAudioPlayer = AssetsAudioPlayer();

  Widget build(BuildContext context) {
    StoreData().getAttempt().then((value) => setState(() {
          attempt = value;
        }));
    Size size = MediaQuery.of(context).size;

    return Screenshot(
      controller: screenshotController,
      child: Scaffold(
          backgroundColor: kthird_color,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Puzzle ${(widget.puzzleNumber + 1).toString()}',
                style: TextStyle(
                    color: Provider.of<ChessPuzzle>(context).isWhiteToMove
                        ? Colors.white
                        : kSecondary_color,
                    fontSize: size.width > 650 ? 35 : 25.0,
                    shadows: [
                      Shadow(
                          color: Colors.black87,
                          blurRadius: 1,
                          offset: Offset(0, 0.4))
                    ])),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: kSecondary_color,
                size: 650 < size.width ? 40 : 30,
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
                    size: 650 < size.width ? 37 : 29,
                  ),
                ),
              )
            ],
          ),
          body: attempt != 0
              ? Column(
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    widget.title == 'T2019'
                        ? Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 26.0, horizontal: 20.0),
                            child: Text(
                              Provider.of<ChessPuzzle>(context).playersName,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: kSecondary_color,
                                  fontSize: size.width > 650 ? 26 : 19,
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
                                      fontSize: size.width > 650 ? 26 : 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            : widget.title == 'T2017'
                                ? Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 26.0, horizontal: 20.0),
                                    child: Text(
                                      Provider.of<ChessPuzzle>(context)
                                          .playersName,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: kSecondary_color,
                                          fontSize: size.width > 650 ? 26 : 19,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                : widget.title == 'T2016'
                                    ? Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 26.0, horizontal: 20.0),
                                        child: Text(
                                          Provider.of<ChessPuzzle>(context)
                                              .playersName,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: kSecondary_color,
                                              fontSize:
                                                  size.width > 650 ? 26 : 19,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    : widget.title == 'English'
                                        ? Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 26.0,
                                                horizontal: 20.0),
                                            child: Text(
                                              Provider.of<ChessPuzzle>(context)
                                                  .playersName,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: kSecondary_color,
                                                  fontSize: size.width > 650
                                                      ? 26
                                                      : 19,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        : widget.title == 'Caro-Kann'
                                            ? Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 26.0,
                                                    horizontal: 20.0),
                                                child: Text(
                                                  Provider.of<ChessPuzzle>(
                                                          context)
                                                      .playersName,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: kSecondary_color,
                                                      fontSize: size.width > 650
                                                          ? 26
                                                          : 19,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            : widget.title == 'French'
                                                ? Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 26.0,
                                                            horizontal: 20.0),
                                                    child: Text(
                                                      Provider.of<ChessPuzzle>(
                                                              context)
                                                          .playersName,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              kSecondary_color,
                                                          fontSize:
                                                              size.width > 650
                                                                  ? 26
                                                                  : 19,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  )
                                                : widget.title ==
                                                        "King's Indian Defense"
                                                    ? Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 26.0,
                                                                horizontal:
                                                                    20.0),
                                                        child: Text(
                                                          Provider.of<ChessPuzzle>(
                                                                  context)
                                                              .playersName,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              color:
                                                                  kSecondary_color,
                                                              fontSize:
                                                                  size.width >
                                                                          650
                                                                      ? 26
                                                                      : 19,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      )
                                                    : widget.title ==
                                                            'Nimzo-Indian'
                                                        ? Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    vertical:
                                                                        26.0,
                                                                    horizontal:
                                                                        20.0),
                                                            child: Text(
                                                              Provider.of<ChessPuzzle>(
                                                                      context)
                                                                  .playersName,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  color:
                                                                      kSecondary_color,
                                                                  fontSize:
                                                                      size.width >
                                                                              650
                                                                          ? 26
                                                                          : 19,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          )
                                                        : widget.title ==
                                                                'Ruy Lopez'
                                                            ? Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        vertical:
                                                                            26.0,
                                                                        horizontal:
                                                                            20.0),
                                                                child: Text(
                                                                  Provider.of<ChessPuzzle>(
                                                                          context)
                                                                      .playersName,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color:
                                                                          kSecondary_color,
                                                                      fontSize: size.width >
                                                                              650
                                                                          ? 26
                                                                          : 19,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              )
                                                            : Text(''),
                    SizedBox(height: 15.0),
                    Center(
                      child: FutureBuilder(
                        future: StoreData().readColor('color'),
                        builder: (context, snapshot) => Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 7,
                                  offset: Offset(1, 1),
                                  spreadRadius: 7.0,
                                  color: snapshot.data == 0
                                      ? kdeafultBlack.withOpacity(0.8)
                                      : snapshot.data == 1
                                          ? kgreenBlack.withOpacity(0.8)
                                          : snapshot.data == 2
                                              ? kredBlack.withOpacity(0.8)
                                              : snapshot.data == 3
                                                  ? ktournmentblack
                                                      .withOpacity(0.8)
                                                  : snapshot.data == 4
                                                      ? kbrownBlack
                                                          .withOpacity(0.8)
                                                      : snapshot.data == 5
                                                          ? kpinkblack
                                                              .withOpacity(0.8)
                                                          : kdeafultBlack
                                                              .withOpacity(0.8),
                                )
                              ]),
                          child: Chessboard(
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
                              size: size.width > 650
                                  ? size.width * 0.80
                                  : size.width * 0.94,
                              orientation: Provider.of<ChessPuzzle>(context)
                                      .isWhiteToMove
                                  ? types.Color.WHITE
                                  : types.Color.BLACK,
                              onMove: (move) {
                                print(size.width);

                                ///

                                List<dynamic> solutions =
                                    Provider.of<ChessPuzzle>(context,
                                            listen: false)
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
                                  if (move.to == solutions[0][1] &&
                                      move.from == solutions[0][0]) {
                                    // audio.play('hero_simple-celebration-01.mp3',
                                    //    mode: PlayerMode.LOW_LATENCY, volume: 5,stayAwake: false);

                                    if (Provider.of<Puzzles>(context,
                                            listen: false)
                                        .soundFx) {
                                      assetsAudioPlayer.open(
                                        Audio(
                                          "assets/hero_simple-celebration-01.mp3",
                                        ),
                                      );
                                    }

                                    widget.title == 'Pin'
                                        ? StoreData().save(
                                            'Pin${widget.puzzleNumber}', true)
                                        : widget.title == 'Check Mate In One'
                                            ? StoreData().save(
                                                'Check Mate In One${widget.puzzleNumber}',
                                                true)
                                            : widget.title == 'T2019'
                                                ? StoreData().save(
                                                    'T2019${widget.puzzleNumber}',
                                                    true)
                                                : widget.title ==
                                                        'Double Attack'
                                                    ? StoreData().save(
                                                        'Forks${widget.puzzleNumber}',
                                                        true)
                                                    : widget.title ==
                                                            'Check Mate In Two'
                                                        ? StoreData().save(
                                                            'Check Mate In Two${widget.puzzleNumber}',
                                                            true)
                                                        : widget.title ==
                                                                'T2017'
                                                            ? StoreData().save(
                                                                'T2017${widget.puzzleNumber}',
                                                                true)
                                                            : widget.title ==
                                                                    'T2016'
                                                                ? StoreData().save(
                                                                    'T2016${widget.puzzleNumber}', true)
                                                                : widget.title ==
                                                                        'Check Mate In Four'
                                                                    ? StoreData()
                                                                        .save('Check Mate In Four${widget.puzzleNumber}', true)
                                                                    : widget.title == 'Check Mate In Three'
                                                                        ? StoreData().save('Check Mate In Three${widget.puzzleNumber}', true)
                                                                        : widget.title == 'Sacrifice'
                                                                            ? StoreData().save('Sacrifice${widget.puzzleNumber}', true)
                                                                            : widget.title == 'Discover Attack'
                                                                                ? StoreData().save('Discover Attack${widget.puzzleNumber}', true)
                                                                                : widget.title == 'Tactics for beginner'
                                                                                    ? StoreData().save('Tactics for beginner${widget.puzzleNumber}', true)
                                                                                    : widget.title == 'Master chess puzzles'
                                                                                        ? StoreData().save('Master chess puzzles${widget.puzzleNumber}', true)
                                                                                        : widget.title == 'English'
                                                                                            ? StoreData().save('English${widget.puzzleNumber}', true)
                                                                                            : widget.title == 'Caro-Kann'
                                                                                                ? StoreData().save('CaroKann${widget.puzzleNumber}', true)
                                                                                                : widget.title == 'French'
                                                                                                    ? StoreData().save('French${widget.puzzleNumber}', true)
                                                                                                    : widget.title == "King's Indian Defense"
                                                                                                        ? StoreData().save('Kings Indian Defense${widget.puzzleNumber}', true)
                                                                                                        : widget.title == 'Nimzo-Indian'
                                                                                                            ? StoreData().save('NimzoIndian${widget.puzzleNumber}', true)
                                                                                                            : widget.title == 'Ruy Lopez'
                                                                                                                ? StoreData().save('Ruy Lopez${widget.puzzleNumber}', true)
                                                                                                                : StoreData().save('T2018${widget.puzzleNumber}', true);
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
                                                    : widget.title ==
                                                            'Double Attack'
                                                        ? StoreData()
                                                            .saveForTactics()
                                                        : widget.title ==
                                                                'Check Mate In Four'
                                                            ? StoreData()
                                                                .saveForCheckMate()
                                                            : widget.title ==
                                                                    'Check Mate In Three'
                                                                ? StoreData()
                                                                    .saveForCheckMate()
                                                                : widget.title ==
                                                                        'T2017'
                                                                    ? StoreData()
                                                                        .saveForTacticsWithTopPlayers()
                                                                    : widget.title ==
                                                                            'T2016'
                                                                        ? StoreData()
                                                                            .saveForTacticsWithTopPlayers()
                                                                        : widget.title ==
                                                                                'Discover Attack'
                                                                            ? StoreData().saveForTactics()
                                                                            : widget.title == 'Sacrifice'
                                                                                ? StoreData().saveForTactics()
                                                                                : widget.title == 'Tactics for beginner'
                                                                                    ? StoreData().saveForBeginnerTactics()
                                                                                    : widget.title == 'Master chess puzzles'
                                                                                        ? StoreData().saveForMasterTactics()
                                                                                        : widget.title == 'English'
                                                                                            ? StoreData().saveForOpeningTactics()
                                                                                            : widget.title == 'Caro-Kann'
                                                                                                ? StoreData().saveForOpeningTactics()
                                                                                                : widget.title == 'French'
                                                                                                    ? StoreData().saveForOpeningTactics()
                                                                                                    : widget.title == "King's Indian Defense"
                                                                                                        ? StoreData().saveForOpeningTactics()
                                                                                                        : widget.title == 'Nimzo-Indian'
                                                                                                            ? StoreData().saveForOpeningTactics()
                                                                                                            : widget.title == 'Ruy Lopez'
                                                                                                                ? StoreData().saveForOpeningTactics()
                                                                                                                : StoreData().saveForCheckMate();

                                    // solved = true;
                                    showDialogSuccess(
                                      sORw: 'success',
                                      title: 'Well Done',
                                      description:
                                          'you made best move here may be there are some good moves as well but only best move considered',
                                    );

                                    StoreData().looseAttempt();
                                  } else {
                                    if (nextFen != null) {
                                      StoreData().looseAttempt();
                                      // audio.play('alert_error-01.mp3',
                                      //   mode: PlayerMode.LOW_LATENCY, volume: 5,stayAwake: false);
                                      if (Provider.of<Puzzles>(context,
                                              listen: false)
                                          .soundFx) {
                                        assetsAudioPlayer.open(
                                          Audio("assets/alert_error-01.mp3"),
                                        );
                                      }
                                      showDialogWrong(
                                        sORw: 'wrong',
                                        title: 'Mistake',
                                        description:
                                            'may be your move is not bad  but only best move considered here ',
                                      );
                                    }
                                  }

                                  // alert dialog to say success
                                }
                                //if two solution move
                                if (solutions.length == 3) {
                                  switch (turn) {
                                    case 0:
                                      if (move.to == solutions[0][1] &&
                                          move.from == solutions[0][0]) {
                                        var nextFenn = makeMoveBot(
                                            widget.puzzle, solutions[1]);

                                        if (nextFenn != null) {
                                          setState(() {
                                            widget.puzzle = nextFenn;

                                            turn++;
                                          });
                                        }
                                      } else {
                                        if (nextFen != null) {
                                          StoreData().looseAttempt();
                                          if (Provider.of<Puzzles>(context,
                                                  listen: false)
                                              .soundFx) {
                                            assetsAudioPlayer.open(
                                              Audio(
                                                "assets/alert_error-01.mp3",
                                              ),
                                            );
                                          }
                                          showDialogWrong(
                                            sORw: 'wrong',
                                            title: 'Mistake',
                                            description:
                                                'may be your move is not bad  but only best move considered here ',
                                          );
                                        }
                                      }
                                      break;

                                    case 1:
                                      if (move.to == solutions[2][1] &&
                                          move.from == solutions[2][0]) {
                                        setState(() {
                                          widget.title == 'Pin'
                                              ? StoreData().save(
                                                  'Pin${widget.puzzleNumber}', true)
                                              : widget.title ==
                                                      'Check Mate In One'
                                                  ? StoreData().save(
                                                      'Check Mate In One${widget.puzzleNumber}',
                                                      true)
                                                  : widget.title == 'T2019'
                                                      ? StoreData().save(
                                                          'T2019${widget.puzzleNumber}',
                                                          true)
                                                      : widget.title ==
                                                              'Double Attack'
                                                          ? StoreData().save(
                                                              'Forks${widget.puzzleNumber}',
                                                              true)
                                                          : widget.title ==
                                                                  'Check Mate In Two'
                                                              ? StoreData().save(
                                                                  'Check Mate In Two${widget.puzzleNumber}',
                                                                  true)
                                                              : widget.title ==
                                                                      'T2017'
                                                                  ? StoreData()
                                                                      .save(
                                                                          'T2017${widget.puzzleNumber}',
                                                                          true)
                                                                  : widget.title ==
                                                                          'T2016'
                                                                      ? StoreData().save(
                                                                          'T2016${widget.puzzleNumber}',
                                                                          true)
                                                                      : widget.title ==
                                                                              'Check Mate In Four'
                                                                          ? StoreData().save('Check Mate In Four${widget.puzzleNumber}', true)
                                                                          : widget.title == 'Check Mate In Three'
                                                                              ? StoreData().save('Check Mate In Three${widget.puzzleNumber}', true)
                                                                              : widget.title == 'Sacrifice'
                                                                                  ? StoreData().save('Sacrifice${widget.puzzleNumber}', true)
                                                                                  : widget.title == 'Discover Attack'
                                                                                      ? StoreData().save('Discover Attack${widget.puzzleNumber}', true)
                                                                                      : widget.title == 'Tactics for beginner'
                                                                                          ? StoreData().save('Tactics for beginner${widget.puzzleNumber}', true)
                                                                                          : widget.title == 'Master chess puzzles'
                                                                                              ? StoreData().save('Master chess puzzles${widget.puzzleNumber}', true)
                                                                                              : widget.title == 'English'
                                                                                                  ? StoreData().save('English${widget.puzzleNumber}', true)
                                                                                                  : widget.title == 'Caro-Kann'
                                                                                                      ? StoreData().save('CaroKann${widget.puzzleNumber}', true)
                                                                                                      : widget.title == 'French'
                                                                                                          ? StoreData().save('French${widget.puzzleNumber}', true)
                                                                                                          : widget.title == "King's Indian Defense"
                                                                                                              ? StoreData().save('Kings Indian Defense${widget.puzzleNumber}', true)
                                                                                                              : widget.title == 'Nimzo-Indian'
                                                                                                                  ? StoreData().save('NimzoIndian${widget.puzzleNumber}', true)
                                                                                                                  : widget.title == 'Ruy Lopez'
                                                                                                                      ? StoreData().save('Ruy Lopez${widget.puzzleNumber}', true)
                                                                                                                      : StoreData().save('T2018${widget.puzzleNumber}', true);
                                          ///////////
                                          widget.title == 'Pin'
                                              ? StoreData().saveForTactics()
                                              : widget.title ==
                                                      'Check Mate In One'
                                                  ? StoreData()
                                                      .saveForCheckMate()
                                                  : widget.title == 'T2019'
                                                      ? StoreData()
                                                          .saveForTacticsWithTopPlayers()
                                                      : widget.title == 'T2018'
                                                          ? StoreData()
                                                              .saveForTacticsWithTopPlayers()
                                                          : widget.title ==
                                                                  'Double Attack'
                                                              ? StoreData()
                                                                  .saveForTactics()
                                                              : widget.title ==
                                                                      'Check Mate In Four'
                                                                  ? StoreData()
                                                                      .saveForCheckMate()
                                                                  : widget.title ==
                                                                          'Check Mate In Three'
                                                                      ? StoreData()
                                                                          .saveForCheckMate()
                                                                      : widget.title ==
                                                                              'T2017'
                                                                          ? StoreData()
                                                                              .saveForTacticsWithTopPlayers()
                                                                          : widget.title == 'T2016'
                                                                              ? StoreData().saveForTacticsWithTopPlayers()
                                                                              : widget.title == 'Discover Attack'
                                                                                  ? StoreData().saveForTactics()
                                                                                  : widget.title == 'Sacrifice'
                                                                                      ? StoreData().saveForTactics()
                                                                                      : widget.title == 'Tactics for beginner'
                                                                                          ? StoreData().saveForBeginnerTactics()
                                                                                          : widget.title == 'Master chess puzzles'
                                                                                              ? StoreData().saveForMasterTactics()
                                                                                              : widget.title == 'English'
                                                                                                  ? StoreData().saveForOpeningTactics()
                                                                                                  : widget.title == 'Caro-Kann'
                                                                                                      ? StoreData().saveForOpeningTactics()
                                                                                                      : widget.title == 'French'
                                                                                                          ? StoreData().saveForOpeningTactics()
                                                                                                          : widget.title == "King's Indian Defense"
                                                                                                              ? StoreData().saveForOpeningTactics()
                                                                                                              : widget.title == 'Nimzo-Indian'
                                                                                                                  ? StoreData().saveForOpeningTactics()
                                                                                                                  : widget.title == 'Ruy Lopez'
                                                                                                                      ? StoreData().saveForOpeningTactics()
                                                                                                                      : StoreData().saveForCheckMate();
                                        });
                                        if (Provider.of<Puzzles>(context,
                                                listen: false)
                                            .soundFx) {
                                          assetsAudioPlayer.open(
                                            Audio(
                                              "assets/hero_simple-celebration-01.mp3",
                                            ),
                                          );
                                        }
                                        showDialogSuccess(
                                          sORw: 'success',
                                          title: 'Well Done',
                                          description:
                                              'you made best move here may be there are some good moves as well but only best move considered',
                                        );
                                        StoreData().looseAttempt();
                                      } else {
                                        if (nextFen != null) {
                                          StoreData().looseAttempt();
                                          if (Provider.of<Puzzles>(context,
                                                  listen: false)
                                              .soundFx) {
                                            assetsAudioPlayer.open(
                                              Audio(
                                                "assets/alert_error-01.mp3",
                                              ),
                                            );
                                          }
                                          showDialogWrong(
                                            sORw: 'wrong',
                                            title: 'Mistake',
                                            description:
                                                'may be your move is not bad  but only best move considered here ',
                                          );
                                        }
                                      }
                                      break;

                                    default:
                                  }
                                }
                                if (solutions.length == 5) {
                                  switch (turn) {
                                    case 0:
                                      if (move.to == solutions[0][1] &&
                                          move.from == solutions[0][0]) {
                                        var nextFenn = makeMoveBot(
                                            widget.puzzle, solutions[1]);

                                        if (nextFenn != null) {
                                          setState(() {
                                            widget.puzzle = nextFenn;

                                            turn++;
                                          });
                                        }
                                      } else {
                                        if (nextFen != null) {
                                          StoreData().looseAttempt();
                                          if (Provider.of<Puzzles>(context,
                                                  listen: false)
                                              .soundFx) {
                                            assetsAudioPlayer.open(
                                              Audio(
                                                "assets/alert_error-01.mp3",
                                              ),
                                            );
                                          }
                                          showDialogWrong(
                                            sORw: 'wrong',
                                            title: 'Mistake',
                                            description:
                                                'may be your move is not bad  but only best move considered here ',
                                          );
                                        }
                                      }
                                      break;

                                    case 1:
                                      if (move.to == solutions[2][1] &&
                                          move.from == solutions[2][0]) {
                                        var nextFenn = makeMoveBot(
                                            widget.puzzle, solutions[3]);

                                        if (nextFenn != null) {
                                          setState(() {
                                            widget.puzzle = nextFenn;

                                            turn++;
                                          });
                                        }
                                      } else {
                                        if (nextFen != null) {
                                          StoreData().looseAttempt();
                                          if (Provider.of<Puzzles>(context,
                                                  listen: false)
                                              .soundFx) {
                                            assetsAudioPlayer.open(
                                              Audio(
                                                "assets/alert_error-01.mp3",
                                              ),
                                            );
                                          }
                                          showDialogWrong(
                                            sORw: 'wrong',
                                            title: 'Mistake',
                                            description:
                                                'may be your move is not bad  but only best move considered here ',
                                          );
                                        }
                                      }
                                      break;
                                    case 2:
                                      if (move.to == solutions[4][1] &&
                                          move.from == solutions[4][0]) {
                                        setState(() {
                                          widget.title == 'Pin'
                                              ? StoreData().save(
                                                  'Pin${widget.puzzleNumber}', true)
                                              : widget.title ==
                                                      'Check Mate In One'
                                                  ? StoreData().save(
                                                      'Check Mate In One${widget.puzzleNumber}',
                                                      true)
                                                  : widget.title == 'T2019'
                                                      ? StoreData().save(
                                                          'T2019${widget.puzzleNumber}',
                                                          true)
                                                      : widget.title ==
                                                              'Double Attack'
                                                          ? StoreData().save(
                                                              'Forks${widget.puzzleNumber}',
                                                              true)
                                                          : widget.title ==
                                                                  'Check Mate In Two'
                                                              ? StoreData().save(
                                                                  'Check Mate In Two${widget.puzzleNumber}',
                                                                  true)
                                                              : widget.title ==
                                                                      'T2017'
                                                                  ? StoreData()
                                                                      .save(
                                                                          'T2017${widget.puzzleNumber}',
                                                                          true)
                                                                  : widget.title ==
                                                                          'T2016'
                                                                      ? StoreData().save(
                                                                          'T2016${widget.puzzleNumber}',
                                                                          true)
                                                                      : widget.title ==
                                                                              'Check Mate In Four'
                                                                          ? StoreData().save('Check Mate In Four${widget.puzzleNumber}', true)
                                                                          : widget.title == 'Check Mate In Three'
                                                                              ? StoreData().save('Check Mate In Three${widget.puzzleNumber}', true)
                                                                              : widget.title == 'Sacrifice'
                                                                                  ? StoreData().save('Sacrifice${widget.puzzleNumber}', true)
                                                                                  : widget.title == 'Discover Attack'
                                                                                      ? StoreData().save('Discover Attack${widget.puzzleNumber}', true)
                                                                                      : widget.title == 'Tactics for beginner'
                                                                                          ? StoreData().save('Tactics for beginner${widget.puzzleNumber}', true)
                                                                                          : widget.title == 'Master chess puzzles'
                                                                                              ? StoreData().save('Master chess puzzles${widget.puzzleNumber}', true)
                                                                                              : widget.title == 'English'
                                                                                                  ? StoreData().save('English${widget.puzzleNumber}', true)
                                                                                                  : widget.title == 'Caro-Kann'
                                                                                                      ? StoreData().save('CaroKann${widget.puzzleNumber}', true)
                                                                                                      : widget.title == 'French'
                                                                                                          ? StoreData().save('French${widget.puzzleNumber}', true)
                                                                                                          : widget.title == "King's Indian Defense"
                                                                                                              ? StoreData().save('Kings Indian Defense${widget.puzzleNumber}', true)
                                                                                                              : widget.title == 'Nimzo-Indian'
                                                                                                                  ? StoreData().save('NimzoIndian${widget.puzzleNumber}', true)
                                                                                                                  : widget.title == 'Ruy Lopez'
                                                                                                                      ? StoreData().save('Ruy Lopez${widget.puzzleNumber}', true)
                                                                                                                      : StoreData().save('T2018${widget.puzzleNumber}', true);
                                          ///////////
                                          widget.title == 'Pin'
                                              ? StoreData().saveForTactics()
                                              : widget.title ==
                                                      'Check Mate In One'
                                                  ? StoreData()
                                                      .saveForCheckMate()
                                                  : widget.title == 'T2019'
                                                      ? StoreData()
                                                          .saveForTacticsWithTopPlayers()
                                                      : widget.title == 'T2018'
                                                          ? StoreData()
                                                              .saveForTacticsWithTopPlayers()
                                                          : widget.title ==
                                                                  'Double Attack'
                                                              ? StoreData()
                                                                  .saveForTactics()
                                                              : widget.title ==
                                                                      'Check Mate In Four'
                                                                  ? StoreData()
                                                                      .saveForCheckMate()
                                                                  : widget.title ==
                                                                          'Check Mate In Three'
                                                                      ? StoreData()
                                                                          .saveForCheckMate()
                                                                      : widget.title ==
                                                                              'T2017'
                                                                          ? StoreData()
                                                                              .saveForTacticsWithTopPlayers()
                                                                          : widget.title == 'T2016'
                                                                              ? StoreData().saveForTacticsWithTopPlayers()
                                                                              : widget.title == 'Discover Attack'
                                                                                  ? StoreData().saveForTactics()
                                                                                  : widget.title == 'Sacrifice'
                                                                                      ? StoreData().saveForTactics()
                                                                                      : widget.title == 'Tactics for beginner'
                                                                                          ? StoreData().saveForBeginnerTactics()
                                                                                          : widget.title == 'Master chess puzzles'
                                                                                              ? StoreData().saveForMasterTactics()
                                                                                              : widget.title == 'English'
                                                                                                  ? StoreData().saveForOpeningTactics()
                                                                                                  : widget.title == 'Caro-Kann'
                                                                                                      ? StoreData().saveForOpeningTactics()
                                                                                                      : widget.title == 'French'
                                                                                                          ? StoreData().saveForOpeningTactics()
                                                                                                          : widget.title == "King's Indian Defense"
                                                                                                              ? StoreData().saveForOpeningTactics()
                                                                                                              : widget.title == 'Nimzo-Indian'
                                                                                                                  ? StoreData().saveForOpeningTactics()
                                                                                                                  : widget.title == 'Ruy Lopez'
                                                                                                                      ? StoreData().saveForOpeningTactics()
                                                                                                                      : StoreData().saveForCheckMate();
                                        });
                                        if (Provider.of<Puzzles>(context,
                                                listen: false)
                                            .soundFx) {
                                          assetsAudioPlayer.open(
                                            Audio(
                                              "assets/hero_simple-celebration-01.mp3",
                                            ),
                                          );
                                        }
                                        showDialogSuccess(
                                          sORw: 'success',
                                          title: 'Well Done',
                                          description:
                                              'you made best move here may be there are some good moves as well but only best move considered',
                                        );
                                        StoreData().looseAttempt();
                                      } else {
                                        if (nextFen != null) {
                                          StoreData().looseAttempt();
                                          if (Provider.of<Puzzles>(context,
                                                  listen: false)
                                              .soundFx) {
                                            assetsAudioPlayer.open(
                                              Audio(
                                                "assets/alert_error-01.mp3",
                                              ),
                                            );
                                          }
                                          showDialogWrong(
                                            sORw: 'wrong',
                                            title: 'Mistake',
                                            description:
                                                'may be your move is not bad  but only best move considered here ',
                                          );
                                        }
                                      }
                                      break;

                                    default:
                                  }
                                }

                                if (solutions.length == 7) {
                                  switch (turn) {
                                    case 0:
                                      if (move.to == solutions[0][1] &&
                                          move.from == solutions[0][0]) {
                                        var nextFenn = makeMoveBot(
                                            widget.puzzle, solutions[1]);

                                        if (nextFenn != null) {
                                          setState(() {
                                            widget.puzzle = nextFenn;

                                            turn++;
                                          });
                                        }
                                      } else {
                                        if (nextFen != null) {
                                          StoreData().looseAttempt();
                                          if (Provider.of<Puzzles>(context,
                                                  listen: false)
                                              .soundFx) {
                                            assetsAudioPlayer.open(
                                              Audio(
                                                "assets/alert_error-01.mp3",
                                              ),
                                            );
                                          }
                                          showDialogWrong(
                                            sORw: 'wrong',
                                            title: 'Mistake',
                                            description:
                                                'may be your move is not bad  but only best move considered here ',
                                          );
                                        }
                                      }
                                      break;

                                    case 1:
                                      if (move.to == solutions[2][1] &&
                                          move.from == solutions[2][0]) {
                                        var nextFenn = makeMoveBot(
                                            widget.puzzle, solutions[3]);

                                        if (nextFenn != null) {
                                          setState(() {
                                            widget.puzzle = nextFenn;

                                            turn++;
                                          });
                                        }
                                      } else {
                                        if (nextFen != null) {
                                          StoreData().looseAttempt();
                                          if (Provider.of<Puzzles>(context,
                                                  listen: false)
                                              .soundFx) {
                                            assetsAudioPlayer.open(
                                              Audio(
                                                "assets/alert_error-01.mp3",
                                              ),
                                            );
                                          }
                                          showDialogWrong(
                                            sORw: 'wrong',
                                            title: 'Mistake',
                                            description:
                                                'may be your move is not bad  but only best move considered here ',
                                          );
                                        }
                                      }
                                      break;
                                    case 2:
                                      if (move.to == solutions[4][1] &&
                                          move.from == solutions[4][0]) {
                                        var nextFenn = makeMoveBot(
                                            widget.puzzle, solutions[5]);

                                        if (nextFenn != null) {
                                          setState(() {
                                            widget.puzzle = nextFenn;

                                            turn++;
                                          });
                                        }
                                      } else {
                                        if (nextFen != null) {
                                          StoreData().looseAttempt();
                                          if (Provider.of<Puzzles>(context,
                                                  listen: false)
                                              .soundFx) {
                                            assetsAudioPlayer.open(
                                              Audio(
                                                "assets/alert_error-01.mp3",
                                              ),
                                            );
                                          }
                                          showDialogWrong(
                                            sORw: 'wrong',
                                            title: 'Mistake',
                                            description:
                                                'may be your move is not bad  but only best move considered here ',
                                          );
                                        }
                                      }
                                      break;
                                    case 3:
                                      if (move.to == solutions[6][1] &&
                                          move.from == solutions[6][0]) {
                                        setState(() {
                                          widget.title == 'Pin'
                                              ? StoreData().save(
                                                  'Pin${widget.puzzleNumber}', true)
                                              : widget.title ==
                                                      'Check Mate In One'
                                                  ? StoreData().save(
                                                      'Check Mate In One${widget.puzzleNumber}',
                                                      true)
                                                  : widget.title == 'T2019'
                                                      ? StoreData().save(
                                                          'T2019${widget.puzzleNumber}',
                                                          true)
                                                      : widget.title ==
                                                              'Double Attack'
                                                          ? StoreData().save(
                                                              'Forks${widget.puzzleNumber}',
                                                              true)
                                                          : widget.title ==
                                                                  'Check Mate In Two'
                                                              ? StoreData().save(
                                                                  'Check Mate In Two${widget.puzzleNumber}',
                                                                  true)
                                                              : widget.title ==
                                                                      'T2017'
                                                                  ? StoreData()
                                                                      .save(
                                                                          'T2017${widget.puzzleNumber}',
                                                                          true)
                                                                  : widget.title ==
                                                                          'T2016'
                                                                      ? StoreData().save(
                                                                          'T2016${widget.puzzleNumber}',
                                                                          true)
                                                                      : widget.title ==
                                                                              'Check Mate In Four'
                                                                          ? StoreData().save('Check Mate In Four${widget.puzzleNumber}', true)
                                                                          : widget.title == 'Check Mate In Three'
                                                                              ? StoreData().save('Check Mate In Three${widget.puzzleNumber}', true)
                                                                              : widget.title == 'Sacrifice'
                                                                                  ? StoreData().save('Sacrifice${widget.puzzleNumber}', true)
                                                                                  : widget.title == 'Discover Attack'
                                                                                      ? StoreData().save('Discover Attack${widget.puzzleNumber}', true)
                                                                                      : widget.title == 'Tactics for beginner'
                                                                                          ? StoreData().save('Tactics for beginner${widget.puzzleNumber}', true)
                                                                                          : widget.title == 'Master chess puzzles'
                                                                                              ? StoreData().save('Master chess puzzles${widget.puzzleNumber}', true)
                                                                                              : widget.title == 'English'
                                                                                                  ? StoreData().save('English${widget.puzzleNumber}', true)
                                                                                                  : widget.title == 'Caro-Kann'
                                                                                                      ? StoreData().save('CaroKann${widget.puzzleNumber}', true)
                                                                                                      : widget.title == 'French'
                                                                                                          ? StoreData().save('French${widget.puzzleNumber}', true)
                                                                                                          : widget.title == "King's Indian Defense"
                                                                                                              ? StoreData().save('Kings Indian Defense${widget.puzzleNumber}', true)
                                                                                                              : widget.title == 'Nimzo-Indian'
                                                                                                                  ? StoreData().save('NimzoIndian${widget.puzzleNumber}', true)
                                                                                                                  : widget.title == 'Ruy Lopez'
                                                                                                                      ? StoreData().save('Ruy Lopez${widget.puzzleNumber}', true)
                                                                                                                      : StoreData().save('T2018${widget.puzzleNumber}', true);
                                          ///////////
                                          widget.title == 'Pin'
                                              ? StoreData().saveForTactics()
                                              : widget.title ==
                                                      'Check Mate In One'
                                                  ? StoreData()
                                                      .saveForCheckMate()
                                                  : widget.title == 'T2019'
                                                      ? StoreData()
                                                          .saveForTacticsWithTopPlayers()
                                                      : widget.title == 'T2018'
                                                          ? StoreData()
                                                              .saveForTacticsWithTopPlayers()
                                                          : widget.title ==
                                                                  'Double Attack'
                                                              ? StoreData()
                                                                  .saveForTactics()
                                                              : widget.title ==
                                                                      'Check Mate In Four'
                                                                  ? StoreData()
                                                                      .saveForCheckMate()
                                                                  : widget.title ==
                                                                          'Check Mate In Three'
                                                                      ? StoreData()
                                                                          .saveForCheckMate()
                                                                      : widget.title ==
                                                                              'T2017'
                                                                          ? StoreData()
                                                                              .saveForTacticsWithTopPlayers()
                                                                          : widget.title == 'T2016'
                                                                              ? StoreData().saveForTacticsWithTopPlayers()
                                                                              : widget.title == 'Discover Attack'
                                                                                  ? StoreData().saveForTactics()
                                                                                  : widget.title == 'Sacrifice'
                                                                                      ? StoreData().saveForTactics()
                                                                                      : widget.title == 'Tactics for beginner'
                                                                                          ? StoreData().saveForBeginnerTactics()
                                                                                          : widget.title == 'Master chess puzzles'
                                                                                              ? StoreData().saveForMasterTactics()
                                                                                              : widget.title == 'English'
                                                                                                  ? StoreData().saveForOpeningTactics()
                                                                                                  : widget.title == 'Caro-Kann'
                                                                                                      ? StoreData().saveForOpeningTactics()
                                                                                                      : widget.title == 'French'
                                                                                                          ? StoreData().saveForOpeningTactics()
                                                                                                          : widget.title == "King's Indian Defense"
                                                                                                              ? StoreData().saveForOpeningTactics()
                                                                                                              : widget.title == 'Nimzo-Indian'
                                                                                                                  ? StoreData().saveForOpeningTactics()
                                                                                                                  : widget.title == 'Ruy Lopez'
                                                                                                                      ? StoreData().saveForOpeningTactics()
                                                                                                                      : StoreData().saveForCheckMate();
                                        });
                                        if (Provider.of<Puzzles>(context,
                                                listen: false)
                                            .soundFx) {
                                          assetsAudioPlayer.open(
                                            Audio(
                                              "assets/hero_simple-celebration-01.mp3",
                                            ),
                                          );
                                        }
                                        showDialogSuccess(
                                          sORw: 'success',
                                          title: 'Well Done',
                                          description:
                                              'you made best move here may be there are some good moves as well but only best move considered',
                                        );
                                        StoreData().looseAttempt();
                                      } else {
                                        if (nextFen != null) {
                                          StoreData().looseAttempt();
                                          if (Provider.of<Puzzles>(context,
                                                  listen: false)
                                              .soundFx) {
                                            assetsAudioPlayer.open(
                                              Audio(
                                                "assets/alert_error-01.mp3",
                                              ),
                                            );
                                          }
                                          showDialogWrong(
                                            sORw: 'wrong',
                                            title: 'Mistake',
                                            description:
                                                'may be your move is not bad  but only best move considered here ',
                                          );
                                        }
                                      }
                                      break;

                                    default:
                                  }
                                }
                              }),
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Provider.of<ChessPuzzle>(context).isWhiteToMove
                              ? Container(
                                  height: size.width > 650 ? 100 : 55,
                                  width: size.width > 650 ? 100 : 55,
                                  child: Image.asset(
                                    'assets/img/whiteToPlay.png',
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : Container(
                                  height: size.width > 650 ? 100 : 55,
                                  width: size.width > 650 ? 100 : 55,
                                  child: Image.asset(
                                    'assets/img/blackToPlay.png',
                                    fit: BoxFit.cover,
                                  )),
                          SizedBox(
                            width: 25.0,
                          ),
                          Provider.of<ChessPuzzle>(context).isWhiteToMove
                              ? Text(
                                  'White To Play',
                                  style: TextStyle(
                                      color: kSecondary_color,
                                      fontSize: size.width > 650 ? 35 : 23,
                                      fontWeight: FontWeight.bold),
                                )
                              : Text(
                                  'Black To Play',
                                  style: TextStyle(
                                      color: kSecondary_color,
                                      fontSize: size.width > 650 ? 35 : 23,
                                      fontWeight: FontWeight.bold),
                                ),
                          Spacer(
                            flex: 2,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          // dummy data used for attempt
                                Text('unlimited key',
                                      style: TextStyle(
                                          fontSize: size.width > 650 ? 31 : 18,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold)),
                               
                                 Spacer(
                            flex: 1,
                          ),
                          // GestureDetector(
                          //   onTap: () {
                          //     Navigator.push(
                          //             context,
                          //             MaterialPageRoute(
                          //                 builder: (context) => AdScreen()))
                          //         .then((value) => setState(() {}));
                          //   },
                          //   child: Icon(
                          //     Icons.vpn_key,
                          //     color: kSecondary_color,
                          //     size: size.width > 650 ? 45 : 30,
                          //   ),
                          // )
                        ],
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    size.width > 650
                        ? Divider(
                            thickness: 1.5,
                            color: kSecondary_color,
                          )
                        : Container(),
                    Row(
                      children: [
                        Spacer(),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                width: size.width > 650 ? 2 : 1.5,
                                color: Colors.black54,
                              ),
                              shape: StadiumBorder(),
                            ),
                            onPressed: () {
                              showAlertDialog(context);
                            },
                            child: Text(
                              'hint',
                              style: TextStyle(
                                  color: kSecondary_color,
                                  fontSize: size.width > 650 ? 30 : 18),
                            )),
                        Spacer(
                          flex: 1,
                        ),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                width: size.width > 650 ? 2 : 1.5,
                                color: Colors.black54,
                              ),
                              shape: StadiumBorder(),
                            ),
                            onPressed: () async {
                              final image = await screenshotController
                                  .captureFromWidget(Chessboard(
                                fen: widget.rePuzzle,
                                size: size.width * 0.94,
                                orientation: Provider.of<ChessPuzzle>(context,
                                            listen: false)
                                        .isWhiteToMove
                                    ? types.Color.WHITE
                                    : types.Color.BLACK,
                                darkSquareColor: kdeafultBlack,
                                lightSquareColor: kdeafultWhite,
                              ));
                              saveAndShare(image);
                            },
                            child: Text(
                              'Share',
                              style: TextStyle(
                                  color: kSecondary_color,
                                  fontSize: size.width > 650 ? 30 : 18),
                            )),
                        Spacer(),
                      ],
                    ),
                    Spacer(),
                  ],
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: Column(
                    children: [
                      Spacer(),
                      Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                offset: Offset(1, -1),
                                color: kadpage.withOpacity(0.5),
                                blurRadius: 8,
                                spreadRadius: 3)
                          ]),
                          height: size.height * 0.5,
                          width: size.width * 0.94,
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text:
                                                  'You have zero key watch short vedio to get ',
                                              style: TextStyle(
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.bold,
                                                  color: kadpage)),
                                          TextSpan(
                                            text: '15',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: kSecondary_color,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: ' keys',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: kadpage),
                                          ),
                                        ],
                                      )),
                                ),
                                Spacer(
                                  flex: 2,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width / 4),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 160,
                                        height: 160,
                                        child: Image.asset(
                                          'assets/img/videoAd.gif',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                              side: BorderSide(
                                                  color: kSecondary_color)),
                                          onPressed: () {
                                            // * navigator
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AdScreen())).then(
                                                (value) => setState(() {}));
                                          },
                                          child: Text(
                                            'video',
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                color: kadpage,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ],
                                  ),
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                              ],
                            ),
                          )),
                      Spacer(
                        flex: 2,
                      ),
                      Center(
                        child: Text(
                          'any time you can get more keys and solving more puzzles by tapping key icon as much as you like',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: kSecondary_color,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                )),
    );
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
              buttonCancelText: Text(
                'Return',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              buttonCancelColor: Colors.green,
              onCancelButtonPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              buttonOkText: Text(
                'Stay',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
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
              buttonOkText: Text(
                'Try again',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              buttonOkColor: Colors.grey,
              buttonCancelText: Text(
                'Return',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onOkButtonPressed: () {
                setState(() {
                  widget.puzzle = widget.rePuzzle;
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

  void saveAndShare(Uint8List bytes) async {
    final directory = await getApplicationDocumentsDirectory();
    final image = File('${directory.path}/flutter.png');
    image.writeAsBytesSync(bytes);

    await Share.shareFiles([
      image.path,
    ],

        //! the link of your app will goes here
        subject: 'From ChessPuzz App ',
        text: Provider.of<ChessPuzzle>(context, listen: false).isWhiteToMove
            ? 'White To Move ${widget.title}'
            : 'Black To Move ${widget.title}');
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
    title: Text(
      "Hint",
      style: TextStyle(color: kSecondary_color, fontSize: 20),
    ),
    content: Text(Provider.of<ChessPuzzle>(context, listen: false).description,
        style: TextStyle(color: kSecondary_color, fontSize: 16)),
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
