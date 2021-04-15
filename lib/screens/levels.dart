import 'package:chess_puzz/constants.dart';
import 'package:chess_puzz/screens/puzzle.dart';
import 'package:flutter/material.dart';

import '../chessPuzzels.dart';

class Levels extends StatelessWidget {
  final String title;
  final List<ChessPuzzle> puzzels;
  const Levels({Key key, this.title, this.puzzels}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
          title,
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
                  itemCount: puzzels.length,
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Puzzle(
                                      isWhiteToMove: puzzels[i].isWhiteToMove,
                                      puzzle: puzzels[i].puzzle,
                                      description: puzzels[i].description,
                                      solution: puzzels[i].solution,
                                      isSolved: puzzels[i].isSolved,
                                      puzzleNumber: i,
                                    )));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: kSecondary_color.withOpacity(0.7),
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
