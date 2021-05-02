import 'package:flutter/cupertino.dart';

class ChessPuzzle extends ChangeNotifier {
  final String puzzle;
  bool isSolved;
  final List solution;
  final String description;
  final bool isWhiteToMove;
  String playersName;
  ChessPuzzle(
      {this.isWhiteToMove,
      this.description,
      this.puzzle,
      this.isSolved = false,
      this.solution,
      this.playersName});

  void solved() {
    isSolved = true;
    notifyListeners();
  }
}
