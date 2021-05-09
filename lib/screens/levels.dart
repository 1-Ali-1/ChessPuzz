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
  @override
  Widget build(BuildContext context) {
    List<ChessPuzzle> pin = Provider.of<Puzzles>(context, listen: false).pin;
    List<ChessPuzzle> t2019 =
        Provider.of<Puzzles>(context, listen: false).T2019;
    List<ChessPuzzle> checkMateInOne =
        Provider.of<Puzzles>(context, listen: false).checkMateInOne;
         List<ChessPuzzle> t2018 = Provider.of<Puzzles>(context, listen: false).T2018;
    List<ChessPuzzle> forks =
        Provider.of<Puzzles>(context, listen: false).forks;
    List<ChessPuzzle> checkMateInTwo =
        Provider.of<Puzzles>(context, listen: false).checkMateInTwo;

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
                    crossAxisCount: 4,
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
                                builder: (context) =>
                                    ChangeNotifierProvider.value(
                                        value: widget.title == 'Pin'
                                            ? pin[i]
                                            : widget.title ==
                                                    'Check Mate In One'
                                                ? checkMateInOne[i]
                                                :widget.title == 'T2019' ? t2019[i]: widget.title == 'Forks' ? forks[i]: widget.title == 'T2018' ? t2018[i] : checkMateInTwo[i],
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
                                  :widget.title == 'T2019' ? StoreData().read('T2019$i') : widget.title == 'Forks' ? StoreData().read('Forks$i') : widget.title == 'T2018' ? StoreData().read('T2018$i'):StoreData().read('Check Mate In Two$i'),
                          builder: (context, snapshot) {
                            return snapshot.connectionState ==
                                    ConnectionState.done
                                ? Container(
                                    decoration: BoxDecoration(
                                        color: snapshot.data
                                            ? Colors.green.withOpacity(0.7)
                                            : kSecondary_color.withOpacity(0.7),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(17.0))),
                                    height: 50.0,
                                    width: 50.0,
                                    child: Center(
                                        child: Text(
                                      (1 + i).toString(),
                                      style: TextStyle(
                                          color: kPrimary_color,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    )),
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
