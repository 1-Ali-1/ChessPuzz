import 'package:chess_puzz/constants.dart';
import 'package:chess_puzz/puzzles.dart';
import 'package:chess_puzz/screens/puzzle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../chessPuzzels.dart';

class Levels extends StatefulWidget {
  final String title;
  final List<ChessPuzzle> puzzels;

  const Levels({Key key, this.title, this.puzzels}) : super(key: key);

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
                                                : t2019[i],
                                        child: Puzzle(
                                          puzzle: widget.puzzels[i].puzzle,
                                          rePuzzle: widget.puzzels[i].puzzle,
                                          puzzleNumber: i,
                                        )))).then((value) => setState(() {}));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: widget.title == 'Pin'
                                ? Provider.of<Puzzles>(context).pin[i].isSolved
                                    ? Colors.green.withOpacity(0.7)
                                    : kSecondary_color.withOpacity(0.7)
                                : widget.title == 'Check Mate In One'
                                    ? Provider.of<Puzzles>(context)
                                            .checkMateInOne[i]
                                            .isSolved
                                        ? Colors.green.withOpacity(0.7)
                                        : kSecondary_color.withOpacity(0.7)
                                    : Provider.of<Puzzles>(context)
                                            .T2019[i]
                                            .isSolved
                                        ? Colors.green.withOpacity(0.7)
                                        : kSecondary_color.withOpacity(0.7),
                            borderRadius:
                                BorderRadius.all(Radius.circular(17.0))),
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
                      ),
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
