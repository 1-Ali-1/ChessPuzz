class ChessPuzzle {
  final String puzzle;
  final bool isSolved;
  final String solution;
  final String description;
  final bool isWhiteToMove;

  ChessPuzzle(
      {this.isWhiteToMove,
      this.description,
      this.puzzle,
      this.isSolved,
      this.solution});
}

List<ChessPuzzle> pin = [
  ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '6k1/p4Np1/1p1qrn1Q/3b4/3P3P/1B4R1/PP3PP1/6K1 b - - 0 1',
      isSolved: false,
      solution: 'e1 h2 g4',
      description: 'pin the rook to gain queen'),
  ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '7r/p5p1/7k/2Np3p/3P4/2P2Q2/Pr5q/R4K2 b - - 0 1',
      isSolved: false,
      solution: 'f8',
      description: 'queen and the king on the same file'),
  ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '4rrk1/p5q1/1P1p4/1PpP3p/2P3p1/1N1P3n/2Q1p1PP/R3R2K b - - 0 1',
      isSolved: false,
      solution: 'a1 a1 f1',
      description: 'try make a queen'),
  ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '4rr1k/1p4p1/p1pp3p/2P5/Q3B3/PPP3Pb/5q1P/R3R2K b - - 0 1',
      isSolved: false,
      solution: 'g2 g2 e1',
      description: 'what happen if we remove the whits bishop'),
];

List<ChessPuzzle> checkMateInOne = [
  ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '6k1/p4Np1/1p1qrn1Q/3b1p2/3P3P/1B4R1/PP3PP1/6K1 b - - 0 1',
      isSolved: false,
      solution: 'e1 h2 g4',
      description: 'pin the rook to gain queen'),
  ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '7r/p5p1/7k/2Np3p/3P4/2P2Q2/Pr5q/R4K2 b - - 0 1',
      isSolved: false,
      solution: 'f8',
      description: 'queen and the king on the same file'),
  ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '4rrk1/p5q1/1P1p4/1PpP3p/2P3p1/1N1P3n/2Q1p1PP/R3R2K b - - 0 1',
      isSolved: false,
      solution: 'a1 a1 f1',
      description: 'try make a queen'),
  ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '4rr1k/1p4p1/p1pp3p/2P5/Q3B3/PPP3Pb/5q1P/R3R2K b - - 0 1',
      isSolved: false,
      solution: 'g2 g2 e1',
      description: 'what happen if we remove the whits bishop'),
];

List<ChessPuzzle> T2019 = [
  ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '6k1/p4Np1/1p1qrn1Q/3b1p2/3P3P/1B4R1/PP3PP1/6K1 b - - 0 1',
      isSolved: false,
      solution: 'e1 h2 g4',
      description: 'pin the rook to gain queen'),
  ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '7r/p5p1/7k/2Np3p/3P4/2P2Q2/Pr5q/R4K2 b - - 0 1',
      isSolved: false,
      solution: 'f8',
      description: 'queen and the king on the same file'),
  ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '4rrk1/p5q1/1P1p4/1PpP3p/2P3p1/1N1P3n/2Q1p1PP/R3R2K b - - 0 1',
      isSolved: false,
      solution: 'a1 a1 f1',
      description: 'try make a queen'),
  ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '4rr1k/1p4p1/p1pp3p/2P5/Q3B3/PPP3Pb/5q1P/R3R2K b - - 0 1',
      isSolved: false,
      solution: 'g2 g2 e1',
      description: 'what happen if we remove the whits bishop'),
];
