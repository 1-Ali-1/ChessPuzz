import 'package:chess_puzz/constants.dart';
import 'package:chess_puzz/models/puzzles.dart';
import 'package:chess_puzz/screens/puzzle.dart';
import 'package:chess_puzz/storage/sharedPrefrences.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/chessPuzzels.dart';

class Levels extends StatefulWidget {
  final String title;
  final List<ChessPuzzle> puzzels;

  Levels({Key key, this.title, this.puzzels}) : super(key: key);

  @override
  _LevelsState createState() => _LevelsState();
}

class _LevelsState extends State<Levels> {
  @override
  Widget build(BuildContext context) {
    List<ChessPuzzle> pin = Provider.of<Puzzles>(context, listen: false).pin;
    List<ChessPuzzle> t2019 =
        Provider.of<Puzzles>(context, listen: false).T2019;
    List<ChessPuzzle> checkMateInOne =
        Provider.of<Puzzles>(context, listen: false).checkMateInOne;
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

    var size = MediaQuery.of(context).size;

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
            size: 650 < size.width ? 40 : 30,
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
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: size.width > 650 ? 5 : 4,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: widget.puzzels.length,
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChangeNotifierProvider.value(
                                    value: widget.title == 'Pin'
                                        ? pin[i]
                                        : widget.title == 'Check Mate In One'
                                            ? checkMateInOne[i]
                                            : widget.title == 'T2019'
                                                ? t2019[i]
                                                : widget.title == 'Double Attack'
                                                    ? forks[i]
                                                    : widget.title == 'T2018'
                                                        ? t2018[i]
                                                        : widget.title == 'T2017'
                                                            ? t2017[i]
                                                            : widget.title == 'T2016'
                                                                ? t2016[i]
                                                                : widget.title == 'Discover Attack'
                                                                    ? discoverAttack[i]
                                                                    : widget.title == 'Sacrifice'
                                                                        ? sacrifice[i]
                                                                        : widget.title == 'Check Mate In Three'
                                                                            ? checkMateInThree[i]
                                                                            : widget.title == 'Check Mate In Four'
                                                                                ? checkMateInFour[i]
                                                                                : widget.title == 'Tactics for beginner'
                                                                                    ? beginnerTactics[i]
                                                                                    : widget.title == 'Master chess puzzles'
                                                                                        ? masterTactics[i]
                                                                                        : widget.title == 'English'
                                                                                            ? english[i]
                                                                                            : widget.title == 'Caro-Kann'
                                                                                                ? caroKann[i]
                                                                                                : widget.title == 'French'
                                                                                                    ? french[i]
                                                                                                    : widget.title == "King's Indian Defense"
                                                                                                        ? kingsIndianDefence[i]
                                                                                                        : widget.title == 'Nimzo-Indian'
                                                                                                            ? nimzoIndian[i]
                                                                                                            : widget.title == 'Ruy Lopez'
                                                                                                                ? ruyLopez[i]
                                                                                                                : checkMateInTwo[i],
                                    child: Puzzle(
                                      puzzle: widget.puzzels[i].puzzle,
                                      rePuzzle: widget.puzzels[i].puzzle,
                                      puzzleNumber: i,
                                      title: widget.title,
                                    )))).then((value) => setState(() {}));
                      },
                      child: FutureBuilder(
                          future: widget.title == 'Pin'
                              ? StoreData().read('Pin$i')
                              : widget.title == 'Check Mate In One'
                                  ? StoreData().read('Check Mate In One$i')
                                  : widget.title == 'T2019'
                                      ? StoreData().read('T2019$i')
                                      : widget.title == 'Double Attack'
                                          ? StoreData().read('Forks$i')
                                          : widget.title == 'T2018'
                                              ? StoreData().read('T2018$i')
                                              : widget.title ==
                                                      'Check Mate In Four'
                                                  ? StoreData().read(
                                                      'Check Mate In Four$i')
                                                  : widget.title ==
                                                          'Check Mate In Three'
                                                      ? StoreData().read(
                                                          'Check Mate In Three$i')
                                                      : widget.title ==
                                                              'Sacrifice'
                                                          ? StoreData().read(
                                                              'Sacrifice$i')
                                                          : widget.title ==
                                                                  'Discover Attack'
                                                              ? StoreData().read(
                                                                  'Discover Attack$i')
                                                              : widget.title ==
                                                                      'T2016'
                                                                  ? StoreData()
                                                                      .read(
                                                                          'T2016$i')
                                                                  : widget.title ==
                                                                          'T2017'
                                                                      ? StoreData()
                                                                          .read(
                                                                              'T2017$i')
                                                                      : widget.title ==
                                                                              'Tactics for beginner'
                                                                          ? StoreData()
                                                                              .read('Tactics for beginner$i')
                                                                          : widget.title == 'Master chess puzzles'
                                                                              ? StoreData().read('Master chess puzzles$i')
                                                                              : widget.title == 'English'
                                                                                  ? StoreData().read('English$i')
                                                                                  : widget.title == 'Caro-Kann'
                                                                                      ? StoreData().read('CaroKann$i')
                                                                                      : widget.title == 'French'
                                                                                          ? StoreData().read('French$i')
                                                                                          : widget.title == "King's Indian Defense"
                                                                                              ? StoreData().read("Kings Indian Defense$i")
                                                                                              : widget.title == 'Nimzo-Indian'
                                                                                                  ? StoreData().read('NimzoIndian$i')
                                                                                                  : widget.title == 'Ruy Lopez'
                                                                                                      ? StoreData().read('Ruy Lopez$i')
                                                                                                      : StoreData().read('Check Mate In Two$i'),
                          builder: (context, snapshot) {
                            return snapshot.connectionState ==
                                    ConnectionState.done
                                ? Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: snapshot.data
                                              ? Colors.green.withOpacity(0.7)
                                              : kSecondary_color
                                                  .withOpacity(0.7),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(17.0))),
                                      height: 50.0,
                                      width: 50.0,
                                      child: Center(
                                          child: Text(
                                        (1 + i).toString(),
                                        style: TextStyle(
                                            color: kPrimary_color,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  )
                                : Center(
                                    child: CircularProgressIndicator(),
                                  );
                          }),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
