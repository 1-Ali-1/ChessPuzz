import 'package:flutter/cupertino.dart';
import 'chessPuzzels.dart';

class Puzzles extends ChangeNotifier {
  List<ChessPuzzle> pin = [
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2b1k3/p2q4/3PnQ2/Pp1B4/1P3P2/6PP/7K/8 w - - 1 1',
      solution: ['c6', 'Qxc6', 'e7'],
      description:
          'there is some check mate threat but blacks queen provent it',
    ),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '6k1/p4Np1/1p1qrn1Q/3b4/3P3P/1B4R1/PP3PP1/6K1 b - - 0 1',
        solution: ['e1', 'Kh2', 'g4'],
        description: 'pin the rook to gain queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1n6/1p6/2k1q1p1/1p2n1Pp/2p4P/2Q2P2/PPP5/2KR4 w - - 0 1',
        isSolved: false,
        solution: ['e1'],
        description: 'night and the queen are on the same file'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '7r/p5p1/7k/2Np3p/3P4/2P2Q2/Pr5q/R4K2 b - - 0 1',
        solution: ['f8', 'Qxf8', 'h1'],
        description: 'queen and the king are on the same file'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '4rr1k/1p4p1/p1pp3p/2P5/Q3B3/PPP3Pb/5q1P/R3R2K b - - 0 1',
        solution: ['g2', 'Bxg2', 'e1'],
        description: 'what happen if we remove whits bishop'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            '4rrk1/pbqn1p1p/1p1b2p1/2pp2N1/2P4P/1P4P1/PB2QP2/1B1R1RK1 w - - 0 1',
        solution: [
          'h5',
          {'from': 'g6', 'to': 'h5'},
          'h7'
        ],
        description: 'there is forced check mate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5rk1/1p1rnqpp/p1pb1p2/P3p3/4P3/1PQNB3/1P3PPP/3R1RK1 w - - 0 1',
        solution: [
          'c5',
          {'from': 'd7', 'to': 'd8'},
          'b7'
        ],
        description: 'check for anoying pin'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            '5rk1/2pbqppp/1r3n2/p2p2BN/1p1P2PP/1P1B1P2/P1PQ4/2K4R w - - 0 1',
        solution: [
          'f6',
          {'from': 'b6', 'to': 'f6'},
          'g5'
        ],
        description: 'try check mate black through you will win a heavy piece'),
  ];

  List<ChessPuzzle> checkMateInOne = [
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '6k1/5ppp/p7/P7/5b2/7P/1r3PP1/3R2K1 w - - 0 1',
        isSolved: false,
        solution: ['d8'],
        description: 'look for back rank'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle:
            'rbb1k1nr/ppqn2pp/2p1p3/3p1pN1/2PP4/1PN1P3/P3BPPP/R1BQ1RK1 b kq - 0 1',
        isSolved: false,
        solution: ['h2'],
        description: 'blacks queen and bishop are on the same diagonal so !!'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '1r2R3/8/2p2k1p/p5p1/Pp1n4/6Pq/QP3P2/4R1K1 b - - 0 1',
        isSolved: false,
        solution: ['f3'],
        description:
            'there is no space for blacks king one check can be game over'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3r2rk/p5pp/1p4n1/3p2N1/2pP4/2P1R3/qPBQ1PPP/6K1 w - - 0 1',
        isSolved: false,
        solution: ['f7'],
        description:
            'there is no space for blacks king one check can be game over'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '2r2rk1/p4pp1/1p3n1p/4pN2/4P3/2q1P3/n1PRQ1PP/3K1R2 b - - 0 1',
        isSolved: false,
        solution: ['a1'],
        description: 'back rank'),
  ];

  List<ChessPuzzle> T2019 = [
    ChessPuzzle(
        playersName: 'Daniil Dubov vs Pierluigi Basso, Skopje, 2019',
        isWhiteToMove: true,
        puzzle: 'r1b1r1k1/1p1pnpPp/3Qp2B/p7/6P1/2N5/PqPK1PBP/7R w - - 0 1',
        isSolved: false,
        solution: ['b1', 'Ra6', 'g3', 'Qa3', 'e4'],
        description:
            'nf6 is check mate the most important thing is how you get there'),
  ];
}
