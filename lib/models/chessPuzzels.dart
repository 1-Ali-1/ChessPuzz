import 'package:flutter/cupertino.dart';


class ChessPuzzle extends ChangeNotifier {
  final String puzzle;
  final List solution;
  final String description;
  final bool isWhiteToMove;
  String playersName;
  

  ChessPuzzle(
      {this.isWhiteToMove,
      this.description,
      this.puzzle,
      this.solution,
      this.playersName});

      
}
