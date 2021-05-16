import 'package:flutter/cupertino.dart';
import 'chessPuzzels.dart';

class Puzzles extends ChangeNotifier {
  bool sound = true;

  void mute() {
    sound = !sound;
    notifyListeners();
  }

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
        description: 'seek for anoying pin'),
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

  List<ChessPuzzle> forks = [
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6Q1/p4p2/1p3B2/4Pkp1/P5bb/8/1r6/7K w - - 0 1',
      solution: ['c8', 'Kf4', 'c1'],
      description: 'look for the forks',
    ),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '2qrb1k1/1p2bppp/1n2p3/p3P3/3NN3/1P4Q1/PB3PPP/3R2K1 b - - 0 1',
        solution: ['c2'],
        description: 'try get benefit from the whites weak back rank'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '4b2k/2p5/3qnpp1/2N1n2p/p1B1P3/2P1BP2/2r3PP/3RQ1K1 b - - 0 1',
        solution: [
          'f3',
          {'from': 'g2', 'to': 'f3'},
          'h2',
          'Kf1',
          'g2'
        ],
        description: 'queen and the king are ready to be forked'),
  ];

  List<ChessPuzzle> discoverAttack = [
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '4b1k1/4rppp/rp1q4/3Bn3/2PQ4/P4RP1/4P2P/5RK1 w - - 0 1',
      solution: [
        'f7',
        {'from': 'e5', 'to': 'f7'},
        'd6',
        'Nxd6',
        'f8'
      ],
      description: 'blacks queen is undefended',
    ),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2r1r2k/1b3ppp/pqN1pn2/1p6/PQ6/2R1PB2/1P3PPP/5RK1 w - - 0 1',
        solution: [
          'a5',
          {'from': 'b6', 'to': 'c7'},
          'a7'
        ],
        description: 'blacks queen restricted'),
  ];

  List<ChessPuzzle> sacrifice = [
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2q4r/1Q2nk2/1R6/p4pR1/4pP2/7P/6P1/6K1 w - - 0 1',
      solution: [
        'g7',
      ],
      description: 'sacrifice to checkmate king',
    ),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'R7/2q2ppk/3bp2p/3p4/1n1P1N2/4PNP1/2r2P1P/3Q2K1 w - - 0 1',
        solution: [
          'g5',
          {'from': 'h6', 'to': 'g5'},
          'h5'
        ],
        description: 'the solution of this puzzle must end with checkmate'),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '4k3/7p/b5p1/8/7N/2B2pbP/P4rP1/2R3KR b - - 0 1',
      solution: [
        'g2',
        {'from': 'h4', 'to': 'g2'},
        'f2'
      ],
      description: 'Black mates in 2',
    ),
  ];

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////

  List<ChessPuzzle> checkMateInOne = [
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '6k1/5ppp/p7/P7/5b2/7P/1r3PP1/3R2K1 w - - 0 1',
        solution: ['d8'],
        description: 'look for back rank'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle:
            'rbb1k1nr/ppqn2pp/2p1p3/3p1pN1/2PP4/1PN1P3/P3BPPP/R1BQ1RK1 b kq - 0 1',
        solution: ['h2'],
        description: 'blacks queen and bishop are on the same diagonal so !!'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '1r2R3/8/2p2k1p/p5p1/Pp1n4/6Pq/QP3P2/4R1K1 b - - 0 1',
        solution: ['f3'],
        description:
            'there is no space for blacks king one check can be game over'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3r2rk/p5pp/1p4n1/3p2N1/2pP4/2P1R3/qPBQ1PPP/6K1 w - - 0 1',
        solution: ['f7'],
        description:
            'there is no space for blacks king one check can be game over'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '2r2rk1/p4pp1/1p3n1p/4pN2/4P3/2q1P3/n1PRQ1PP/3K1R2 b - - 0 1',
        solution: ['a1'],
        description: 'back rank'),
  ];

  List<ChessPuzzle> checkMateInTwo = [
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4r1rk/5K1b/7R/R7/8/8/8/8 w - - 0 1',
        solution: ['h7', 'Kxh7', 'h5'],
        description: 'simple try remember rook and king checkmate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4rkr1/1R1R4/4bK2/8/8/8/8/8 w - - 0 1',
        solution: ['f7', 'Bxf7', 'f7'],
        description: 'blacks two rook will help us !!'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2k5/1q4b1/3K4/8/7R/8/7R/8 w - - 0 1',
        solution: ['h8', 'Bxh8', 'h8'],
        description: 'thanks for the blacks queen !'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'kr6/1p6/p5R1/8/1q6/8/Q7/2K5 w - - 0 1',
        solution: [
          'a6',
          {'from': 'b7', 'to': 'a6'},
          'a6'
        ],
        description: 'do you know queens are strong piece'),
  ];

  List<ChessPuzzle> checkMateInThree = [
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1rb5/1p2k2r/p5n1/2p1pp2/2B5/6P1/PPPB1PP1/2KR4 w - - 0 1',
        solution: [
          'g5',
          {'from': 'e7', 'to': 'f8'},
          'd8',
          {'from': 'f8', 'to': 'g7'},
          'g8'
        ],
        description: 'it is more easier to checkmate king in the corner'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1b1k3/pp4pp/2n1p2b/2p1q1N1/8/1PP1B1P1/P2Q2BP/5RK1 w - - 0 1',
        solution: [
          'c6',
          {'from': 'b7', 'to': 'c6'},
          'f8',
          'Kxf8',
          'd8'
        ],
        description:
            'firstly take that annoying knight out of the board then check mate him'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5rrk/2n2p1p/3q1PpQ/p2pNnR1/2pP2N1/P1P3R1/5P1P/7K w - - 0 1',
        solution: ['h7', 'Kxh7', 'h3', 'Nh6', 'h6'],
        description: 'open up the file'),
  ];

  List<ChessPuzzle> checkMateInFour = [
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r5rk/2p1Nppp/3p3P/pp2p1P1/4P3/2qnPQK1/8/R6R w - - 0 1',
        solution: [
          'g7',
          {'from': 'g8', 'to': 'g7'},
          'h7',
          {'from': 'g7', 'to': 'h7'},
          'f6',
          {'from': 'h7', 'to': 'g7'},
          'h1'
        ],
        description: 'there is very critical sacrifice'),
  ];
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

  List<ChessPuzzle> T2019 = [
    ChessPuzzle(
        playersName: 'Daniil Dubov vs Pierluigi Basso, Skopje, 2019',
        isWhiteToMove: true,
        puzzle: 'r1b1r1k1/1p1pnpPp/3Qp2B/p7/6P1/2N5/PqPK1PBP/7R w - - 0 1',
        solution: ['b1', 'Ra6', 'g3', 'Qa3', 'e4'],
        description:
            'one check with night is a check mate the most important things how you get there'),
    ChessPuzzle(
        playersName: 'Boris Grachev vs Ramil Faizrakhmanov, Sochi, 2019',
        isWhiteToMove: true,
        puzzle: '4rr1k/1pb1R2p/p4p2/2P3N1/1P4Q1/P7/1B1q1PPP/6K1 w - - 0 1',
        solution: ['f7', 'Rxf7', 'e8'],
        description: 'blacks king is stuck seek for check mate'),
  ];

  List<ChessPuzzle> T2018 = [
    ChessPuzzle(
        playersName:
            'Gerardo Artola Pola vs Jonathan Arnott, Porto Carras, 2018',
        isWhiteToMove: false,
        puzzle: 'r1b2rk1/ppR3pp/4pq2/1B1pn3/3b4/5NN1/P2B1PPP/3QK2R b K - 0 1',
        solution: [
          'f3',
          {'from': 'g2', 'to': 'f3'},
          'e5',
          'Qe2',
          'c7'
        ],
        description: 'there is undefended rook'),
    ChessPuzzle(
        playersName: 'Hao Wang vs Vladimir Potkin, Porto Carras, 2018',
        isWhiteToMove: true,
        puzzle: '5rk1/R3r1p1/3p3p/3bqp2/4p3/2R1P1PP/5P2/2Q2BK1 w - - 0 1',
        solution: ['a5', 'Kh7', 'd2'],
        description: 'blacks bishop will be targeted'),
  ];

  List<ChessPuzzle> T2017 = [
    ChessPuzzle(
        playersName: 'Tamas Petenyi vs Aryan Tari, Antalya, 2017',
        isWhiteToMove: true,
        puzzle: '1k4nr/2p3pp/2pb1p2/8/RrN5/6P1/1P2PP1P/2B2RK1 w - - 0 1',
        solution: ['d6', 'Rxa4', 'f7'],
        description: 'there is one rook stuck in the right corner'),
  ];

  List<ChessPuzzle> T2016 = [
    ChessPuzzle(
        playersName: 'Hikaru Nakamura vs Jeffrey Xiong, Saint Louis, 4/24/2016',
        isWhiteToMove: true,
        puzzle: '4n1k1/6qp/1p1pp1p1/2p3P1/2PN4/2B5/1P3QPP/1b4K1 w - - 0 1',
        solution: [
          'f5',
        ],
        description: "we don't want pawn we need check mate or queen"),
  ];
}
