import 'dart:math';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'chessPuzzels.dart';

class Puzzles extends ChangeNotifier {
  bool notification = true;
  bool soundFx = true;
  bool music = true;
  int randomIndex = Random().nextInt(6);

  void muteFx() {
    soundFx = !soundFx;
    notifyListeners();
  }

  void muteMusic() {
    music = !music;
    notifyListeners();
  }

  void unMute() {
    notification = !notification;
    notifyListeners();
  }

  List<ChessPuzzle> pin = [
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2b1k3/p2q4/3PnQ2/Pp1B4/1P3P2/6PP/7K/8 w - - 1 1',
      solution: [
        ['d5', 'c6'],
        'Qxc6',
        ['f6', 'e7']
      ],
      description: 'There is a checkmate threat but blacks queen prevent it',
    ),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '6k1/p4Np1/1p1qrn1Q/3b4/3P3P/1B4R1/PP3PP1/6K1 b - - 0 1',
        solution: [
          ['e6', 'e1'],
          'Kh2',
          ['f6', 'g4']
        ],
        description: 'Pin the rook to gain queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1n6/1p6/2k1q1p1/1p2n1Pp/2p4P/2Q2P2/PPP5/2KR4 w - - 0 1',
        solution: [
          ['d1', 'e1']
        ],
        description: 'Night and the queen are on the same file'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '7r/p5p1/7k/2Np3p/3P4/2P2Q2/Pr5q/R4K2 b - - 0 1',
        solution: [
          ['h8', 'f8'],
          'Qxf8',
          ['h2', 'h1']
        ],
        description:
            'Queen and the king are on the same file move away whites queen'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '4rr1k/1p4p1/p1pp3p/2P5/Q3B3/PPP3Pb/5q1P/R3R2K b - - 0 1',
        solution: [
          ['h3', 'g2'],
          'Bxg2',
          ['e8', 'e1']
        ],
        description: 'Move away whits bishop'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            '4rrk1/pbqn1p1p/1p1b2p1/2pp2N1/2P4P/1P4P1/PB2QP2/1B1R1RK1 w - - 0 1',
        solution: [
          ['e2', 'h5'],
          {'from': 'g6', 'to': 'h5'},
          ['b1', 'h7']
        ],
        description: 'There is a forced checkmate move Queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5rk1/1p1rnqpp/p1pb1p2/P3p3/4P3/1PQNB3/1P3PPP/3R1RK1 w - - 0 1',
        solution: [
          ['d3', 'c5'],
          {'from': 'd7', 'to': 'd8'},
          ['c5', 'b7']
        ],
        description: 'Search for annoying pin'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            '5rk1/2pbqppp/1r3n2/p2p2BN/1p1P2PP/1P1B1P2/P1PQ4/2K4R w - - 0 1',
        solution: [
          ['g5', 'f6'],
          {'from': 'b6', 'to': 'f6'},
          ['d2', 'g5']
        ],
        description:
            'First, exchange your bishop for his knight then Try checkmate black'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r7/1p1qnQpk/1pp5/3pP1B1/3P2b1/7P/PP6/5RK1 w - - 0 1',
        solution: [
          ['f1', 'f6'],
          'Ng8',
          ['f7', 'g6'],
          'Kh8',
          ['f6', 'f7']
        ],
        description:
            'There is a pinned pawn try to take advantage of it and join rook to the party'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3r2k1/2qn1p1p/4p1pB/4P2P/7Q/3R4/1r3PP1/3R2K1 w - - 0 1',
        solution: [
          ['h4', 'f6'],
          'Nxf6',
          ['d3', 'd8']
        ],
        description: 'Checkmate in 2, use queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3rk2r/1q2bpp1/2p2n1p/1p3Q2/3P1B2/5N2/1P3PPP/R3R1K1 w k - 0 1',
        solution: [
          ['e1', 'e7'],
          'Kxe7',
          ['a1', 'e1'],
        ],
        description: 'King in the center attack on it'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1b3k1/p1q2r1p/2p1p2Q/5p1p/2B5/2N2P2/PPP5/1K1R4 w - - 0 1',
        solution: [
          ['h6', 'g5'],
          'Rg7',
          ['d1', 'd8'],
          'Kf7',
          ['g5', 'f5']
        ],
        description:
            "Don't think about check the king with a rook in the first move"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '6k1/p1p2rb1/4Q2R/5p2/2N4P/1P1qP1P1/PB5K/8 w - - 0 1',
        solution: [
          ['e6', 'e8'],
          'Rf8',
          ['h6', 'h8'],
        ],
        description:
            'Your bishop is so strong that can help you with pinning blacks bishop'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3qn1k1/2r1r1bN/1pp3Q1/p2pPN2/P2P4/1P4P1/5PK1/7R w - - 0 1',
        solution: [
          ['f5', 'h6'],
          'Kh8',
          ['h7', 'g5'],
        ],
        description: 'Two first moves are with both knights '),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/1R3p1p/4pk2/8/PP3pn1/8/5PPP/2r2BK1 b - - 0 34',
        solution: [
          ['g4', 'e3'],
          {'from': 'f2', 'to': 'e3'},
          ['f4', 'e3'],
          'g3',
          ['e3', 'e2']
        ],
        description:
            'This is very tricky whites bishop is pinned so try to attack it'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3r1rk1/pp2q2p/2p1bp2/4P2Q/8/P1N1R3/1P4PP/5R1K w - - 0 28',
        solution: [
          ['e5', 'f6'],
          'Rxf6',
          ['h5', 'g5'],
          'Kf7',
          ['f1', 'f6'],
          'Qxf6',
          ['e3', 'f3']
        ],
        description:
            'At the end blacks queen will gone.  First move is with pawn not rook'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1r3k1/5pbp/1q2p1p1/2npP3/p2N1B2/Q3P3/P4PPP/R1R3K1 w - - 0 22',
        solution: [
          ['a1', 'b1'],
          'Qc7',
          ['d4', 'b5'],
          'Qc6',
          ['b5', 'd6'],
          'Rc7',
          ['b1', 'b5']
        ],
        description:
            'How can white take advantages of the exposed queen and the pinned knight?'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'q5k1/5pp1/8/1pb1P3/2p4p/2P2r1P/1P3PQ1/1N3R1K b - - 0 1',
        solution: [
          ['f3', 'h3'],
          'Kg1',
          ['h3', 'g3'],
        ],
        description:
            "don't afraid of losing your rook because of great support from back by queen and bishop that pinned everything"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4r1r1/2p5/1p1kn3/p1p1R1p1/P6p/5N1P/1PP1R1PK/8 w - - 0 1',
        solution: [
          ['f3', 'g5'],
        ],
        description:
            'There is already a pinned knight you just needs to attack it'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1r5k/1P3pp1/2b4p/8/8/4BPP1/5P2/4R1K1 w - - 0 1',
        solution: [
          ['e1', 'c1'],
          'Bxb7',
          ['c1', 'b1'],
          'g5',
          ['e3', 'a7'],
        ],
        description:
            'Forget about your pawn unfortunately he can not become queen one day but he can help you with pinning the bishop'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4k2r/4np1p/1pq1pBp1/p1p1P3/Q7/2P5/PP4PP/3R2K1 w - - 0 1',
        solution: [
          ['d1', 'd8'],
          'Kxd8',
          ['a4', 'c6'],
        ],
        description:
            'Trade your rook for a queen, Pin blacks knight to take queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            'r4r2/1bn4k/1qn1ppp1/p1ppP3/1p1P4/2PBB3/PP1N2PP/R2Q1RK1 w - - 0 1',
        solution: [
          ['d1', 'h5'],
          'Kg7',
          ['h5', 'g6'],
          'Kh8',
          ['g6', 'h7']
        ],
        description:
            'You can checkmate in 3 , by using the power of the pin use your queen'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '4qr2/1p4pk/pn5p/2p4N/P5P1/2PR3P/1P6/1K4Q1 b - - 0 1',
        solution: [
          ['e8', 'e4'],
          'Qd1',
          ['c5', 'c4'],
          'Ng3',
          ['e4', 'd3'],
        ],
        description: 'Move your queen to take whits rook out of the game'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle:
            '2nq1r1k/1p3p1p/2p3p1/1PPpPp2/3P1P1b/r3B2Q/4NP1P/1R4RK b Qq - 0 1',
        solution: [
          ['h4', 'f2'],
        ],
        description: 'Move the bishop'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3b1rk1/5pp1/p3p2p/4P3/1Q3N1q/8/PPP5/1K3R2 w - - 0 1',
        solution: [
          ['b4', 'f8'],
          'Kxf8',
          ['f4', 'g6']
        ],
        description:
            'Sacrifice your queen to get rook and queen with beautiful forks with the help of pin'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/P4k2/r5p1/8/3B2p1/5pP1/3b3P/5R1K w - - 0 1',
        solution: [
          ['f1', 'a1'],
          'Ba5',
          ['d4', 'b6'],
          'Rxb6',
          ['a7', 'a8']
        ],
        description: 'Go for queening'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '5rk1/1pp2ppp/r7/p1q1n3/2PRQ3/P4P2/1P2PP1P/4KB1R b - - 0 1',
        solution: [
          ['e5', 'f3'],
          {'from': 'e2', 'to': 'f3'},
          ['a6', 'e6']
        ],
        description: 'Sack your knight to pin the queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2r3k1/R5pp/2q2n2/3p4/8/2Q3P1/1P3PB1/6K1 w - - 0 1',
        solution: [
          ['g2', 'd5'],
          'Qxd5',
          ['c3', 'c8']
        ],
        description:
            'Blacks knight is pinned because of checkmate threats and also queen is pinned to rook'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5rk1/r2nqppp/pp6/n2Rp3/1p2P3/2P1B2P/P1B1QPP1/3R2K1 w Qq - 0 1',
        solution: [
          ['d5', 'a5'],
          {'from': 'b6', 'to': 'a5'},
          ['e3', 'a7']
        ],
        description: 'There is a pinned pawn to rook'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4kb1r/pp1qnppp/8/1Q1NP1B1/8/P7/1P3PPP/2R3K1 w - - 0 1',
        solution: [
          ['c1', 'c8'],
          'Nxc8',
          ['d5', 'c7']
        ],
        description: 'This one is checkmate in two with the help of pin'),
  ];

  List<ChessPuzzle> forks = [
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6Q1/p4p2/1p3B2/4Pkp1/P5bb/8/1r6/7K w - - 0 1',
      solution: [
        ['g8', 'c8'],
        'Kf4',
        ['c8', 'c1']
      ],
      description: 'Use Queen',
    ),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '2qrb1k1/1p2bppp/1n2p3/p3P3/3NN3/1P4Q1/PB3PPP/3R2K1 b - - 0 1',
        solution: [
          ['c8', 'c2']
        ],
        description: 'Try to get benefit from the whites weak back rank'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '4b2k/2p5/3qnpp1/2N1n2p/p1B1P3/2P1BP2/2r3PP/3RQ1K1 b - - 0 1',
        solution: [
          ['e5', 'f3'],
          {'from': 'g2', 'to': 'f3'},
          ['d6', 'h2'],
          'Kf1',
          ['h2', 'g2']
        ],
        description:
            'Do double attack With knight, you can fork queen and the king and also checkmate threat'),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle:
          '3r1r1k/p2q1p1n/1p1N3p/2p1bp1n/P2p3N/8/1PPQ1B1P/1K1R2R1 w - - 0 1',
      solution: [
        ['d6', 'f7'],
        'Qxf7',
        ['h4', 'g6']
      ],
      description:
          'One of your knights will die and let the other knight to do the job to get blacks queen',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6rk/pp2pp1p/3p2pQ/2qP2Pn/5r2/1PP3N1/P7/1K1R3R w - - 0 1',
      solution: [
        ['g3', 'h5'],
        {'from': 'g6', 'to': 'h5'},
        ['g5', 'g6']
      ],
      description:
          'After exchanging the knights then you have a move which is simply a double attack threatening rook or checkmate',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle:
          '2rr2k1/1p1q1b2/p1n2pp1/P1Qp3p/2pP3P/2P1N1P1/2P1RPBK/4R3 w - - 0 1',
      solution: [
        ['e3', 'd5'],
        'Qd6',
        ['e2', 'e8'],
        'Bxe8',
        ['e1', 'e8']
      ],
      description:
          'Take that pawn with knight then the other 2 moves are both with rooks',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5rk1/5pp1/1q5p/3nP2P/4N3/1b4Q1/1P2BR2/6K1 w - - 0 1',
      solution: [
        ['e4', 'f6'],
      ],
      description:
          'Destruct the pawn structure of king side to checkmate blacks king',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2r3k1/2P2pbp/1q2p1p1/1r6/p3NP2/3Q4/P3N1PP/2R4K w - - 0 1',
      solution: [
        ['d3', 'd7'],
        'Qb7',
        ['e4', 'd6']
      ],
      description:
          'There is no directly knight forks here but you have to work for it First, move queen',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '7k/ppr3pp/1np1rq2/8/3P4/5N1P/P1Q2PP1/3RR1K1 w - - 0 1',
      solution: [
        ['f3', 'g5'],
      ],
      description: 'Knight',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '4rbk1/5np1/1p2p2p/5p1Q/1PP5/2Bq1NP1/5P1P/4R1K1 w - - 0 1',
      solution: [
        ['h5', 'f7'],
      ],
      description: 'Royal Knight forks it means you fork king and queen',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '3r1rnk/1b2qp1p/p5p1/1pn1p3/4P1QN/P1NB3R/1PP3PP/5R1K w - - 0 1',
      solution: [
        ['f1', 'f7'],
        'Rxf7',
        ['h4', 'g6']
      ],
      description:
          'There is a knight fork with help of a rook that pinned a pawn but at first, you have to Sack one of your rooks',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r3r3/1pp3kp/2bpnpp1/p2B4/2PP4/PPN3P1/5P1P/1R1R2K1 w - - 0 1',
      solution: [
        ['d5', 'e6'],
        'Rxe6',
        ['d4', 'd5']
      ],
      description: 'Pawn forks are considered double attacks',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '4rrk1/1p1n2np/p2p4/2pP4/P1P3P1/2P4Q/2q3B1/2B1RRK1 b - - 0 1',
      solution: [
        ['e8', 'e1'],
        'Rxe1',
        ['c2', 'f2'],
      ],
      description: 'You will win a rook',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '1r4k1/p2n1pp1/2b1p2p/2p5/2P5/P2RPNP1/4BP1P/6K1 b - - 0 1',
      solution: [
        ['c6', 'f3'],
        'Bxf3',
        ['d7', 'e5']
      ],
      description: 'Knight forks',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '2r1n1k1/1bq2pp1/p3p2p/4n3/1P1R1Q2/2N2N1P/1P3PP1/1B4K1 b - - 0 1',
      solution: [
        ['e5', 'f3'],
        {'from': 'g2', 'to': 'f3'},
        ['e6', 'e5']
      ],
      description: 'Pawn forks after exchanging knights',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '4rrk1/R2Q2p1/4p2R/4p3/4P3/5P2/1PP3q1/1K6 b - - 0 1',
      solution: [
        ['g2', 'g1'],
        'Ka2',
        ['g1', 'a7'],
        'Qxa7',
        ['e8', 'a8']
      ],
      description:
          'There is a way you can take rook without being checkmated the first move include check',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2r2rk1/4qp2/p3pp1p/npb5/8/2N3P1/PP2PPBP/1Q1R1RK1 w - - 0 1',
      solution: [
        ['c3', 'e4'],
        'Ba7',
        ['d1', 'd7'],
        'Qxd7',
        ['e4', 'f6']
      ],
      description:
          'After one move with knight and rook then knight forks will happen',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '1r6/p5pk/4p1r1/2N1p2p/1P1bP2q/8/P1R1Q1PP/5R1K w - - 0 1',
      solution: [
        ['c5', 'd7'],
        'Rd8',
        ['d7', 'f8']
      ],
      description: 'Both moves with knight',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5b2/5k2/p4np1/5r2/2pq1N2/7P/P2N4/4QR1K w - - 0 1',
      solution: [
        ['e1', 'e6'],
        'Kg7',
        ['e6', 'f5'],
        {'from': 'g6', 'to': 'f5'},
        ['f4', 'e6']
      ],
      description: 'First move is with queen then sack it',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'rn5r/p1q1nkpp/bp2p3/3pPp2/3P1N2/P1P3Q1/5PPP/R1B1KB1R w KQ - 0 1',
      solution: [
        ['g3', 'g7'],
      ],
      description: 'Knight forks',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/1p4pp/2qrnp2/3p4/1Q1B4/4NN1P/P4PPK/8 w - - 0 1',
      solution: [
        ['e3', 'f5'],
        'Rd7',
        ['f5', 'e7']
      ],
      description: 'knight forks will happen After one move',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '3bkn1r/1b6/p1q1pp2/1p5p/7P/2N1BN2/PPP2QP1/1K1R4 w - - 0 1',
      solution: [
        ['d1', 'd8'],
        'Kxd8',
        ['f3', 'd4'],
        'Qxg2',
        ['f2', 'f6']
      ],
      description: 'Sack the rook and Move knight to give queen more space',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '3r1k2/RR3bp1/2Bn1p2/1PN5/3Pp1r1/8/7K/8 w - - 0 1',
      solution: [
        ['b7', 'f7'],
        'Nxf7',
        ['c5', 'e6']
      ],
      description: 'knight forks after sacking something',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle:
          'r2q1rk1/pp1n1pb1/2ppb1p1/8/2P1PP1p/2N2N1P/PP2B1P1/R2Q1RK1 b - - 0 1',
      solution: [
        ['d8', 'b6'],
        'Kh1',
        ['b6', 'b2'],
        'Na4',
        ['b2', 'a1']
      ],
      description:
          'Whites king is exposed to check do not miss this chance to check the king',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'Q7/p4rkp/8/2p1q1N1/P1P5/8/8/7K w - - 0 1',
      solution: [
        ['a8', 'h8'],
        'Kxh8',
        ['g5', 'f7']
      ],
      description: 'Your knight can remove them all not only the rook',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/1b1N2b1/1pn1p2r/pB1p1p2/P2P1N2/4P1R1/1P3PK1/8 w - - 0 1',
      solution: [
        ['f4', 'h5'],
        'Rxh5',
        ['d7', 'f6']
      ],
      description: 'knight forks every where',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '3r4/4k1pp/p4p2/1p1pP3/1b6/1P3N2/P1R1KPPP/8 w - - 0 1',
      solution: [
        ['f3', 'd4'],
        'Kd7',
        ['d4', 'c6']
      ],
      description: 'Your knight is unstoppable',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: 'r1b2rk1/pp4pp/2p2b2/2Ppq3/1P1N1Pn1/P2B4/1B4PP/R2Q1RK1 b - - 0 1',
      solution: [
        ['e5', 'e3'],
        'Kh1',
        ['g4', 'f2']
      ],
      description: 'Use your queen and let the knight do the rest',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '7k/6p1/1pqNrp1p/4P3/p2p1P2/Pn6/1P2Q1PP/3R3K w - - 0 1',
      solution: [
        ['d6', 'f7'],
        'Kg8',
        ['f7', 'd8']
      ],
      description: 'knight forks after first move',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '3rr1k1/4nppp/p5b1/2q5/2PN4/1PB1R1P1/P2P1QBP/6K1 w - - 0 1',
      solution: [
        ['d4', 'c6'],
        'Rd7',
        ['c3', 'b4']
      ],
      description: 'First move is with Knight and then bishop',
    ),
  ];

  List<ChessPuzzle> discoverAttack = [
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '4b1k1/4rppp/rp1q4/3Bn3/2PQ4/P4RP1/4P2P/5RK1 w - - 0 1',
      solution: [
        ['d5', 'f7'],
        {'from': 'e5', 'to': 'f7'},
        ['d4', 'd6'],
        'Nxd6',
        ['f3', 'f8']
      ],
      description: 'Blacks queen is undefended',
    ),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2r1r2k/1b3ppp/pqN1pn2/1p6/PQ6/2R1PB2/1P3PPP/5RK1 w - - 0 1',
        solution: [
          ['a4', 'a5'],
          {'from': 'b6', 'to': 'c7'},
          ['c6', 'a7']
        ],
        description: 'blacks queen restricted First move is with a pawn'),

    ///
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '2b1k2B/5p2/p1pqp3/4nP1p/4P3/2N5/P1r1BQ1P/4K1R1 b - - 0 1',
        solution: [
          ['c2', 'c1'],
          'Nd1',
          ['c1', 'd1'],
          'Bxd1',
          ['e5', 'd3']
        ],
        description:
            'Whites bishop is the only defender that prevent knight forks so remove it First move is with rook'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '4q1k1/pppb1pbp/1n1p2pB/7n/2PP3N/1PN4P/P1BQ1PP1/6K1 b - - 0 1',
        solution: [
          ['g7', 'h6'],
          'Qxh6',
          ['e8', 'e1'],
          'Kh2',
          ['e1', 'c3']
        ],
        description: 'exchanging bishops will help you win a knight'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2r1r2k/pp4pp/1np1N3/4qp2/7P/PQ2P1P1/1P3P2/2RR2K1 w - - 0 1',
        solution: [
          ['e6', 'g5'],
          {'from': 'e5', 'to': 'e7'},
          ['g5', 'f7'],
          'Kg8',
          ['f7', 'd6']
        ],
        description: "Nothing can't prevent knight forks"),

//////////////////////
//////////////////////

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r4r2/1b2b1kp/p3P1p1/2pnP1B1/Bp6/8/PPP3PP/3R1RK1 w - - 0 1',
        solution: [
          ['g5', 'e7'],
          {'from': 'd5', 'to': 'e7'},
          ['d1', 'd7']
        ],
        description:
            'Rook when go to the 7th rank or 8th rank it will be a wild pig because of its danger and power '),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            'r1bq1rk1/p4ppp/2p1n3/3pb3/1P6/P2B1QN1/2P2PPP/R1B2RK1 w - - 0 1',
        solution: [
          ['f3', 'f5'],
        ],
        description:
            'undefended bishop and think about checkmate threat the move is with queen'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            '1rb2rk1/2q2pbp/pp1p2p1/8/P2B2n1/2N1Q3/1PP1BPPP/3R1RK1 w - - 0 1',
        solution: [
          ['e2', 'g4'],
          {'from': 'c8', 'to': 'g4'},
          ['d4', 'g7'],
          'Kxg7',
          ['e3', 'd4']
        ],
        description:
            'After a lot of exchanges, you realize that you have won something '),

    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/1N2kp2/2p3p1/p3P2p/2P1KP2/n1r3P1/7P/R7 b - - 0 1',
        solution: [
          ['a3', 'c2'],
          {'from': 'a1', 'to': 'b1'},
          ['c3', 'e3']
        ],
        description: 'First move is with Knight'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3qkr2/pp3pQp/3p1Pp1/4pb2/2r5/5NP1/PPP4P/1K1RR3 w - - 0 1',
        solution: [
          ['e1', 'e5'],
          {'from': 'e8', 'to': 'd7'},
          ['e5', 'f5'],
          {'from': 'g6', 'to': 'f5'},
          ['f3', 'e5']
        ],
        description:
            'First move is with rook and then you have to sack the rook and go for knight forks'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r3r3/pbp1kp2/2p2bpp/4p3/4N3/5B2/PPP2PPP/2KRR3 w - - 0 1',
        solution: [
          ['e4', 'c5'],
          {'from': 'a8', 'to': 'b8'},
          ['c5', 'b7'],
          'Rxb7',
          ['f3', 'c6']
        ],
        description: 'Move away blacks white-squared bishop'),

    ChessPuzzle(
        isWhiteToMove: false,
        puzzle:
            '3rr1k1/pb3pb1/1p3n1p/3n1Qp1/2NP4/PP3pP1/1B4BP/3RR1NK b - - 0 1',
        solution: [
          ['f3', 'g2'],
          {'from': 'h1', 'to': 'g2'},
          ['d5', 'e3']
        ],
        description:
            'Double check and discover check with the help of blacks white-squared bishop'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '3r1r1k/p1p3pp/6q1/2P5/1P1N1p1n/PQ1n1P2/1B1R2PP/R5K1 b - - 0 1',
        solution: [
          ['d8', 'd4'],
          {'from': 'b2', 'to': 'd4'},
          ['h4', 'f3']
        ],
        description:
            'A question for you do the knight fork of the king and the rook in the first move is correct?'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1r3rk1/5ppp/4pn2/1qp5/7Q/2B3P1/1Pn1PPBP/R2R2K1 w - - 0 1',
        solution: [
          ['c3', 'f6'],
          {'from': 'g7', 'to': 'f6'},
          ['g2', 'e4'],
        ],
        description:
            'White-squared bishop will be the key in this position but after some moves'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r3r2k/pp5p/2pRn1p1/4N3/1P2qpP1/8/PB3P1P/Q5K1 w - - 0 1',
        solution: [
          ['e5', 'd7'],
          {'from': 'h8', 'to': 'g8'},
          ['d7', 'f6'],
        ],
        description: '2 moves both with knight'),

    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/ppkbQ2p/1q1p2B1/2n1p3/2P5/2P5/P5PP/3R2K1 b - - 0 1',
        solution: [
          ['c5', 'd3'],
          {'from': 'g1', 'to': 'h1'},
          ['d3', 'f2']
        ],
        description: 'Discover check'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5r2/R5pk/3ppnnp/1p2p3/1P2P3/1N1q2PP/3B1P2/3Q2K1 w - - 0 1',
        solution: [
          ['a7', 'g7'],
          {'from': 'h7', 'to': 'g7'},
          ['d2', 'h6'],
          'Kxh6',
          ['d1', 'd3']
        ],
        description:
            'Blacks queen is undefended so move away your bishop with check and make it possible'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle:
            'r5rk/1pp3bp/n2p2q1/p2P1b2/4pp2/PPN2P2/1Q2B1PP/2R1RNBK b - - 0 1',
        solution: [
          ['g6', 'g2'],
          {'from': 'h1', 'to': 'g2'},
          ['g7', 'c3']
        ],
        description:
            'There is beautiful discover attack with check Sack the queen'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '3r1rk1/ppp1q2p/5p2/4pb2/2PnN3/3Q2P1/PP3PBP/R2R2K1 b - - 0 1',
        solution: [
          ['f5', 'g4'],
          {'from': 'f2', 'to': 'f3'},
          ['d4', 'f3']
        ],
        description: 'first, move the bishop then knight'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1n3r1k/4bp1p/2p1pp2/3q3Q/P1rP4/5NP1/5PBP/R2R2K1 w - - 0 1',
        solution: [
          ['f3', 'e5'],
        ],
        description:
            'Discover attack by moving a piece and also block blacks queen'),
/////////////////////
////////////////////
/////////////////////
///////////////////
////////////////

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r3rnk1/6pp/p2R4/3R4/1p2p1BP/6Q1/PP4PK/1q6 w - - 0 1',
        solution: [
          ['g3', 'b3'],
          {'from': 'g8', 'to': 'h8'},
          ['d5', 'd1']
        ],
        description:
            'First, find the best place for your queen then you will realize that the whites queen is in danger'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1Q2b1k1/2r1q1pp/4P3/3B4/1p1n4/6P1/7P/5RK1 w - - 0 1',
        solution: [
          ['b8', 'e8'],
          {'from': 'e7', 'to': 'e8'},
          ['e6', 'e7']
        ],
        description:
            'Discover checks are so strong sometimes you sacrifice major piece for it to win the game'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r4B1k/1p4pp/p7/8/3Qp2P/1BP2p2/PP1K1nq1/3R4 b - - 0 1',
        solution: [
          ['f2', 'd3'],
        ],
        description: 'Discover attack with check'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2rq3r/pp1n1Q2/3P2pk/4b1Np/3p1B1P/8/PP3PP1/1K5R w - - 0 1',
        solution: [
          ['g5', 'e6'],
        ],
        description: 'discover attack with check'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '6k1/5R1p/1p1r2p1/4p3/P1Q2p2/3P2Pq/4PP1P/6K1 w - - 0 1',
        solution: [
          ['f7', 'd7'],
        ],
        description: 'discover attack with check and win a rook'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '4r3/p1kn2NR/3b1QP1/1bq2P2/1pp5/4p3/PPP5/3R3K b - - 0 1',
        solution: [
          ['b5', 'c6'],
          {'from': 'h1', 'to': 'g1'},
          ['e3', 'e2']
        ],
        description: 'Bishop then pawn'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/1b3p1k/4p3/4B3/8/8/r4Pr1/3R1R1K b - - 0 1',
        solution: [
          ['g2', 'f2'],
          {'from': 'h1', 'to': 'g1'},
          ['f2', 'g2'],
          'Kh1',
          ['g2', 'h2'],
          'Kg1',
          ['a2', 'g2']
        ],
        description: 'Your bishop plays an important role to mate in 4'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1bq2rk/1p1p4/p1n1pPQp/3n4/4N3/1N1Bb3/PPP3PP/R4R1K w - - 0 1',
        solution: [
          ['g6', 'h7'],
          'Kxh7',
          ['e4', 'g5'],
          'Kh8',
          ['g5', 'f7']
        ],
        description:
            'Great example to show what is discover attack with check sack the queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1bqr1k1/ppp1bppp/5n2/8/3n4/2NB1N2/PPP2PPP/R1BQ1RK1 w - - 0 1',
        solution: [
          ['d3', 'h7'],
        ],
        description: 'Discover attack with check just a pawn'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            'r4rk1/pp1n1pp1/2q3bp/4p1b1/8/P1B1PNP1/1P3PBP/R2Q1RK1 w - - 0 1',
        solution: [
          ['f3', 'g5'],
        ],
        description: 'Discover attack on queen'),
  ];

  List<ChessPuzzle> sacrifice = [
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2q4r/1Q2nk2/1R6/p4pR1/4pP2/7P/6P1/6K1 w - - 0 1',
      solution: [
        ['g5', 'g7'],
        {'from': 'f7', 'to': 'g7'},
        ['b7', 'e7']
      ],
      description: 'Sacrifice to checkmate black',
    ),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'R7/2q2ppk/3bp2p/3p4/1n1P1N2/4PNP1/2r2P1P/3Q2K1 w - - 0 1',
        solution: [
          ['f3', 'g5'],
          {'from': 'h6', 'to': 'g5'},
          ['d1', 'h5']
        ],
        description: 'Sacrifice to checkmate black'),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '4k3/7p/b5p1/8/7N/2B2pbP/P4rP1/2R3KR b - - 0 1',
      solution: [
        ['f2', 'g2'],
        {'from': 'h4', 'to': 'g2'},
        ['f3', 'f2']
      ],
      description: 'Black mates in 2 with Sacking rook correctly',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6kb/R6p/6nP/3qp3/1B2RPQ1/1P6/2rp3N/6K1 w - - 0 1',
      solution: [
        ['g4', 'g6'],
        {'from': 'h7', 'to': 'g6'},
        ['h6', 'h7']
      ],
      description: 'This section is all about sacrificing so be brave',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r1b2r1k/1p3ppp/p2Np3/2q1PnB1/8/1PP3Q1/1P4PP/R4R1K w - - 0 1',
      solution: [
        ['f1', 'f5'],
        {'from': 'e6', 'to': 'f5'},
        ['g5', 'f6']
      ],
      description:
          'You have 2 options you can take blacks knight with your rook or knight one of them is correct',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle:
          '3q1b1r/1p1bk1p1/3p1pB1/1p1Pp2p/r3Q2P/2P1B3/PP3PP1/R3K2R w KQ - 0 1',
      solution: [
        ['e4', 'e5'],
        {'from': 'd6', 'to': 'e5'},
        ['e3', 'c5'],
      ],
      description: 'Sack the most valuable piece',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '4r1k1/p4p1p/1p1Q2pq/8/3N4/5RP1/5nB1/6K1 b - - 0 1',
      solution: [
        ['e8', 'e1'],
        'Kxf2',
        ['h6', 'd2'],
        'Ne2',
        ['d2', 'e2']
      ],
      description: 'Checkmate in 3 remember you have to Sack something',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '4Q3/1p6/p5qp/6pk/6b1/2R5/5PNK/8 w - - 0 1',
      solution: [
        ['g2', 'f4'],
        {'from': 'g5', 'to': 'f4'},
        ['c3', 'c5'],
        'Bf5',
        ['c5', 'f5']
      ],
      description:
          'Try to get benefit from the pinned queen and use knight forks to expose king',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '4r3/pp1q2kp/1bpn1p2/4p2p/6P1/1BP2Q2/PP3PK1/2B1R3 w - - 0 1',
      solution: [
        ['c1', 'h6'],
        'Kg6',
        ['g4', 'h5'],
        'Kxh6',
        ['f3', 'f6']
      ],
      description: 'first move is an amazing sacrifice',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '7r/1qr1nNp1/p1k4p/1pB5/4P1Q1/8/PP3PPP/6K1 w - - 0 1',
      solution: [
        ['g4', 'e6'],
        'Kxc5',
        ['e6', 'd6'],
        'Kc4',
        ['f7', 'e5']
      ],
      description: 'Check mate in 3',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: 'r4k2/5pRp/3p1B2/5P2/8/1pN5/1P2Rq1P/2K5 b - - 0 1',
      solution: [
        ['f2', 'f4'],
        'Rd2',
        ['a8', 'a1'],
        'Nb1',
        ['a1', 'b1'],
        'Kxb1',
        ['f4', 'f1']
      ],
      description:
          'This puzzle will end up with checkmate and it is impossible without Sacrificing',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '4r3/6kp/2q3p1/1R6/1P6/3B3K/2PQ3N/6r1 b - - 0 1',
      solution: [
        ['e8', 'e3'],
        'Qxe3',
        ['c6', 'g2']
      ],
      description: 'Do you like sacking rooks?',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '6k1/4q1p1/2Qpp3/R3p2p/4P1PP/2P3K1/1P2R1P1/5rb1 b - - 0 1',
      solution: [
        ['g1', 'h2'],
        'Kh3',
        ['h5', 'g4'],
        'Kxg4',
        ['f1', 'f4']
      ],
      description: 'All moves include check',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r1q4k/2nr3p/1p1p2PB/2pP4/P2bP2P/2NQ4/6R1/5R1K w - - 0 1',
      solution: [
        ['d3', 'd4'],
        {'from': 'c5', 'to': 'd4'},
        ['g6', 'g7'],
        'Kg8',
        ['f1', 'f8']
      ],
      description: 'Sack your queen',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r3nrk1/pp2q1p1/2p5/4PB2/P1N3b1/1P3p2/2Q5/1KB4R w - - 0 1',
      solution: [
        ['f5', 'h7'],
        {'from': 'g8', 'to': 'h8'},
        ['h7', 'g6'],
        'Kg8',
        ['h1', 'h8'],
        'Kxh8',
        ['c2', 'h2']
      ],
      description:
          'The idea of this puzzle is so common and it happens in your game frequently that you have to sack your rook to bring your queen instead',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '3brrk1/3R3p/p4p2/6p1/1p1B2Q1/6P1/qP3P1P/4R1K1 w - - 0 1',
      solution: [
        ['g4', 'g5'],
        {'from': 'f6', 'to': 'g5'},
        ['d7', 'g7'],
        'Kh8',
        ['g7', 'g6']
      ],
      description: 'Sack the queen',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'rn3k1r/p5pp/1ppNPq2/5Q2/5B2/8/PPP3PP/2KR3n w - - 0 1',
      solution: [
        ['e6', 'e7'],
        'Kxe7',
        ['d1', 'e1'],
        'Kd8',
        ['d6', 'b7']
      ],
      description: 'First move is with a pawn and then with the rook',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle:
          '3rkb1r/pp3ppp/qnp1pnb1/8/2NP2P1/1PN4P/P1P1QPB1/R1B2RK1 w k - 0 1',
      solution: [
        ['g2', 'c6'],
        {'from': 'b7', 'to': 'c6'},
        ['c4', 'd6']
      ],
      description: 'Sack everything to get the queen',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r1b3k1/1p4pp/p3r3/1p1q1PbQ/2n5/B7/P5PP/2R1R1K1 w - - 0 1',
      solution: [
        ['h5', 'e8'],
        'Rxe8',
        ['e1', 'e8'],
        'Kf7',
        ['e8', 'f8']
      ],
      description: 'Checkmate in 3 with sacrificing your queen',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '3rr3/Qp3k2/2b1pp2/3n3p/P7/BP4P1/4KP1P/2R1R2q b - - 0 1',
      solution: [
        ['d5', 'f4'],
        {'from': 'g3', 'to': 'f4'},
        ['h1', 'f3'],
        'Kf1',
        ['f3', 'h3'],
        'Ke2',
        ['h3', 'd3']
      ],
      description: 'mate in 4 with Sacking knight',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '6k1/1p4p1/p1b1p1r1/4P2p/P6q/1P2p1P1/4QP1P/2B1R1K1 b - - 0 1',
      solution: [
        ['g6', 'g3'],
        {'from': 'f2', 'to': 'g3'},
        ['h4', 'e4']
      ],
      description:
          'If your queen diagonally pair up with the bishop then there is no checkmate threat simply white push the pawn to block them so can you make something to prevent the whites pawn from blocking the diagonal line',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '3k4/ppr1bp1r/4p1p1/3pP2p/QP1q1N1P/P4RP1/6PK/5R2 w - - 0 1',
      solution: [
        ['f4', 'e6'],
        {'from': 'f7', 'to': 'e6'},
        ['f3', 'f8']
      ],
      description: 'Some sacrifices are for opening files',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r4n1r/p2q1p1k/1nR3p1/4PN1p/P4P2/8/BP2Q3/2K3R1 w - - 0 1',
      solution: [
        ['e2', 'h5'],
        'Kg8',
        ['g1', 'g6']
      ],
      description:
          'some sacrifices are for destroying blacks king defense to checkmate',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '5kB1/7p/p5p1/2q5/P3bb2/6PP/Q5RK/3r4 b - - 0 1',
      solution: [
        ['f4', 'g3'],
        'Kxg3',
        ['c5', 'g5'],
        'Kh2',
        ['g5', 'f4'],
        'Rg3',
        ['d1', 'h1']
      ],
      description: 'Checkmate in 4',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '1r1q1b1k/p1p4r/3pR1Q1/2pB4/2P3pP/1P4P1/P6K/4R3 w - - 0 1',
      solution: [
        ['g6', 'g8'],
        'Kxg8',
        ['e6', 'g6'],
        'Kh8',
        ['g6', 'g8']
      ],
      description: 'Beautiful Checkmate in 3 with a beautiful sacrifice',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5rk1/p2b2r1/1p2pR1Q/3pP1p1/1q1P2RP/3BP3/PP6/6K1 w - - 0 1',
      solution: [
        ['h6', 'g7'],
        'Kxg7',
        ['g4', 'g5']
      ],
      description: 'Sack the Queen',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r5kr/2N1bp2/2qp1ppQ/4p3/p7/PpP3R1/1P4PP/2K4R w - - 0 1',
      solution: [
        ['g3', 'g6'],
        {'from': 'f7', 'to': 'g6'},
        ['h6', 'g6'],
        'Kf8',
        ['c7', 'e6']
      ],
      description: 'Checkmate in 3',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5rrk/5pb1/p1pN3p/7Q/1p2PP1R/1q5P/6P1/6RK w - - 0 1',
      solution: [
        ['h5', 'h6'],
        'Bxh6',
        ['h4', 'h6'],
        'Kg7',
        ['d6', 'f5']
      ],
      description: 'Sacrifice like micheal tal. I guess you know what it means',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5r1k/pp1n1p1p/5n1Q/3p1pN1/3P4/1P4RP/P1r1qPP1/R5K1 w - - 0 1',
      solution: [
        ['h6', 'f8'],
        'Nxf8',
        ['g5', 'f7']
      ],
      description: 'Sacrifice like micheal tal. I guess you know what it means',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r1b1nBR1/pp1n3k/2p5/4p2q/2Q1P3/2N5/PPP2P2/1K4R1 w - - 0 1',
      solution: [
        ['g8', 'h8'],
        'Kxh8',
        ['c4', 'g8']
      ],
      description: 'checkmate in 2',
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
        solution: [
          ['d1', 'd8']
        ],
        description: 'Look for back rank'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle:
            'rbb1k1nr/ppqn2pp/2p1p3/3p1pN1/2PP4/1PN1P3/P3BPPP/R1BQ1RK1 b kq - 0 1',
        solution: [
          ['c7', 'h2']
        ],
        description: 'Blacks queen and bishop are on the same diagonal so !!'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '1r2R3/8/2p2k1p/p5p1/Pp1n4/6Pq/QP3P2/4R1K1 b - - 0 1',
        solution: [
          ['d4', 'f3']
        ],
        description:
            'There is no space for blacks king one check can be game over for black but there are few checks one of them is correct'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3r2rk/p5pp/1p4n1/3p2N1/2pP4/2P1R3/qPBQ1PPP/6K1 w - - 0 1',
        solution: [
          ['g5', 'f7']
        ],
        description:
            'There is no space for blacks king one check can be game over for black'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '2r2rk1/p4pp1/1p3n1p/4pN2/4P3/2q1P3/n1PRQ1PP/3K1R2 b - - 0 1',
        solution: [
          ['c3', 'a1']
        ],
        description: 'Blacks back rank is so weak'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r5k1/ppp2rp1/7p/2qN4/3n4/3Q4/PPPP2PP/R1B3KR b - - 0 1',
        solution: [
          ['d4', 'e2']
        ],
        description: 'Double check use your knight'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/8/5k1p/6pP/6P1/4b3/8/2rb1K2 b - - 0 1',
        solution: [
          ['d1', 'f3']
        ],
        description: 'Where do you put your white-squared bishop?'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '2k5/p7/Ppb5/3p1p2/5P2/5KBP/3r4/1R6 b - - 0 1',
        solution: [
          ['d5', 'd4']
        ],
        description: 'Move a pawn'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2r1kr2/pN4R1/4p3/3p2p1/6q1/BP2P3/P2P2B1/6K1 w - - 0 1',
        solution: [
          ['g7', 'e7']
        ],
        description:
            "Don't move knight because it prevents the king to run away"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r5rk/1q2b1p1/6Pp/2p1BP2/pp2P3/8/1PP3P1/2KR3R w - - 0 1',
        solution: [
          ['h1', 'h6']
        ],
        description: 'There is a nice pin that help us to mate the king'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '5r1k/2p1b1pp/p2pB3/8/2Q1P3/5pPn/RP5P/6RK b - - 0 1',
        solution: [
          ['h3', 'f2']
        ],
        description: 'knights are so merciless'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '1r4k1/R6p/3p1r2/1p2n3/1Pp1Pp2/5Nn1/2B2KP1/R2Q3q b - - 0 1',
        solution: [
          ['e5', 'g4']
        ],
        description: 'knights are so merciless'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1q2r2k/p5R1/2n1N1p1/1p3ppP/3p4/P6R/1P3PP1/3K1B2 w - - 0 1',
        solution: [
          ['h5', 'g6']
        ],
        description: 'Bring other rook to play'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1brk1n1/1pp3Q1/p2p1p2/3NnP2/4P3/3B2R1/PPP3PP/R5K1 w - - 0 1',
        solution: [
          ['d5', 'c7']
        ],
        description:
            'There are so many checks but one of them is correct by using knight'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r6k/1p4p1/1pp4p/3p4/1P1nq1P1/P4rp1/3B4/R1R3QK b - - 0 1',
        solution: [
          ['f3', 'f1']
        ],
        description: 'You have to move your rook but where this is important'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '1R6/4pk1p/6p1/R7/1P6/6PP/r4n1K/2r5 b - - 0 1',
        solution: [
          ['f2', 'g4']
        ],
        description: 'Keep in mind Double check is the only solution'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r4rk1/pb4pp/1p2npq1/1N6/8/1P5P/PBP1QPP1/R4RK1 b - - 0 1',
        solution: [
          ['g6', 'g2']
        ],
        description:
            'Bishop and Queen are both targeting the same important square'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '2k5/1pp5/p6p/5p2/1P4p1/P5P1/5P1P/4rbK1 b - - 0 1',
        solution: [
          ['f1', 'h3']
        ],
        description: "Don't let king run away"),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '3N1rk1/pb3ppp/1p6/2b1N3/4n3/PP6/1BR4P/5R1K b - - 0 1',
        solution: [
          ['e4', 'g3']
        ],
        description: 'Double check by using the knight'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3rr2k/1p3R1B/p2P4/2P1N1p1/b2K2P1/P7/8/8 w - - 0 1',
        solution: [
          ['e5', 'g6']
        ],
        description: 'Blacks king is stuck one check can be mate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'kr5r/pp1R1p2/N3p3/7p/qP6/P6p/5PPK/2R5 w - - 0 1',
        solution: [
          ['a6', 'c7']
        ],
        description:
            'Blacks king run out of squares one check can be mate mate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r4q1k/1p3p1p/4bNnQ/r2p4/p2P4/2P4P/2B2PP1/R3R1K1 w - - 0 1',
        solution: [
          ['h6', 'h7']
        ],
        description: "Your knight and queen are both hitting a great square"),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '4k1r1/1Q1n1p1p/4p1r1/8/1B6/P4PP1/1PP2q2/4R2K b - - 0 1',
        solution: [
          ['g6', 'h6']
        ],
        description:
            'Whits king are out of squares one check can be mate by using the rook'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2r5/3b3k/p2P4/1pp1BppB/5P2/P5P1/1PP2K2/7R w - - 0 1',
        solution: [
          ['h5', 'f7']
        ],
        description:
            "First move is clear you have to move white-squared bishop but where that's important"),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r6k/ppp3pp/2np2r1/3QP3/2P1P2q/P1P1P3/1B2B1b1/R4RK1 b - - 0 1',
        solution: [
          ['g2', 'f3']
        ],
        description: 'Block whits bishop'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '4r1k1/ppp3pp/3b4/8/2Pp3q/1P1P1p1b/P2B1P2/1R4QK b - - 0 1',
        solution: [
          ['h3', 'g2']
        ],
        description: 'Double check '),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            '4rrn1/2nbq1bk/p2p2p1/PppP1pp1/4P1P1/2NB1P1N/1P1Q2KR/7R w - - 0 1',
        solution: [
          ['h3', 'g5']
        ],
        description: 'double check by using the knight'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/pp1kn3/4p2R/1P1p4/2pP4/2P1K3/P4r2/2B2r2 b - - 0 1',
        solution: [
          ['e7', 'f5']
        ],
        description: 'One simple check with knight'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r3r1k1/pb3ppp/1p1Q4/4n3/1P3P2/P7/5PPP/3RKB1R b - - 0 1',
        solution: [
          ['e5', 'f3']
        ],
        description: "Double-check but be careful don't let king run away"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r5k1/pp2bR1p/2p3pB/4p2n/2BqP3/3P3P/PPP3P1/R6K w - - 0 1',
        solution: [
          ['f7', 'f8']
        ],
        description:
            'Double-check but you have to be smart where you put your rook'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'rnbqkb1r/1p3ppp/p4n2/2pp4/8/5N2/PPPPBPPP/RNBQR1K1 w - - 0 1',
        solution: [
          ['e2', 'b5']
        ],
        description: 'There is only one check 😅'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2b3rk/2q1r3/1pP1pnRB/pP1pNp1Q/P2P4/2N4P/5P2/6K1 w - - 0 1',
        solution: [
          ['h6', 'g7']
        ],
        description: 'Where do you put your bishop?'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '7r/1p1b2k1/1qpP1p2/p2P1P2/N4nP1/1P2r3/P2Q2B1/2R3KR b - - 0 1',
        solution: [
          ['e3', 'e1']
        ],
        description: 'Move your rook wisely '),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/pp2k3/2ppp3/4p3/4P1rq/3P1Qb1/PPP1R3/5RK1 b - - 0 1',
        solution: [
          ['g3', 'f2']
        ],
        description: 'double check'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '3k3r/1pp2p2/p3bN1p/4P3/2P4n/1P2K1P1/PQ5P/R1Br1q2 b - - 0 1',
        solution: [
          ['f1', 'f3']
        ],
        description:
            'There is 9 possible checks one of them is correct can you spot it'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3r1r1k/1bpq1P1p/p7/1pbpP1Q1/8/1PN3B1/1PP3PP/3R1R1K w - - 0 1',
        solution: [
          ['g5', 'f6']
        ],
        description: 'Queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5b1r/2B1k3/p1q1ppQp/1pp5/8/8/PPP2PPP/3R2K1 w - - 0 1',
        solution: [
          ['c7', 'd8']
        ],
        description: 'Bishops are killer'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5q1k/p2b1rrp/1p3BnQ/3pPp2/P1pP2P1/2P5/2P5/R3K2R w - - 0 1',
        solution: [
          ['h6', 'h7']
        ],
        description: 'The only defender is pinned by your bishop'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2r2rkb/5p2/5P2/p3pN1Q/1p6/6PP/1P3PB1/1b4K1 w - - 0 1',
        solution: [
          ['f5', 'e7']
        ],
        description: 'There is only one correct check with your knight'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '7k/1pQbbp2/3p3p/3Pp3/1PP1Pp1q/1N3P2/P5K1/2R2B1r b - - 0 1',
        solution: [
          ['h4', 'h2']
        ],
        description: 'Kiss the king'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2q3R1/1n1k4/1n1p4/2pP1pBB/ppP1pP2/1P6/P7/5K1R w - - 0 1',
        solution: [
          ['g8', 'g7']
        ],
        description: "Your bishops placement are so good don't move them"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1r3k1r/p1R2Bbp/1p6/5pp1/3P4/1P2P1PP/PB1N1P2/4K2b w - - 0 1',
        solution: [
          ['b2', 'a3']
        ],
        description: 'Bishops are killer'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '5rk1/2p2pp1/3b3p/8/2P4P/1P2B2q/P4P1P/R4RK1 b - - 0 1',
        solution: [
          ['h3', 'h2']
        ],
        description:
            'Queen and bishop are both targeting the same square near king'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '3R1bk1/p4ppp/1p4n1/4PN2/4B3/1P3P2/P5KP/4q3 b - - 0 1',
        solution: [
          ['g6', 'f4']
        ],
        description: "It's good to have knights and queens attacking the king"),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/8/1p6/1B6/P2b4/4p1k1/6p1/6K1 b - - 0 1',
        solution: [
          ['e3', 'e2']
        ],
        description: 'Simple pawn moves'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2rrk3/5pp1/2P4p/Q7/8/4B3/PP3PPP/R3R1K1 w - - 0 1',
        solution: [
          ['e3', 'c5']
        ],
        description: "Don't let blacks king run away"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r3bknQ/1p3pp1/pq1r4/2Np1pN1/1P1P4/P3R3/5PP1/2R3K1 b - - 0 1',
        solution: [
          ['g5', 'h7']
        ],
        description:
            'Blacks king are out of squares one check is mate and usually Knights love this positions'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4RBk1/7p/6p1/3r2b1/3P4/2P5/rP4PP/5RK1 w - - 0 1',
        solution: [
          ['f8', 'h6']
        ],
        description:
            "The first move is with the bishop but where you put it that's important"),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '1r3rk1/p1Q2pp1/Bp1p3p/8/2R1bq2/7P/P5P1/5nRK b - - 0 1',
        solution: [
          ['f4', 'h2']
        ],
        description: 'kiss the king'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '2r3k1/pp3pp1/2n3pq/3p4/1P4P1/P1PQbNKP/3Nr3/R4R2 b - - 0 1',
        solution: [
          ['e3', 'f4']
        ],
        description: 'Bishops are killer'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '3r3k/1p3Q1p/2b2b2/4pP2/1p2P3/1B3q2/PP5P/3RK3 b - - 0 1',
        solution: [
          ['f6', 'h4']
        ],
        description: 'Bishops are killer'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r3k3/p1b3p1/2p2np1/3p4/4P3/4BKP1/PPP1NP1r/RN3R2 b - - 0 1',
        solution: [
          ['d5', 'e4']
        ],
        description: 'Pawns are killer'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1b1qrk1/pppp1p2/2n2Bp1/b7/2B1P3/2P5/PP3PP1/RN2K1NR w - - 0 1',
        solution: [
          ['h1', 'h8']
        ],
        description: 'Rook'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1bq3k/4R1np/pp1p1Bp1/2pQ4/2P2P2/2N5/PP4PP/5R1K w - - 0 1',
        solution: [
          ['f6', 'g7']
        ],
        description: 'Bishops are killer'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1bnrk2/3R4/p4Np1/4P3/2p5/6P1/PPP2PB1/2K4R w - - 0 1',
        solution: [
          ['h1', 'h8']
        ],
        description: 'Stair case mate'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '6k1/1p2rpp1/p5n1/2PN2p1/2Q3P1/1P3K1P/4RP2/6q1 b - - 0 1',
        solution: [
          ['g6', 'h4']
        ],
        description: 'Whits king are out of squares one check is mate'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '3r2k1/1p2p2p/p3n1p1/4P3/4K1pP/5r2/PP2N3/6R1 b - - 0 1',
        solution: [
          ['e6', 'c5']
        ],
        description: 'Whits king are out of squares one check is mate'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '6k1/R4p1p/6p1/5pr1/7r/P1Nn1P2/1P5R/7K b - - 0 1',
        solution: [
          ['d3', 'f2']
        ],
        description: 'The rook in front of king is pinned'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2k5/pRprq3/3p3p/2bBp1p1/4P1b1/2PPBN2/2P2PPP/1R5K w - - 0 1',
        solution: [
          ['b7', 'b8']
        ],
        description: 'weak Back rank'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle:
            'r1b1k1nr/pppp1ppp/2n5/2b5/2B1Pp1q/2N2N2/PPPP2PP/R1BQ1K1R b - - 0 1',
        solution: [
          ['h4', 'f2']
        ],
        description: 'Napoleons style checkmate'),
  ];

//
//
//
//
  List<ChessPuzzle> checkMateInTwo = [
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4r1rk/5K1b/7R/R7/8/8/8/8 w - - 0 1',
        solution: [
          ['h6', 'h7'],
          'Kxh7',
          ['a5', 'h5']
        ],
        description: 'Simple try remember rook and king checkmate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4rkr1/1R1R4/4bK2/8/8/8/8/8 w - - 0 1',
        solution: [
          ['d7', 'f7'],
          'Bxf7',
          ['b7', 'f7']
        ],
        description: 'Blacks two rook will help us'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2k5/1q4b1/3K4/8/7R/8/7R/8 w - - 0 1',
        solution: [
          ['h4', 'h8'],
          'Bxh8',
          ['h2', 'h8']
        ],
        description: 'Thanks for the blacks queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'kr6/1p6/p5R1/8/1q6/8/Q7/2K5 w - - 0 1',
        solution: [
          ['g6', 'a6'],
          {'from': 'b7', 'to': 'a6'},
          ['a2', 'a6']
        ],
        description: 'Sack the rook'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '6k1/8/6K1/8/8/3r4/4r3/5R1R w - - 0 1',
        solution: [
          ['h1', 'h8'],
          'Kxh8',
          ['f1', 'f8']
        ],
        description: 'Bring blacks king to the corner'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2rkr3/2ppp3/2n1n3/R2R4/8/8/3K4/8 w - - 0 1',
        solution: [
          ['d5', 'd7'],
          'Kxd7',
          ['a5', 'd5']
        ],
        description: 'Other black pieces will help you to check mate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k7/3b4/1K6/8/8/5q2/2R1R3/8 w - - 0 1',
        solution: [
          ['e2', 'e8'],
          'Bxe8',
          ['c2', 'c8']
        ],
        description: 'Move away bishop first'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'kr6/1p6/8/1p5R/6R1/8/1r6/5K2 w - - 0 1',
        solution: [
          ['g4', 'a4'],
          {'from': 'b5', 'to': 'a4'},
          ['h5', 'a5']
        ],
        description: 'Try get one of your rook to the open file'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'kn1R4/ppp5/2q5/8/8/8/8/3RK3 w - - 0 1',
        solution: [
          ['d8', 'b8'],
          'Kxb8',
          ['d1', 'd8']
        ],
        description: 'Back rank mate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1kb4R/1npp4/8/8/8/8/8/R5K1 w - - 0 1',
        solution: [
          ['h8', 'c8'],
          'Kxc8',
          ['a1', 'a8']
        ],
        description: 'Back rank mate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5K1k/7p/8/2p5/2rp4/8/8/6B1 w - - 0 1',
        solution: [
          ['g1', 'h2'],
          'd3',
          ['h2', 'e5']
        ],
        description: "Black can't prevent diagonal check"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/6N1/8/pp6/kp6/pp5K/2N5/8 w - - 0 1',
        solution: [
          ['g7', 'e6'],
          'a2',
          ['e6', 'c5']
        ],
        description: 'Bring the other knight'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '7k/4K1pp/6pn/6N1/6N1/8/8/8 w - - 0 1',
        solution: [
          ['e7', 'f8'],
          'Nxg4',
          ['g5', 'f7']
        ],
        description: 'Move king first so blacks only move will be with knight'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '7k/5P2/4n1PK/8/8/8/8/8 w - - 0 1',
        solution: [
          ['g6', 'g7'],
          'Nxg7',
          ['f7', 'f8']
        ],
        description: 'If you want queen just remove the knight'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k7/pn6/p1Pp4/4P3/8/8/8/6K1 w - - 0 1',
        solution: [
          ['c6', 'c7'],
          {'from': 'd6', 'to': 'e5'},
          ['c7', 'c8']
        ],
        description: 'Go for queening'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1k5/P7/2K1P3/8/8/8/8/8 w - - 0 1',
        solution: [
          ['e6', 'e7'],
          'Rxa7',
          ['e7', 'e8']
        ],
        description: 'Go for queening'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1k1B4/8/1K6/1n6/q7/8/8/3R4 w - - 0 1',
        solution: [
          ['d8', 'c7'],
          'Kc8',
          ['d1', 'd8']
        ],
        description:
            'Suppose if there is not a bishop then you can checkmate in one'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5Knk/7b/R7/8/7B/8/8/8 w - - 0 1',
        solution: [
          ['a6', 'h6'],
          'Nxh6',
          ['h4', 'f6']
        ],
        description: 'Pin the bishop to move away knight'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '7k/5ppr/K5p1/8/8/8/2B5/2R5 w - - 0 1',
        solution: [
          ['c2', 'g6'],
          'Rh1',
          ['c1', 'c8']
        ],
        description: 'Move bishop and place it correctly'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '7k/7p/5K1b/8/6R1/8/1B6/1q6 w - - 0 1',
        solution: [
          ['f6', 'f7'],
          'Qxb2',
          ['g4', 'g8']
        ],
        description: 'Move your king'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/8/pp6/kb2B3/4n3/K1R5/8/8 w - - 0 1',
        solution: [
          ['c3', 'c5'],
          'Nxc5',
          ['e5', 'c3']
        ],
        description: 'Pin the bishop then black must move pawn or knight'),
    ////
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r7/kp6/pR1Q4/5q2/8/8/8/3K4 w - - 0 1',
        solution: [
          ['b6', 'a6'],
          {'from': 'b7', 'to': 'a6'},
          ['d6', 'c7']
        ],
        description: "Don't be afraid of sacrificing if you see checkmate"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4Q3/kr6/pp6/8/8/8/6q1/R2K4 w - - 0 1',
        solution: [
          ['a1', 'a6'],
          'Kxa6',
          ['e8', 'a4']
        ],
        description: "Don't be afraid of sacrificing if you see checkmate"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '6rk/6n1/1R1Q4/7r/8/8/8/3K4 w - - 0 1',
        solution: [
          ['d6', 'h6'],
          'Rxh6',
          ['b6', 'h6']
        ],
        description: "Don't be afraid of sacrificing if you see checkmate"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1k4r1/ppp5/8/8/2q5/8/5Q2/3K1R2 w - - 0 1',
        solution: [
          ['f2', 'f8'],
          'Rxf8',
          ['f1', 'f8']
        ],
        description: "Don't be afraid of sacrificing if you see checkmate"),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5Q2/pp6/kp1R4/8/K7/8/4q3/8 w - - 0 1',
        solution: [
          ['d6', 'b6'],
          'Kxb6',
          ['f8', 'd6']
        ],
        description: "Don't be afraid of sacrificing if you see checkmate"),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1q1r3k/7p/7K/8/4R3/2p5/8/1Q6 w - - 0 1',
        solution: [
          ['e4', 'e8'],
          'Rxe8',
          ['b1', 'h7']
        ],
        description: "Don't be afraid of sacrificing if you see checkmate"),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k3r3/pR6/K7/2b5/8/8/1Q3q2/8 w - - 0 1',
        solution: [
          ['b7', 'a7'],
          'Bxa7',
          ['b2', 'b7']
        ],
        description: "Don't be afraid of sacrificing if you see checkmate"),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3rkr2/R3p3/8/4K3/8/7Q/5q2/8 w - - 0 1',
        solution: [
          ['a7', 'e7'],
          'Kxe7',
          ['h3', 'e6']
        ],
        description: "Don't be afraid of sacrificing if you see checkmate"),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2k5/1ppn4/1q6/8/Q7/8/5R2/4K3 w - - 0 1',
        solution: [
          ['f2', 'f8'],
          'Nxf8',
          ['a4', 'e8']
        ],
        description: "Don't be afraid of sacrificing if you see checkmate"),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k1r5/p1p5/N1K5/8/3q4/8/8/1R6 w - - 0 1',
        solution: [
          ['b1', 'b8'],
          'Rxb8',
          ['a6', 'c7']
        ],
        description: 'knights are the killers'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/8/6Nr/5Kbk/R7/8/8/8 w - - 0 1',
        solution: [
          ['a4', 'h4'],
          'Bxh4',
          ['g6', 'f4']
        ],
        description: 'knights are the killers'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'kr6/pp6/8/8/2N4R/8/8/3K4 w - - 0 1',
        solution: [
          ['c4', 'b6'],
          {'from': 'a7', 'to': 'b6'},
          ['h4', 'a4']
        ],
        description: 'sacrifice knight to open up file to the king'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2Nnkr2/3p3R/8/5n2/8/8/8/7K w - - 0 1',
        solution: [
          ['h7', 'e7'],
          'Nxe7',
          ['c8', 'd6']
        ],
        description: 'knights are the killers'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2R5/8/pn6/k1N5/8/1K6/6q1/8 w - - 0 1',
        solution: [
          ['c5', 'b7'],
          'Qxb7',
          ['c8', 'c5']
        ],
        description: 'What happens if in place of Knight were rook'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/pk6/1p6/1B2r3/K7/2Q1q3/8/8 w - - 0 1',
        solution: [
          ['b5', 'a6'],
          'Kb8',
          ['c3', 'c8']
        ],
        description: 'Sack the bishop'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/8/6rp/6pk/5b1p/5K2/6P1/6R1 w - - 0 1',
        solution: [
          ['g2', 'g4'],
          {'from': 'h4', 'to': 'g3'},
          ['g1', 'h1']
        ],
        description: 'First, move a pawn'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/6kp/4r1p1/q3r3/6K1/B7/8/2Q5 w - - 0 1',
        solution: [
          ['c1', 'h6'],
          'Kxh6',
          ['a3', 'f8']
        ],
        description:
            'First move is done by queen but you have to calculate carefully'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'qkb5/4p3/1K1p4/8/5Q2/6B1/8/8 w - - 0 1',
        solution: [
          ['f4', 'd6'],
          {'from': 'e7', 'to': 'd6'},
          ['g3', 'd6']
        ],
        description: 'Sack the queen'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'B7/8/8/7K/4b3/Q7/7p/1q4bk w - - 0 1',
        solution: [
          ['a3', 'f3'],
          {'from': 'e4', 'to': 'f3'},
          ['a8', 'f3']
        ],
        description: 'Sacrifice queen to leave bishop without defense'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/8/B7/3qp3/2ppkpp1/8/4K3/3Q4 w - - 0 1',
        solution: [
          ['d1', 'd3'],
          {'from': 'c4', 'to': 'd3'},
          ['a6', 'd3']
        ],
        description:
            'Blacks king has no square so one check will end the game whether its queen or bishop does not make any difference'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5nk1/4K1n1/8/4N3/6N1/8/8/8 w - - 0 1',
        solution: [
          ['g4', 'f6'],
          'Kh8',
          ['e5', 'f7']
        ],
        description: 'Your knights have 2 checks which one correct? find out'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5K1k/6pp/6p1/6B1/6N1/8/8/8 w - - 0 1',
        solution: [
          ['g4', 'h6'],
          {'from': 'g7', 'to': 'h6'},
          ['g5', 'f6']
        ],
        description: 'Sack the knight'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'kb1n4/8/KP6/8/B7/8/8/8 w - - 0 1',
        solution: [
          ['a4', 'c6'],
          'Nxc6',
          ['b6', 'b7']
        ],
        description: 'Move away knight then go for mate'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/8/5B2/8/2pN4/K7/pp6/kb6 w - - 0 1',
        solution: [
          ['d4', 'b3'],
          {'from': 'c4', 'to': 'b3'},
          ['f6', 'b2']
        ],
        description: 'with knight you have 2 check which is correct?'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3B1K1k/6pp/4b3/7P/8/8/8/8 w - - 0 1',
        solution: [
          ['h5', 'h6'],
          'g6',
          ['d8', 'f6']
        ],
        description: 'what happens if there is no pawn diagonally to the king'),
//////
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '7k/2r4r/5PK1/8/8/2B5/8/8 w - - 0 1',
        solution: [
          ['f6', 'f7'],
          {'from': 'h7', 'to': 'g7'},
          ['c3', 'g7']
        ],
        description: 'Discover check'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/p2p4/kp6/1pP5/1K6/7B/8/8 w - - 0 1',
        solution: [
          ['c5', 'c6'],
          'd5',
          ['h3', 'c8']
        ],
        description: 'Open up diagonal for your bishop'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k1r2q2/ppQ5/N7/8/8/8/8/3K4 w - - 0 1',
        solution: [
          ['c7', 'b8'],
          'Rxb8',
          ['a6', 'c7']
        ],
        description: 'Arabian mate. mate with Knight'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4q2k/4N1pr/8/8/2Q5/8/4K3/8 w - - 0 1',
        solution: [
          ['c4', 'g8'],
          'Qxg8',
          ['e7', 'g6']
        ],
        description: 'Arabian mate. mate with Knight'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4r1kr/5b1p/5KN1/8/8/Q7/3q4/8 w - - 0 1',
        solution: [
          ['a3', 'f8'],
          'Rxf8',
          ['g6', 'e7']
        ],
        description: 'checkmate with Knight'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k1b5/8/NKn5/8/4q3/8/7Q/8 w - - 0 1',
        solution: [
          ['h2', 'b8'],
          'Nxb8',
          ['a6', 'c7']
        ],
        description: 'checkmate with Knight'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k4K2/p7/1bP5/8/8/8/8/6qQ w - - 0 1',
        solution: [
          ['c6', 'c7'],
          'Qxh1',
          ['c7', 'c8']
        ],
        description: 'Go for queening'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5rkr/5ppp/8/4K3/6N1/2Q5/q7/8 w - - 0 1',
        solution: [
          ['g4', 'h6'],
          {'from': 'g7', 'to': 'h6'},
          ['c3', 'g3']
        ],
        description: 'Open up the file in front of king'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'krQ5/p7/8/4q3/N7/8/8/3K4 w - - 0 1',
        solution: [
          ['a4', 'b6'],
          {'from': 'a7', 'to': 'b6'},
          ['c8', 'a6']
        ],
        description:
            'Rook is pinned so if you check the king with knight black will take it with pawn'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k1r5/p1pq4/Qp1p4/8/3N4/8/3K4/8 w - - 0 1',
        solution: [
          ['d4', 'c6'],
          'Qxc6',
          ['a6', 'c8']
        ],
        description: 'Bring knight'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3q2rk/5Q1p/6bK/4N3/8/8/8/8 w - - 0 1',
        solution: [
          ['f7', 'h7'],
          {'from': 'g6', 'to': 'h7'},
          ['e5', 'f7']
        ],
        description: 'Move away the bishop to give you up a great square'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/8/5Q2/2q3pk/7b/8/4K1P1/8 w - - 0 1',
        solution: [
          ['g2', 'g4'],
          'Kxg4',
          ['f6', 'f3']
        ],
        description: 'Pawns sometimes will help you to checkmate'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/b2Q4/kp2p3/p2q4/1P6/K7/8/8 w - - 0 1',
        solution: [
          ['b4', 'b5'],
          'Qxb5',
          ['d7', 'c8']
        ],
        description: 'Pawns sometimes will help you to check mate'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5K1k/7b/8/4ppP1/8/6bQ/7q/8 w - - 0 1',
        solution: [
          ['g5', 'g6'],
          'Qxh3',
          ['g6', 'g7']
        ],
        description: 'Pawns sometimes will help you to check mate'),
  ];

  List<ChessPuzzle> checkMateInThree = [
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1rb5/1p2k2r/p5n1/2p1pp2/2B5/6P1/PPPB1PP1/2KR4 w - - 0 1',
        solution: [
          ['d2', 'g5'],
          {'from': 'e7', 'to': 'f8'},
          ['d1', 'd8'],
          {'from': 'f8', 'to': 'g7'},
          ['d8', 'g8']
        ],
        description:
            'It is easier to mate the king at the corner rather than at the center'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1b1k3/pp4pp/2n1p2b/2p1q1N1/8/1PP1B1P1/P2Q2BP/5RK1 w - - 0 1',
        solution: [
          ['g2', 'c6'],
          {'from': 'b7', 'to': 'c6'},
          ['f1', 'f8'],
          'Kxf8',
          ['d2', 'd8']
        ],
        description:
            'Firstly take that annoying knight out of the board then go for checkmating black'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5rrk/2n2p1p/3q1PpQ/p2pNnR1/2pP2N1/P1P3R1/5P1P/7K w - - 0 1',
        solution: [
          ['h6', 'h7'],
          'Kxh7',
          ['g3', 'h3'],
          'Nh6',
          ['h3', 'h6']
        ],
        description: 'Open up the file to meet blacks king'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/ppprq2p/5Qpk/6N1/2P1B1P1/6P1/PP3P2/n6K w - - 0 1',
        solution: [
          ['g5', 'f7'],
          'Qxf7',
          ['g4', 'g5'],
          'Kh5',
          ['e4', 'f3']
        ],
        description:
            'First, sack your knight then May be your double pawn will help'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r2k1bbr/pp6/nqp3p1/3p2N1/2PP1B2/1P4QB/P6P/R3R2K w - - 0 1',
        solution: [
          ['g5', 'f7'],
          'Bxf7',
          ['g3', 'g5'],
          {'from': 'f8', 'to': 'e7'},
          ['g5', 'e7']
        ],
        description: 'Get rid of your knight your queen need this square'),
//////////////////////////
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5rk1/p5r1/4p1p1/1p1b1NQ1/2pP4/P6R/q1P2PP1/4R1K1 w - - 0 1',
        solution: [
          ['h3', 'h8'],
          'Kxh8',
          ['g5', 'h6'],
          'Kg8',
          ['h6', 'g7']
        ],
        description: 'Sack the rook'),
/////
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4rk2/r4n2/B2R1RQ1/P1p5/8/2q4P/2P3PK/8 w - - 0 1',
        solution: [
          ['g6', 'h6'],
          'Kg8',
          ['f6', 'g6'],
          'Qg7',
          ['h6', 'g7']
        ],
        description: 'First move is with queen'),
////
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '7k/3N2qp/b7/2p1Q1N1/Pp4PK/5p1P/1P3P2/6r1 w - - 0 1',
        solution: [
          ['g5', 'f7'],
          'Kg8',
          ['e5', 'e8'],
          'Qf8',
          ['e8', 'f8']
        ],
        description:
            'Can you check blacks king with your knight? ans. Yes because blacks queen is pinned'),
//
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/4Bpb1/4b2k/1p2P1pp/4Q3/1r1NK1PP/4BP2/6r1 w - - 0 1',
        solution: [
          ['e7', 'g5'],
          'Kxg5',
          ['e4', 'h4'],
          'Kh6',
          ['h4', 'h5']
        ],
        description: 'Invite the king to your territory'),
//
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1r1q2k/pp2BR1p/b3n1p1/P2BP3/2Pn4/8/3N1QPP/R5K1 w - - 0 1',
        solution: [
          ['f2', 'f6'],
          'Kg8',
          ['f6', 'g7'],
          {'from': 'e6', 'to': 'g7'},
          ['f7', 'f8']
        ],
        description:
            'First move is clear but the second move and third is tricky and brilliant the hint for you is double check will be the key'),

/////

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            'r1bq1rk1/4bpn1/p1p1n3/1p1pPBP1/1P6/P1N1PN2/2Q2PP1/3RK2R w K - 0 1',
        solution: [
          ['f5', 'h7'],
          'Kh8',
          ['h7', 'g8'],
          'Kxg8',
          ['c2', 'h7']
        ],
        description: "Don't you wish to not have bishop? so Sack it"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1r2k3/5p1Q/1q2bR2/4P3/1p4PB/7P/1r1p4/2R2K2 w - - 0 1',
        solution: [
          ['h7', 'g8'],
          'Kd7',
          ['f6', 'f7'],
          {'from': 'e6', 'to': 'f7'},
          ['g8', 'f7']
        ],
        description: 'Second move sack the rook'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/2r1kpN1/p3p1pp/1p2p1b1/4q1P1/4B2P/PPP2Q2/1K1R4 w - - 0 1',
        solution: [
          ['e3', 'c5'],
          'Rxc5',
          ['f2', 'c5'],
          {'from': 'e7', 'to': 'f6'},
          ['g7', 'e8']
        ],
        description: 'Put the blacks king in the jail'),
    ////
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1n3k1/1p1b2P1/3Pqp2/1Pp1p3/2P5/2N5/2B1Q3/6RK w - - 0 1',
        solution: [
          ['c2', 'h7'],
          'Kxh7',
          ['g7', 'g8'],
          {'from': 'e6', 'to': 'g8'},
          ['e2', 'h5']
        ],
        description: 'Bishop sacrifice'),
    //
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/2p5/2Pp2p1/6Pk/1r1bQ2P/8/5PK1/8 w - - 0 1',
        solution: [
          ['g2', 'h3'],
          'Bxf2',
          ['e4', 'f3'],
          {'from': 'b4', 'to': 'g4'},
          ['f3', 'g4']
        ],
        description: "Make sure blacks king can't run away"),
    //////
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2r1q1k1/1p5p/pb2p1pB/3pP3/bP1P2P1/P2B1Q2/7P/5R1K w - - 0 1',
        solution: [
          ['f3', 'f6'],
          'Rc7',
          ['f6', 'f8'],
          'Qxf8',
          ['f1', 'f8']
        ],
        description:
            'There is so many weak squares around the king try to exploit it with the queen'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5r1k/p3Np1r/n3pP2/2q1N2p/1b3Q2/3R4/3RKPPP/8 w - - 0 1',
        solution: [
          ['e5', 'f7'],
          {'from': 'h7', 'to': 'f7'},
          ['f4', 'h6'],
          {'from': 'f7', 'to': 'h7'},
          ['h6', 'f8']
        ],
        description: 'Sack the knight'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r3br1k/1p3p1p/p4b1B/3nNQ2/3P4/P5RP/1q3PP1/6K1 w - - 0 1',
        solution: [
          ['f5', 'f6'],
          'Nxf6',
          ['h6', 'g7'],
          {'from': 'h8', 'to': 'g8'},
          ['g7', 'f6']
        ],
        description:
            "If you saw a checkmate in your calculations correctly then it's ok to  sacrifice your queen"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/3bR2N/3p2k1/1p6/1P5Q/5PK1/r2q2PP/8 w - - 0 1',
        solution: [
          ['h7', 'f8'],
          'Kf5',
          ['e7', 'f7'],
          'Ke5',
          ['h4', 'e4']
        ],
        description:
            'This one tricky because checkmate will happen on the center of the board and the first move is with the queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r4q1k/p4Qp1/1p2pN1P/4P3/2r5/3n1N2/P3nPP1/R4K2 w - - 0 1',
        solution: [
          ['h6', 'g7'],
          'Qxg7',
          ['f7', 'h5'],
          'Qh6',
          ['h5', 'h6']
        ],
        description:
            'Open files specially in front of king will always help you checkmate king'),

    /////////////////////
    /////////////////////
    /////////////////////
    /////////////////////
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3kr3/q1p3p1/7p/2N5/4QpP1/1P5P/1K3P2/8 w - - 0 1',
        solution: [
          ['e4', 'd5'],
          'Ke7',
          ['d5', 'e6'],
          'Kf8',
          ['c5', 'd7']
        ],
        description: 'Queen and the knight are great to mate king'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            '1r2r1k1/1b1p1p1p/2qbpBp1/pp2P3/8/PBP1R2Q/1PP2PPP/6K1 w - - 0 1',
        solution: [
          ['h3', 'h7'],
          'Kxh7',
          ['e3', 'h3'],
          'Kg8',
          ['h3', 'h8']
        ],
        description:
            "If you saw a checkmate in your calculations correctly then it's ok to  sacrifice your queen"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '6k1/5R1p/1p1r2p1/4p3/P1Q2p2/3P2Pq/4PP1P/6K1 w - - 0 1',
        solution: [
          ['f7', 'd7'],
          'Qe6',
          ['c4', 'c8'],
          'Qe8',
          ['c8', 'e8']
        ],
        description:
            'Block blacks queen diagonally and blacks rook on the file'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/8/4p3/3kP3/2R2RK1/1B6/8/8 w - - 0 1',
        solution: [
          ['f4', 'f5'],
          {'from': 'e6', 'to': 'f5'},
          ['g4', 'f4'],
          'Ke6',
          ['c4', 'c7']
        ],
        description:
            'Sack the rook to avoid stale-mate and at the end bishop will make it'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/2P5/1R4pb/3N3k/2qP4/2N1P1P1/6P1/6K1 w - - 0 1',
        solution: [
          ['d5', 'f6'],
          'Kg5',
          ['c3', 'e4'],
          'Kf5',
          ['g3', 'g4']
        ],
        description:
            'Are you good with knights. After 2 knight moves pawn will mate the king'),

    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '4Q3/p7/1q4pk/3p3p/2p5/1PPn4/P2N2PP/7K b - - 0 1',
        solution: [
          ['d3', 'f2'],
          'Kg1',
          ['f2', 'h3'],
          'Kf1',
          ['b6', 'f2']
        ],
        description: 'All moves are with check'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/1kp1Rp2/pp6/4n2p/4r2P/B1P2pP1/PP3P2/7K b - - 0 1',
        solution: [
          ['e4', 'e1'],
          'Kh2',
          ['e5', 'g4'],
          'Kh3',
          ['e1', 'h1']
        ],
        description: 'All moves are with check'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1r5r/4q1bp/pNn1k1p1/4p3/3pN3/5Q2/PPP2PPP/2KR3R w - - 0 1',
        solution: [
          ['f3', 'b3'],
          'Kf5',
          ['b3', 'h3'],
          'Kxe4',
          ['h3', 'f3']
        ],
        description:
            'All three moves will be with queen and the funny things with this puzzle is after three moves it will return to its place'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r5k1/pbp2pp1/1p5p/1Q6/3Pnn1q/2P1NP2/PP4P1/3RR1K1 b - - 0 1',
        solution: [
          ['f4', 'h3'],
          'Kh2',
          ['h3', 'f2'],
          'Kg1',
          ['h4', 'h1']
        ],
        description:
            'There are so many variations to calculate but simply you have to sacrifice one of your knight'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r3kb1r/5ppp/p3pP2/3b2B1/P4Q2/2qB4/1pP3PP/1K1R1R2 b kq - 0 1',
        solution: [
          ['d5', 'a2'],
          'Kxa2',
          ['c3', 'a3'],
          'Kb1',
          ['a3', 'a1']
        ],
        description: 'Bring out whites king then try to mate him'),

    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/6k1/7p/6rP/2P1Nr2/pP1B1n1b/P4R2/2R4K b - - 0 1',
        solution: [
          ['h3', 'g2'],
          'Rxg2',
          ['f4', 'h4'],
          'Rh2',
          ['h4', 'h2']
        ],
        description: 'Sack the bishop'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '7r/5p1P/3p1k2/1p2pB2/1Pb1P3/1q2Q3/5P2/3R2K1 w - - 0 1',
        solution: [
          ['e3', 'h6'],
          'Ke7',
          ['h6', 'd6'],
          'Ke8',
          ['d6', 'd8']
        ],
        description: 'All three moves are done by queen'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '5rk1/Q1p3pp/2pb4/3n4/2NP3B/P2q3P/1r3PK1/R3R1N1 b - - 0 1',
        solution: [
          ['f8', 'f2'],
          'Bxf2',
          ['d3', 'g3'],
          'Kh1',
          ['g3', 'h2']
        ],
        description:
            'After Sacking the right rook then bring whits king to the corner'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r7/5pk1/2pp1ppq/8/p2bP2P/3P3b/PP4RQ/3B1K1R b - - 0 1',
        solution: [
          ['h6', 'd2'],
          'Be2',
          ['d2', 'c1'],
          'Bd1',
          ['c1', 'd1']
        ],
        description: 'Use the fact that whites rook is pinned'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r7/2pnkp2/4p3/1b1P2N1/1P4RP/2K1PP2/r7/6R1 b - - 0 1',
        solution: [
          ['a8', 'a3'],
          'Kd4',
          ['e6', 'e5'],
          'Ke4',
          ['b5', 'd3']
        ],
        description:
            'Bring the king to the crowd because its easer to checkmate'),

    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '2krb3/ppp3Rp/8/8/3PP2P/2P2r2/qPK2P2/4Q2R b - - 0 1',
        solution: [
          ['e8', 'a4'],
          'Kc1',
          ['a2', 'a1'],
          'Kd2',
          ['a1', 'b2']
        ],
        description: 'Bring the bishop to play'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '6k1/6pp/4q3/r1bpP3/1n4PP/PP6/1Qp5/K1R4R b - - 0 1',
        solution: [
          ['a5', 'a3'],
          'Qxa3',
          ['c5', 'd4'],
          'Qb2',
          ['e6', 'a6']
        ],
        description: 'Open file to the king'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '4Q3/r4Npk/4p2p/3qP3/1p6/5nP1/5K1P/5R2 b - - 0 1',
        solution: [
          ['a7', 'a2'],
          'Ke3',
          ['a2', 'a3'],
          'Kf2',
          ['d5', 'd2']
        ],
        description:
            'If your knight defended then you can check mate with queen in one move'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '6k1/5p2/4p2p/2NbP1P1/Pr5q/2R1p2P/2Q3P1/6K1 b - - 0 1',
        solution: [
          ['b4', 'b1'],
          'Kh2',
          ['h4', 'f4'],
          'g3',
          ['b1', 'h1']
        ],
        description: 'Sack the rook'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '2B5/R3NpBk/6pp/8/4n3/1P4P1/2r4P/3n2K1 b - - 0 1',
        solution: [
          ['d1', 'e3'],
          'Bd4',
          ['c2', 'g2'],
          'Kh1',
          ['e4', 'f2']
        ],
        description: 'One move with knight and no solution for it'),
  ];

  List<ChessPuzzle> checkMateInFour = [
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r5rk/2p1Nppp/3p3P/pp2p1P1/4P3/2qnPQK1/8/R6R w - - 0 1',
        solution: [
          ['h6', 'g7'],
          {'from': 'g8', 'to': 'g7'},
          ['h1', 'h7'],
          {'from': 'g7', 'to': 'h7'},
          ['f3', 'f6'],
          {'from': 'h7', 'to': 'g7'},
          ['a1', 'h1']
        ],
        description: 'Open up the file to the king'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1r2k1r1/pbppnp1p/1b3P2/8/Q7/B1PB1q2/P4PPP/3R2K1 w - - 0 1',
        solution: [
          ['a4', 'd7'],
          'Kxd7',
          ['d3', 'f5'],
          'Ke8',
          ['f5', 'd7'],
          'Kf8',
          ['a3', 'e7']
        ],
        description:
            'Sack the queen you have 2 brave bishops with an amazing rook'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1bqr3/ppp1B1kp/1b4p1/n2B4/3PQ1P1/2P5/P4P2/RN4K1 w - - 0 1',
        solution: [
          ['e4', 'e5'],
          'Kh6',
          ['g4', 'g5'],
          'Kh5',
          ['d5', 'f3'],
          'Bg4',
          ['e5', 'h2']
        ],
        description: 'Bring the king to your territory'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1b3kr/3pR1p1/ppq4p/5P2/4Q3/B7/P5PP/5RK1 w - - 0 1',
        solution: [
          ['e7', 'g7'],
          'Kxg7',
          ['e4', 'e7'],
          'Kg8',
          ['e7', 'f8'],
          'Kh7',
          ['f8', 'f7']
        ],
        description: 'Sack the rook and hunt the blacks king with your queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2k4r/1r1q2pp/QBp2p2/1p6/8/8/P4PPP/2R3K1 w - - 0 1',
        solution: [
          ['a6', 'a8'],
          'Rb8',
          ['c1', 'c6'],
          'Qc7',
          ['c6', 'c7'],
          'Kd8',
          ['a8', 'b8']
        ],
        description: 'All moves include checks'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2r1r3/p3P1k1/1p1pR1Pp/n2q1P2/8/2p4P/P4Q2/1B3RK1 w - - 0 1',
        solution: [
          ['f5', 'f6'],
          'Kh8',
          ['g6', 'g7'],
          'Kg8',
          ['f6', 'f7'],
          'Kxg7',
          ['f2', 'f6']
        ],
        description: 'Go crazy, move pawns recklessly'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1bk3r/pppq1ppp/5n2/4N1N1/2Bp4/Bn6/P4PPP/4R1K1 w - - 0 1',
        solution: [
          ['e5', 'f7'],
          'Qxf7',
          ['g5', 'f7'],
          'Kd7',
          ['c4', 'b5'],
          {'from': 'c7', 'to': 'c6'},
          ['e1', 'e7'],
        ],
        description: '2 knight moves then move bishop wisely'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '6kr/pp2r2p/n1p1PB1Q/2q5/2B4P/2N3p1/PPP3P1/7K w - - 0 1',
        solution: [
          ['h6', 'g7'],
          'Rxg7',
          ['e6', 'e7'],
          'Rf7',
          ['e7', 'e8'],
          'Qf8',
          ['c4', 'f7']
        ],
        description: 'Sack the queen and make another queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r3k3/pbpqb1r1/1p2Q1p1/3pP1B1/3P4/3B4/PPP4P/5RK1 w - - 0 1',
        solution: [
          ['d3', 'g6'],
          'Rxg6',
          ['e6', 'g6'],
          'Kd8',
          ['f1', 'f8'],
          'Qe8',
          ['g6', 'e8']
        ],
        description: 'Sack the bishop'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'rnb3kr/ppp4p/3b3B/3Pp2n/2BP4/4KRp1/PPP3q1/RN1Q4 w - - 0 1',
        solution: [
          ['f3', 'f8'],
          'Bxf8',
          ['d5', 'd6'],
          'Qd5',
          ['c4', 'd5'],
          'Be6',
          ['d5', 'e6']
        ],
        description: 'Move away blacks bishop to push a pawn'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '4r3/p4pkp/q7/3Bbb2/P2P1ppP/2N3n1/1PP2KPR/R1BQ4 b - - 0 1',
        solution: [
          ['a6', 'f1'],
          'Qxf1',
          ['e5', 'd4'],
          'Be3',
          ['e8', 'e3'],
          'Bxf7',
          ['e3', 'e2']
        ],
        description:
            'Sack the queen to give a whits king a check with dark-squared bishop'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2r2b2/p2q1P1p/3p2k1/4pNP1/4P1RQ/7K/2pr4/5R2 w - - 0 1',
        solution: [
          ['h4', 'h7'],
          'Kxh7',
          ['g5', 'g6'],
          'Kh8',
          ['g4', 'h4'],
          'Bh6',
          ['h4', 'h6']
        ],
        description: 'Sack the queen and go for checkmate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'rnbk2r1/ppp2Q1p/8/1B1Pp1q1/8/2N3B1/PPP3P1/R5K1 w - - 0 1',
        solution: [
          ['f7', 'g8'],
          'Ke7',
          ['g8', 'g5'],
          'Kd6',
          ['c3', 'e4'],
          'Kxd5',
          ['g5', 'e5']
        ],
        description: 'Sack the queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            'r1bnk2r/pppp1ppp/1b4q1/4P3/2B1N3/Q1Pp1N2/P4PPP/R3R1K1 w - - 0 1',
        solution: [
          ['e4', 'f6'],
          {'from': 'g7', 'to': 'f6'},
          ['e5', 'f6'],
          'Qe4',
          ['e1', 'e4'],
          'Ne6',
          ['a3', 'e7']
        ],
        description: 'Move knight first and try open up the file to the king'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/6pk/3pp2p/4p1nP/1P2P3/3P1rP1/4qPK1/2QN3R b - - 0 1',
        solution: [
          ['f3', 'g3'],
          'Kxg3',
          ['e2', 'f3'],
          'Kh4',
          ['f3', 'h1'],
          'Kg3',
          ['h1', 'h3']
        ],
        description: 'Sack the rook and 3 other moves are with queen'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '6rk/7p/pp3b2/2pbqP2/5Q2/5R1P/P6P/2B2R1K b - - 0 1',
        solution: [
          ['e5', 'e2'],
          'Rg1',
          ['d5', 'f3'],
          'Qxf3',
          ['e2', 'f3'],
          'Rg2',
          ['f3', 'g2']
        ],
        description:
            'Increase pressure on the pinned rook by moving your queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r2r4/p1p2p1p/n5k1/1p5N/2p2R2/5N2/P1K3PP/5R2 w - - 0 1',
        solution: [
          ['f4', 'f6'],
          'Kxh5',
          ['g2', 'g4'],
          'Kxg4',
          ['f1', 'g1'],
          'Kh5',
          ['g1', 'g5']
        ],
        description: 'Sack the knight and a pawn'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            'r1qbr2k/1p2n1pp/3B1n2/2P1Np2/p4N2/PQ4P1/1P3P1P/3RR1K1 w - - 0 1',
        solution: [
          ['e5', 'f7'],
          'Kg8',
          ['f7', 'h6'],
          'Kh8',
          ['b3', 'g8'],
          'Rxg8',
          ['h6', 'f7']
        ],
        description:
            'check the king with your knight and use discover check to place your knight to important square and then  sack the queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2q2r2/5rk1/4pNpp/p2pPn2/P1pP2QP/2P2R2/2B3P1/6K1 w - - 0 1',
        solution: [
          ['g4', 'g6'],
          'Kh8',
          ['c2', 'f5'],
          {'from': 'e6', 'to': 'f5'},
          ['g6', 'h6'],
          'Rh7',
          ['h6', 'h7']
        ],
        description:
            'Sack the queen and remove the only defender which is knight'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5q1k/p3R1rp/2pr2p1/1pN2bP1/3Q1P2/1B6/PP5P/2K5 w - - 0 1',
        solution: [
          ['d4', 'g7'],
          'Qxg7',
          ['e7', 'e8'],
          'Qf8',
          ['e8', 'f8'],
          'Kg7',
          ['f8', 'g8']
        ],
        description: 'Sack the queen and go for checkmate with the rook'),
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
        solution: [
          ['h1', 'b1'],
          'Ra6',
          ['d6', 'g3'],
          'Qa3',
          ['c3', 'e4']
        ],
        description:
            'One check with night will checkmate the most important thing is how you get to the king with your knight'),
    ChessPuzzle(
        playersName: 'Boris Grachev vs Ramil Faizrakhmanov, Sochi, 2019',
        isWhiteToMove: true,
        puzzle: '4rr1k/1pb1R2p/p4p2/2P3N1/1P4Q1/P7/1B1q1PPP/6K1 w - - 0 1',
        solution: [
          ['g5', 'f7'],
          'Rxf7',
          ['e7', 'e8']
        ],
        description: 'Sack the knight'),
    ChessPuzzle(
        playersName: 'Babu Lalith vs Alexander Donchenko, Stockholm, 2019',
        isWhiteToMove: true,
        puzzle: '7r/pp2qPkp/2p5/5Qb1/P3B3/1P4P1/7P/5R1K w - - 0 1',
        solution: [
          ['f7', 'f8'],
          'Rxf8',
          ['f5', 'h7']
        ],
        description: 'Mate in 2'),
    ChessPuzzle(
        playersName: 'Magnus Carlsen vs Viswanathan Anand, Stavanger, 2019',
        isWhiteToMove: true,
        puzzle: '1Q6/3q1r2/2pP3R/4kp1p/4p1pP/4P3/5PP1/6K1 w - - 0 1',
        solution: [
          ['b8', 'b2'],
          'Kd5',
          ['b2', 'd4']
        ],
        description: 'Beat Anand with 2 moves'),
    ChessPuzzle(
        playersName: 'Parham Maghsoodloo vs Kaido Kulaots, Moscow, 2019',
        isWhiteToMove: false,
        puzzle: '1r4k1/5p2/3p3p/p2P2pP/4B1P1/1r3P2/KPR4Q/4q3 b - - 0 1',
        solution: [
          ['b3', 'a3'],
          'Kxa3',
          ['e1', 'a1']
        ],
        description: 'Mate in two, with a very beautiful Sacrifice'),
    ChessPuzzle(
        playersName: 'Alexander Grischuk vs Nikita Vitiugov, Riga, 2019',
        isWhiteToMove: true,
        puzzle: 'r1bbqrk1/pp3ppp/2p1pB2/4N3/3PP3/1R6/P3QPPP/3R2K1 w - - 0 1',
        solution: [
          ['f6', 'g7'],
          'Kxg7',
          ['b3', 'g3'],
          'Kh8',
          ['e2', 'h5'],
          'Bf6',
          ['g3', 'h3']
        ],
        description:
            'Sack the bishop to get to the king and include your rook and queen to the attack'),
    ChessPuzzle(
        playersName: 'Peter Leko vs Sebastian Bogner, Biel, 2019',
        isWhiteToMove: true,
        puzzle: '5rk1/1p4n1/p1p5/2P4p/1P4Q1/P6P/q2BR2K/8 w - - 0 1',
        solution: [
          ['g4', 'g7'],
          'Kxg7',
          ['d2', 'c3']
        ],
        description: 'Discover attack with check'),
    ChessPuzzle(
        playersName: 'Shakhriyar Mamedyarov vs Anish Giri, Paris, 2019',
        isWhiteToMove: true,
        puzzle: '8/p2q2p1/3Prp1k/6p1/2Q5/6PP/P2R3K/8 w - - 0 1',
        solution: [
          ['c4', 'e6'],
          'Qxe6',
          ['d6', 'd7']
        ],
        description: 'Your passed pawn is just unstoppable'),
    ChessPuzzle(
        playersName:
            'Ian Nepomniachtchi vs Maxime Vachier-Lagrave, Paris, 2019',
        isWhiteToMove: true,
        puzzle: '4r3/1p2n1bk/pq2p1pp/4p3/4P2B/1BP5/PP4PP/3R1Q1K w - - 0 1',
        solution: [
          ['f1', 'f7']
        ],
        description: 'One move threats every black pieces '),
    ChessPuzzle(
        playersName: 'Magnus Carlsen vs Lenier Dominguez, Saint Louis, 2019',
        isWhiteToMove: true,
        puzzle: '3r4/pp1b2pk/6Np/3P1pqP/2Bnr3/6Q1/P4PP1/2RR2K1 w - - 0 1',
        solution: [
          ['g3', 'g5'],
          {'from': 'h6', 'to': 'g5'},
          ['f2', 'f3'],
          {'from': 'd4', 'to': 'e2'},
          ['g1', 'f2'],
          'Nxc1',
          ['f3', 'e4']
        ],
        description:
            "This one is hard because it is Magnus Carlsen so don't worry exchange queens and don't be scared of blacks knight fork on you"),
    ChessPuzzle(
        playersName: 'Emilio Cordova vs Haik Der Manuelian, Sturbridge, 2019',
        isWhiteToMove: true,
        puzzle:
            'r2q1rk1/pp3ppp/3b1n2/3pn3/6b1/1PN1PN2/PB2BPPP/R2QK2R w KQ - 0 1',
        solution: [
          ['f3', 'e5'],
          'Bxe2',
          ['c3', 'e2'],
          'Bxe5',
          ['b2', 'e5']
        ],
        description: 'You can win a piece thanks for your dark-squared bishop'),
    ChessPuzzle(
        playersName: 'Liren Ding vs Kirill Alekseenko, Khanty Mansyisk, 2019',
        isWhiteToMove: true,
        puzzle:
            '4rrk1/1ppq1pb1/p2p1np1/3Pn1Bp/2P3bP/1PN3P1/P2QNPB1/4RRK1 w - - 0 1',
        solution: [
          ['g5', 'f6'],
          'Bxe2',
          ['f6', 'g7'],
          'Bxf1',
          ['d2', 'h6']
        ],
        description:
            'First move is taking the knight then attack the bishop with a pawn'),
    ChessPuzzle(
        playersName: 'Hikaru Nakamura vs Axel Bachmann, Douglas, 2019',
        isWhiteToMove: true,
        puzzle: '6k1/5ppp/1BBnp3/8/4P3/1P6/n5PP/6K1 w - - 0 1',
        solution: [
          ['b6', 'c5'],
          'Nc8',
          ['c6', 'b7']
        ],
        description: 'Trap one of the knight'),
    ChessPuzzle(
        playersName: "Bassem Amin vs Etienne Bacrot, Cap d'Agde, 2019",
        isWhiteToMove: true,
        puzzle: '1r4k1/2p2ppp/2p5/8/2Q1n3/2P1PN1P/PP4q1/2KR4 w - - 0 1',
        solution: [
          ['c4', 'b4'],
        ],
        description:
            'When you are attacked the best thing to do is you counter attack them'),
    ChessPuzzle(
        playersName:
            'Timur Gareev vs Vitaliy Bernadskiy, Gmund am Tegerns, 2019',
        isWhiteToMove: true,
        puzzle: '6k1/pp3rp1/2p2p1p/3n1P2/P2P2b1/BP1B2P1/5PK1/4R3 w - - 0 1',
        solution: [
          ['f2', 'f3'],
          'Bh5',
          ['e1', 'h1']
        ],
        description: 'Trap the bishop but you need to be accurate'),
    ChessPuzzle(
        playersName: 'Liren Ding vs Levon Aronian, Kolkata, 2019',
        isWhiteToMove: true,
        puzzle:
            '1rbq2k1/4brn1/p2p1npB/2pPpp2/PpP1P3/2NB1PP1/1PKQN2R/7R w - - 0 1',
        solution: [
          ['h6', 'g7'],
          'Kxg7',
          ['d2', 'h6']
        ],
        description: 'Opposite kings castled,  who attacks first win '),
    ChessPuzzle(
        playersName: 'David Anton Guijarro vs Rasmus Svane, Germany, 2019',
        isWhiteToMove: true,
        puzzle: '3rr1k1/4nppp/p5b1/2q5/2PN4/1PB1R1P1/P2P1QBP/6K1 w - - 0 1',
        solution: [
          ['d4', 'c6'],
          'Nxc6',
          ['e3', 'e8'],
          'Rxe8',
          ['f2', 'c5']
        ],
        description: 'First move is just brilliant its with knight'),
    ChessPuzzle(
        playersName: 'Liren Ding vs Maxime Vachier-Lagrave, London, 2019',
        isWhiteToMove: true,
        puzzle: '3q1k2/8/3pB2n/2pPp2R/4Pp2/3P4/pr3P1P/6QK w - - 0 1',
        solution: [
          ['h5', 'f5'],
        ],
        description: 'Rook'),
    ChessPuzzle(
        playersName:
            'Alexander Grischuk vs Maxime Vachier-Lagrave, Paris, 2019',
        isWhiteToMove: true,
        puzzle: '8/4r1Bk/1pKpB1pP/p2P4/Pr3b2/7R/8/8 w - - 0 1',
        solution: [
          ['e6', 'g8'],
          'Kxg8',
          ['h6', 'h7']
        ],
        description: 'Go for queening'),
    ChessPuzzle(
        playersName: 'Levon Aronian vs Magnus Carlsen, London, 2019',
        isWhiteToMove: true,
        puzzle: '8/7p/4Q1pk/1r3p2/1B2p3/Pp1r2P1/5PKP/2q5 w - - 0 1',
        solution: [
          ['b4', 'f8'],
          'Kh5',
          ['e6', 'e7'],
          'Qg5',
          ['e7', 'h7']
        ],
        description:
            'First move is with your bishop but second move is the most important'),
  ];

  List<ChessPuzzle> T2018 = [
    ChessPuzzle(
        playersName:
            'Gerardo Artola Pola vs Jonathan Arnott, Porto Carras, 2018',
        isWhiteToMove: false,
        puzzle: 'r1b2rk1/ppR3pp/4pq2/1B1pn3/3b4/5NN1/P2B1PPP/3QK2R b K - 0 1',
        solution: [
          ['e5', 'f3'],
          {'from': 'g2', 'to': 'f3'},
          ['f6', 'e5'],
          'Qe2',
          ['e5', 'c7']
        ],
        description:
            'There is undefended rook take it out from the game with queen'),
    ChessPuzzle(
        playersName: 'Hao Wang vs Vladimir Potkin, Porto Carras, 2018',
        isWhiteToMove: true,
        puzzle: '5rk1/R3r1p1/3p3p/3bqp2/4p3/2R1P1PP/5P2/2Q2BK1 w - - 0 1',
        solution: [
          ['a7', 'a5'],
          'Kh7',
          ['c1', 'd2']
        ],
        description: 'Attack blacks bishop and put pressure on it'),
    ChessPuzzle(
        playersName:
            'Davaademberel Nominerdene vs Ogulcan Kanmazalp, Graz, 2018',
        isWhiteToMove: true,
        puzzle: '3q3k/2p5/P1Pp4/3P3b/4Pp1p/r6P/2BQ2P1/4N2K w - - 0 1',
        solution: [
          ['c2', 'd1'],
          'Bxd1',
          ['d2', 'b2']
        ],
        description:
            'There is undefended rook and also there is an open diagonal line to the king'),
    ChessPuzzle(
        playersName: 'David Paravyan vs Arjun Erigaisi, Moscow, 2018',
        isWhiteToMove: true,
        puzzle: '8/p3kp2/4pn1p/1p1qQ3/5P1B/P1P5/KP6/8 w - - 0 1',
        solution: [
          ['e5', 'd5'],
          {'from': 'e6', 'to': 'd5'},
          ['f4', 'f5']
        ],
        description:
            'This one is long term plan after blacks pawn run out of moves you will win his knight'),
    ChessPuzzle(
        playersName: 'Shakhriyar Mamedyarov vs Daniil Dubov, Moscow, 2018',
        isWhiteToMove: false,
        puzzle: '5rk1/1b3p1p/p4p2/5q2/QP2N3/3pKBP1/P1r4P/3RR3 b - - 0 1',
        solution: [
          ['b7', 'e4'],
          'Bxe4',
          ['f5', 'f2'],
          'Kxd3',
          ['f8', 'd8']
        ],
        description: 'First move is with bishop and the others are clear'),
    ChessPuzzle(
        playersName: 'Sergiy Zavgorodniy vs Anton Korobov, Batumi, 2018',
        isWhiteToMove: false,
        puzzle: '3qrbk1/p1p2ppp/1r6/2pn1Q2/3P4/1P6/PBP1NPPP/2KR3R b - - 0 1',
        solution: [
          ['b6', 'f6'],
          'Qd3',
          ['f6', 'f2'],
          {'from': 'h1', 'to': 'e1'},
          ['e8', 'e2'],
          'Rxe2',
          ['d5', 'f4']
        ],
        description:
            'Chase the queen then use your rooks at the end use a knight fork'),
    ChessPuzzle(
        playersName: 'Ivan Cheparinov vs Yan Fang, China, 2018',
        isWhiteToMove: true,
        puzzle: '1nr2k2/4Rpp1/1p6/1P1r4/3P2p1/2p3P1/5P1P/2B1R1K1 w - - 0 1',
        solution: [
          ['c1', 'a3'],
          'Kg8',
          ['e7', 'e8']
        ],
        description: "Don't you think your bishop needs better square"),
    ChessPuzzle(
        playersName: 'Alexei Shirov vs Xianliang Xu, Karlsruhe, 2018',
        isWhiteToMove: true,
        puzzle: '7r/p2bp1kP/3p1pP1/4q3/2pNPN2/2P5/PP6/K5Q1 w - - 0 1',
        solution: [
          ['d4', 'f5'],
          'Bxf5',
          ['f4', 'h5']
        ],
        description:
            'One check with knight will guaranty winning position but there is a problem queen and bishop will control every where so you have to block them'),
    ChessPuzzle(
        playersName: 'Vladislav Artemiev vs Alexey Sarana, Sochi, 2018',
        isWhiteToMove: true,
        puzzle: '8/ppq1k3/6Rp/2p5/3b4/3B1R1P/P5P1/7K w - - 0 1',
        solution: [
          ['d3', 'c4']
        ],
        description: 'One simple move black can not survive'),
    ChessPuzzle(
        playersName: 'Ian Nepomniachtchi vs Viktor Bologan, Poikovsky, 2018',
        isWhiteToMove: true,
        puzzle: 'r3rk2/p1p2p1p/5QpP/8/4q1P1/2B5/1P3P2/2KR4 w - - 0 1',
        solution: [
          ['f6', 'g7'],
          'Ke7',
          ['d1', 'e1']
        ],
        description: 'Can you take blacks queen just like Ian Nepomniachtchi'),
    ChessPuzzle(
        playersName: 'Shanglei Lu vs Yi Wei, Tianjin, 2018',
        isWhiteToMove: false,
        puzzle: '5bk1/1p4r1/7p/p3Prp1/P2P3P/1qP2RQ1/1P4RB/7K b - - 0 1',
        solution: [
          ['b3', 'd1']
        ],
        description: 'Queen'),
    ChessPuzzle(
        playersName: 'Shakhriyar Mamedyarov vs Levon Aronian, Leuven, 2018',
        isWhiteToMove: false,
        puzzle: '8/5pkp/6p1/p7/P5N1/3R1PKP/6P1/4r1b1 b - - 0 1',
        solution: [
          ['h7', 'h5'],
          'Nh2',
          ['h5', 'h4']
        ],
        description: 'Trap the poor knight'),
    ChessPuzzle(
        playersName: "Jorden Van Foreest vs Erwin L'Ami, Amsterdam, 2018",
        isWhiteToMove: true,
        puzzle: '3r4/1pb2ppk/p1p2q1p/P1B1pP2/1P2Q3/2P2RPP/3r1P2/R5K1 w - - 0 1',
        solution: [
          ['c5', 'e7'],
          'Qxe7',
          ['f5', 'f6']
        ],
        description: 'There is no way blacks queens can survive'),
    ChessPuzzle(
        playersName: 'Boris Gelfand vs Stanislav Novikov, St. Petersburg, 2018',
        isWhiteToMove: true,
        puzzle: '5r2/1prqpp1k/5b2/2pP1P1p/1R6/P2QBP1P/7K/6R1 w - - 0 1',
        solution: [
          ['b4', 'h4'],
          'Bxh4',
          ['f5', 'f6']
        ],
        description: 'Sack the Rook'),
    ChessPuzzle(
        playersName:
            'Viswanathan Anand vs Mikheil Mchedlishvili, St. Petersburg, 2018',
        isWhiteToMove: true,
        puzzle: '4r3/1p4pk/2p4p/PpPp1bnq/1P1B4/4RP2/1Q2N1P1/6K1 w - - 0 1',
        solution: [
          ['e2', 'g3'],
          'Qg6',
          ['e3', 'e8']
        ],
        description: 'knight forks'),
    ChessPuzzle(
        playersName:
            'Meri Arabidze vs Stavroula Tsolakidou, St. Petersburg, 2018',
        isWhiteToMove: true,
        puzzle: '2k5/p2r1p2/n2q3p/PQpr2p1/8/5P2/5BPP/RR4K1 w - - 0 1',
        solution: [
          ['f2', 'g3']
        ],
        description: 'Bishop'),
    ChessPuzzle(
        playersName: 'Alireza Firouzja vs Giga Kuparadze, Batumi, 2018',
        isWhiteToMove: true,
        puzzle: 'r3k1n1/1p4QR/p3q1p1/4pb2/4N3/2P2P2/PP3P2/2K5 w - - 0 1',
        solution: [
          ['e4', 'd6'],
          'Qxd6',
          ['g7', 'f7']
        ],
        description: 'Do not rush to take the knight'),
    ChessPuzzle(
        playersName: 'Baadur Jobava vs Marco Gallana, Spilimbergo, 2018',
        isWhiteToMove: true,
        puzzle:
            'r1bq1rk1/5pn1/p4p1Q/1pp1pR2/P2pP1P1/1P1P2NP/2P3B1/6K1 w - - 0 1',
        solution: [
          ['f5', 'h5'],
          'Nxh5',
          ['g3', 'h5']
        ],
        description: 'check mate in 3, Sack something '),
    ChessPuzzle(
        playersName: 'Levon Aronian vs Fabiano Caruana, Saint Louis, 2018',
        isWhiteToMove: false,
        puzzle: '5rk1/p4ppp/1r4q1/3Q3n/3Pp3/1NP2n1P/PP3PP1/R3RB1K b - - 0 1',
        solution: [
          ['h5', 'g3'],
          {'from': 'f2', 'to': 'g3'},
          ['g6', 'g3'],
          {'from': 'g2', 'to': 'f3'},
          ['b6', 'g6']
        ],
        description: 'Fabiano Caruana sacrificed two knights to get the king'),
    ChessPuzzle(
        playersName: 'Fabiano Caruana vs Sergey Karjakin, Saint Louis, 2018',
        isWhiteToMove: true,
        puzzle: 'r5k1/pp4pp/2n1br2/1NP2p2/4p3/P3P3/5PPP/3RKB1R w K - 0 1',
        solution: [
          ['b5', 'c7'],
          {'from': 'a8', 'to': 'f8'},
          ['c7', 'e6'],
          'Rxe6',
          ['f1', 'c4']
        ],
        description: 'Your bishop will decide the game'),
  ];

  List<ChessPuzzle> T2017 = [
    ChessPuzzle(
        playersName: 'H Ettehadi vs Alireza Firouzja, Tabriz, 2017',
        isWhiteToMove: false,
        puzzle: 'r4rk1/pb5p/1pnq2p1/2p5/3bPBB1/P2P1Q2/1P4PP/R2N1R1K b - - 0 1',
        solution: [
          ['d4', 'e5'],
          'g3',
          ['g6', 'g5']
        ],
        description: 'Put pressure on the pinned bishop'),
    ChessPuzzle(
        playersName: 'Tamas Petenyi vs Aryan Tari, Antalya, 2017',
        isWhiteToMove: true,
        puzzle: '1k4nr/2p3pp/2pb1p2/8/RrN5/6P1/1P2PP1P/2B2RK1 w - - 0 1',
        solution: [
          ['c4', 'd6'],
          'Rxa4',
          ['d6', 'f7']
        ],
        description:
            'There is a rook stuck in the right corner can you get him'),
    ChessPuzzle(
        playersName:
            'Mihai-Lucian Grunberg vs Jonathan Westerberg, Stockholm, 2017',
        isWhiteToMove: true,
        puzzle: '2q2rk1/p1n1bppp/4p3/2rpP3/PN6/6P1/1BQ2P1P/2R2RK1 w - - 0 1',
        solution: [
          ['b4', 'c6'],
          'Rxc2',
          ['c6', 'e7'],
          'Kh8',
          ['e7', 'c8'],
          'Rxc1',
          ['f1', 'c1']
        ],
        description:
            'ignore your queen, At the end blacks knight will be pinned '),
    ChessPuzzle(
        playersName: 'Eltaj Safarli vs Lucas Van Foreest, Basel, 2017',
        isWhiteToMove: true,
        puzzle: 'R7/3bk2p/5ppB/2Nr4/1n6/7P/5PPK/8 w - - 0 1',
        solution: [
          ['h6', 'f8']
        ],
        description: 'Bishop'),
    ChessPuzzle(
        playersName: 'Jinshi Bai vs Sam Collins, Basel, 2017',
        isWhiteToMove: true,
        puzzle: 'r2q1rk1/2p2ppp/np3b2/p2b4/P1p5/5NP1/1PQ2PBP/R1BR2K1 w - - 0 1',
        solution: [
          ['f3', 'g5'],
          'Bxg5',
          ['d1', 'd5']
        ],
        description: 'Discover attack with threatening mate'),
    ChessPuzzle(
        playersName: 'Eltaj Safarli vs Alexander Donchenko, Basel, 2017',
        isWhiteToMove: true,
        puzzle: 'r1b3rk/1p3ppp/pnq1p3/7N/8/6Q1/PPP2PPP/2KR1B1R w - - 0 1',
        solution: [
          ['d1', 'd8'],
          'Bd7',
          ['g3', 'g7']
        ],
        description: 'Use your rook'),
    ChessPuzzle(
        playersName: 'Ian Nepomniachtchi vs Baadur Jobava, Riyadh, 2017',
        isWhiteToMove: true,
        puzzle: 'kr6/n3qpr1/Q1p1pn2/1NP3pp/3P4/1R6/P4PPP/4R1K1 w - - 0 1',
        solution: [
          ['b5', 'a7'],
          'Qxa7',
          ['b3', 'b8'],
          'Kxb8',
          ['e1', 'b1'],
          'Ka8',
          ['a6', 'c8']
        ],
        description: 'Bring the other rook to the show after some exchanges'),
    ChessPuzzle(
        playersName: 'Sayed Akbarinia vs Martin Martinez, Barcelona, 2017',
        isWhiteToMove: false,
        puzzle: '8/3n3k/2Q3p1/2P4p/4B3/3P2KP/1q6/8 b - - 0 1',
        solution: [
          ['h5', 'h4'],
          'Kxh4',
          ['b2', 'f2'],
          'Kg5',
          ['f2', 'g3']
        ],
        description:
            'First move is not with a queen nor knight its with a pawn'),
    ChessPuzzle(
        playersName: 'Benjamin Gledura vs Hikaru Nakamura, Gibraltar, 2017',
        isWhiteToMove: false,
        puzzle:
            'r2r1bk1/1pp2q1p/2n1bpp1/3n4/2NB4/PQ2PNP1/5PBP/2RR2K1 b - - 0 1',
        solution: [
          ['d5', 'b6'],
          {'from': 'f3', 'to': 'd2'},
          ['b6', 'c4'],
          'Nxc4',
          ['c6', 'a5']
        ],
        description: 'Attack the pinned knight just like Hikaru Nakamura'),
    ChessPuzzle(
        playersName: 'Slobodan Mirkovic vs Marko Maksimovic, Belgrade, 2017',
        isWhiteToMove: true,
        puzzle: '5k2/p2q2p1/1p1Pr2p/2pQbp2/5p2/2P2P2/PP3NPP/3R1K2 w - - 0 1',
        solution: [
          ['d1', 'e1']
        ],
        description: 'Attack the pinned bishop'),
    ChessPuzzle(
        playersName: 'Sigitas Kalvaitis vs Valdas Bucinskas, Lithuania, 2017',
        isWhiteToMove: true,
        puzzle: '7r/6bk/p1p1Qn2/7p/1ppP3P/6R1/1P1B1PPK/3q4 w - - 0 1',
        solution: [
          ['e6', 'f5'],
          'Kg8',
          ['f5', 'f6']
        ],
        description: 'Use the power of your queen'),
    ChessPuzzle(
        playersName: 'Bjarke Jensen vs Lars Hansen, Denmark, 2017',
        isWhiteToMove: false,
        puzzle: '4r1kr/pb1p2pp/3Q1n2/b1Bp1P2/8/P2B4/1q2NPPP/RN3K1R b - - 0 1',
        solution: [
          ['b2', 'c1'],
          'Nxc1',
          ['e8', 'e1']
        ],
        description:
            'Checkmate in 2, some times GMs miss those checkmates dont worry'),
    ChessPuzzle(
        playersName: 'Anasrasia Travkina vs Elena Semenova, Riga, 2017',
        isWhiteToMove: true,
        puzzle: 'r5k1/1p1q1p2/p5p1/2pP4/3brB1Q/P6R/6PP/5R1K w - - 0 1',
        solution: [
          ['h4', 'h7'],
          'Kf8',
          ['f4', 'd6']
        ],
        description: 'Checkmate blacks king or win queen'),
    ChessPuzzle(
        playersName: 'Wesley So vs Magnus Carlsen, Internet, 2017',
        isWhiteToMove: false,
        puzzle: 'r5k1/p3pp1p/5qp1/Q1Nr4/8/1P2P3/2R1nPPP/5R1K b - - 0 1',
        solution: [
          ['f6', 'f2'],
          'Qe1',
          ['e2', 'g3'],
          {'from': 'h2', 'to': 'g3'},
          ['d5', 'h5']
        ],
        description:
            'Be brave sack every thing in order to checkmate blacks king'),
    ChessPuzzle(
        playersName: 'Lucas Van Foreest vs Thomas Beerdsen, Amsterdam, 2017',
        isWhiteToMove: false,
        puzzle: '1k5r/pbq3p1/3bQ3/2p5/3p1P2/3P2P1/P1P1N3/2B1RK2 b - - 0 1',
        solution: [
          ['c7', 'c6'],
          'Qe4',
          ['c6', 'd7']
        ],
        description: 'Queen'),
    ChessPuzzle(
        playersName: 'Filemon Cruz vs Miguel Munoz Pantoja, Barcelona, 2017',
        isWhiteToMove: false,
        puzzle:
            'r1bqr1k1/pp3pbp/6p1/3p1n2/2pP4/P1N1PPP1/RP1Q2BP/2N1R1K1 b - - 0 1',
        solution: [
          ['e8', 'e3'],
          'Rxe3',
          ['g7', 'd4'],
          'Nd1',
          ['d8', 'b6']
        ],
        description: "Winning two pawn is not bad isn't it?"),
    ChessPuzzle(
        playersName: 'Murali Karthikeyan vs Ferenc Berkes, Moscow, 2017',
        isWhiteToMove: false,
        puzzle: '1k4r1/pp2q1pb/2prN2p/b2nPP1P/P7/1B3Q2/1P3K2/2BR3R b - - 0 1',
        solution: [
          ['d6', 'e6'],
          {'from': 'f5', 'to': 'e6'},
          ['g8', 'f8']
        ],
        description: 'Open the file to the king'),
    ChessPuzzle(
        playersName: 'Marin Bosiocic vs Ian Nepomniachtchi, Riyadh, 2017',
        isWhiteToMove: false,
        puzzle: '3r2k1/4bpp1/7p/2p5/2R5/4PN1P/1qQ2PP1/1rR3K1 b - - 0 1',
        solution: [
          ['b1', 'c1'],
          'Qxc1',
          ['b2', 'e2'],
          'Qc2',
          ['d8', 'd1'],
          'Kh2',
          ['e7', 'd6']
        ],
        description:
            'After exchanging rooks there is a move with queen if you find it then you can beat Ian Nepomniachtchi for sure'),
    ChessPuzzle(
        playersName: 'Shakhriyar Mamedyarov vs Magnus Carlsen, Riyadh, 2017',
        isWhiteToMove: false,
        puzzle: '8/p4ppk/1p5p/1P1Q4/P3r2P/5qP1/5P2/3R2K1 b - - 0 1',
        solution: [
          ['e4', 'e1']
        ],
        description: 'Simple discover attack with check'),
    ChessPuzzle(
        playersName: 'Magnus Carlsen vs Sergey Karjakin, Stavanger, 2017',
        isWhiteToMove: true,
        puzzle: 'r4knR/p4pq1/1p1b4/3P4/4R3/2Q3PP/5PK1/8 w - - 0 1',
        solution: [
          ['h8', 'g8'],
          'Qxg8',
          ['c3', 'f6'],
          'Ba3',
          ['e4', 'g4'],
          'Qh7',
          ['d5', 'd6']
        ],
        description:
            'If you solve this one. you are great just like magnus after exchange the rook to the knight then pin every piece on the board and go for making another queen'),
  ];

  List<ChessPuzzle> T2016 = [
    ChessPuzzle(
        playersName: 'Magnus Carlsen vs Sergey Karjakin, Bilbao, 2016',
        isWhiteToMove: true,
        puzzle: '5r1k/1p1qp3/5n1b/p2Ppp2/1r2P2P/1BN3Q1/PP4R1/6RK w - - 0 1',
        solution: [
          ['g3', 'g6'],
          'Ng8',
          ['g6', 'h5'],
        ],
        description: "Attack the bishop then Move queen wisly"),

    ChessPuzzle(
        playersName: 'Hikaru Nakamura vs Jeffrey Xiong, Saint Louis, 2016',
        isWhiteToMove: true,
        puzzle: '4n1k1/6qp/1p1pp1p1/2p3P1/2PN4/2B5/1P3QPP/1b4K1 w - - 0 1',
        solution: [
          ['d4', 'f5'],
        ],
        description:
            "You don't need pawn you need check mate or queen to win the game"),

    ChessPuzzle(
        playersName: 'Gawain Jones vs Alexander Fier Alexander, Auckland, 2016',
        isWhiteToMove: true,
        puzzle: '5Bk1/Q2b3p/4p1p1/3p4/3q4/6PB/P1n2P1K/8 w - - 0 1',
        solution: [
          ['f8', 'c5'],
          'Qa4',
          ['a7', 'b8']
        ],
        description:
            "Your queen and the bishop at the same time attacked do something save both and try to checkmate black"),

    ChessPuzzle(
        playersName: 'Ivan Popov vs Vitaly Sivuk, New Delhi, 2016',
        isWhiteToMove: true,
        puzzle: 'r4k2/p1pbq3/2p2p1r/3pP2p/5Pn1/2P2BP1/PP1NQ3/2KR3R w - - 0 1',
        solution: [
          ['f3', 'g4'],
          'Bxg4',
          ['e2', 'g4'],
          {'from': 'h5', 'to': 'g4'},
          ['h1', 'h6'],
          'Qg7',
          ['d1', 'h1']
        ],
        description:
            "Think 5 or 6 moves ahead then do the big Sack just like those GMs"),

    ChessPuzzle(
        playersName: 'Duc Hoa Nguyen vs S Nitin, New Delhi, 2016',
        isWhiteToMove: true,
        puzzle: 'q3kr2/4bpQ1/4pp2/r6p/2PN1P2/1P3b2/1B2R2P/1K2R3 w - - 0 1',
        solution: [
          ['d4', 'e6'],
          {'from': 'f7', 'to': 'e6'},
          ['e2', 'e6']
        ],
        description:
            "Waste your knight you have double rooks on the same file to the king"),

    ChessPuzzle(
        playersName: 'G Ostmoe vs Aryan Tari, Norway, 2016',
        isWhiteToMove: true,
        puzzle: '3rkr1R/R7/1p2q1p1/p2bP1p1/3p4/PP5Q/1B3P1P/6K1 w - - 0 1',
        solution: [
          ['h8', 'f8'],
          'Kxf8',
          ['h3', 'h8'],
          'Qg8',
          ['h8', 'f6']
        ],
        description:
            "If you solve this puzzle it means you can beat Aryan Tari just kidding, exchange rooks then you are 2 moves far from winning the game"),
    ChessPuzzle(
        playersName: 'Karen Grigoryan vs Arman Pashikian, Yerevan, 2016',
        isWhiteToMove: true,
        puzzle: '2rr2k1/4pp1p/6p1/pQ1N4/P1R5/1P1n2P1/1b2qPBP/5RK1 w - - 0 1',
        solution: [
          ['c4', 'e4'],
          'Qc2',
          ['d5', 'e7']
        ],
        description:
            "You can't do the knight forks because of blacks queen so kick him out then do the knight forks"),

    ChessPuzzle(
        playersName: 'Vitaliy Bernadskiy vs Dmitriy Khegay, Moscow, 2016',
        isWhiteToMove: true,
        puzzle: '7r/p4R2/1pq4k/6pp/3p4/3P4/PPP4P/1KQ5 w - - 0 1',
        solution: [
          ['c1', 'f1'],
        ],
        description:
            "One move and there is no solution for it. Use your queen"),

    ChessPuzzle(
        playersName: 'Viswanathan Anand vs Levon Aronian, Zuerich, 2016',
        isWhiteToMove: true,
        puzzle:
            'rn1qr3/ppp2pp1/3p1nk1/4pR2/2P1P3/P1N1P2Q/1PP3PP/R5K1 w - - 0 1',
        solution: [
          ['h3', 'h4'],
          'Nh7',
          ['h4', 'h5']
        ],
        description: "Mate in 2, Don't overthink it's one simple move"),

    ChessPuzzle(
        playersName: 'Wesley So vs Hikaru Nakamura, Saint Louis, 2016',
        isWhiteToMove: true,
        puzzle: 'r4rk1/pb3p1p/1p2p1p1/5n2/3P3q/P1PQ2R1/2B2PP1/R1B3K1 w - - 0 1',
        solution: [
          ['c1', 'g5'],
          'Qh5',
          ['c2', 'd1']
        ],
        description: "Don't you think Hikaru Nakamura's queen in danger"),

    ChessPuzzle(
        playersName: 'Fabiano Caruana vs Wesley So, Saint Louis, 2016',
        isWhiteToMove: true,
        puzzle: '7k/5Bp1/2p2nP1/p3p1q1/P2bP3/5Q2/2P2P2/4BK2 w - - 0 1',
        solution: [
          ['f3', 'h3'],
          'Qh5',
          ['h3', 'c8'],
          'Ng8',
          ['c8', 'g8']
        ],
        description: "Mate in 3 use Queen"),

    ChessPuzzle(
        playersName: 'Maxime Vachier-Lagrave vs Pavel Eljanov, Stavanger, 2016',
        isWhiteToMove: true,
        puzzle: '6k1/3r1p2/p1p3p1/2q1n1p1/2P5/2Q1P1PP/4BP2/R5K1 w - - 0 1',
        solution: [
          ['a1', 'a5'],
        ],
        description:
            "This move can be easily missed in a chess game except for those GMs"),

    ChessPuzzle(
        playersName: 'Levan Pantsulaia vs S P Sethuraman, Dubai, 2016',
        isWhiteToMove: true,
        puzzle: '4r3/p4pk1/1p1b2p1/1q3nB1/3pR2P/3P2PB/P2Q1P2/6K1 w - - 0 1',
        solution: [
          ['h3', 'f5'],
          {'from': 'g6', 'to': 'f5'},
          ['g5', 'f6'],
          'Kh7',
          ['d2', 'g5']
        ],
        description:
            " After exchanging your bishop then sack the other bishop"),

    ChessPuzzle(
        playersName: 'Santosh Vidit vs Diego Di Berardino, Dubai, 2016',
        isWhiteToMove: true,
        puzzle:
            '3r2k1/qb1Np1bp/p1nr2p1/1pNp1p2/3PnB2/6P1/PP2PPBP/2RQ1RK1 w - - 0 1',
        solution: [
          ['c5', 'b7'],
          'Qxb7',
          ['d7', 'c5'],
          'Qb6',
          ['f4', 'd6']
        ],
        description:
            "Don't rush to take the rook because you loose an exchange. First, try to save your knights then take that rook"),

    ChessPuzzle(
        playersName: 'Miklos Nemeth vs Marian Jurcik, Slovakia, 2016',
        isWhiteToMove: true,
        puzzle: '4Qn1k/6p1/5p1p/2q1pP2/2P5/1Pp2B1P/5bP1/r1B2R1K w - - 0 1',
        solution: [
          ['f3', 'd5'],
          'Ra2',
          ['e8', 'f7']
        ],
        description:
            "This position needs a few calculations, the key move at this position is with the white squared bishop"),

    ChessPuzzle(
        playersName: 'Mateusz Bartel vs Markus Ragger, Germany, 2016',
        isWhiteToMove: true,
        puzzle: '2rk3r/1p1bR3/p2p4/6Pp/3NQ3/1Pq1n2P/6B1/R5K1 w - - 0 1',
        solution: [
          ['e7', 'd7'],
          'Kxd7',
          ['e4', 'e6'],
          'Kc7',
          ['e6', 'e7']
        ],
        description: "Sack the rook and hunt the king"),

    /////////

    ChessPuzzle(
        playersName: 'Dariusz Swiercz vs Marcel Kanarek, Poznan, 2016',
        isWhiteToMove: true,
        puzzle:
            'r4r2/2qn1p1k/1p2p1nb/p2pP3/P1pP4/3N1N1Q/1PP3PP/R4RK1 w - - 0 1',
        solution: [
          ['f3', 'g5'],
          'Kg7',
          ['f1', 'f7'],
          'Rxf7',
          ['g5', 'e6']
        ],
        description:
            "After checking king with knight then blacks king must defend bishop this will lead to a deadly Royal knight forks"),

    ChessPuzzle(
        playersName: 'Anton Korobov vs Ian Nepomniachtchi, Baku, 2016',
        isWhiteToMove: false,
        puzzle: '8/p2q1pk1/1p4p1/2p1P3/4KPP1/7r/PP2Q3/3R4 b - - 0 1',
        solution: [
          ['d7', 'c6'],
          'Rd5',
          ['c6', 'a4'],
        ],
        description:
            "Once a wise man said use your queen to checkmate white and don't let the whites king run away"),

    ChessPuzzle(
        playersName: 'Murtas Kazhgaleyev vs Parham Maghsoodloo, Abudhabi, 2016',
        isWhiteToMove: true,
        puzzle: '5r1k/1p2qpbp/2rnn1p1/p5P1/P3N3/2P1B3/4QPBP/3R1RK1 w - - 0 1',
        solution: [
          ['e4', 'd6'],
          'Rxd6',
          ['e3', 'c5']
        ],
        description: "After knight exchange Move bishop"),

    ChessPuzzle(
        playersName: 'Wesley So vs Magnus Carlsen, Paris, 2016',
        isWhiteToMove: false,
        puzzle: '4r1k1/3Q1ppp/8/2B5/p1n5/Pq1b1BP1/5P1P/3R2K1 b - - 0 1',
        solution: [
          ['b3', 'd1'],
          'Bxd1',
          ['e8', 'e1'],
          'Kg2',
          ['d3', 'f1'],
          'Kf3',
          ['c4', 'e5']
        ],
        description:
            "That's why everyone loves Magnus, sack the queen and after a couple of moves you will be able to take the queen and also rook "),
  ];

  List<ChessPuzzle> beginnerTactics = [
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/pbpr1ppp/1p6/8/6n1/1BP5/PPN2PPP/4R1K1 w - - 0 1',
      solution: [
        ['e1', 'e8'],
      ],
      description:
          'Vulnerable first rank. it means blacks 8th rank is weak there is no defender there So blacks king is not safe',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/1p3ppp/r5q1/pp6/2b4P/1BP3Q1/PP3PP1/R5K1 w - - 0 1',
      solution: [
        ['g3', 'b8'],
      ],
      description:
          'Vulnerable first rank. it means blacks 8th rank is weak there is no defender there So blacks king is not safe',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/R4ppp/1q6/8/8/8/P4PPP/5RK1 w - - 0 1',
      solution: [
        ['a7', 'a8'],
        'Qd8',
        ['a8', 'd8'],
      ],
      description:
          'Vulnerable first rank. it means blacks 8th rank is weak there is no defender there So blacks king is not safe',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/pr3pnp/1p2b1pB/1N6/7P/6P1/PP3PK1/3R4 w - - 0 1',
      solution: [
        ['d1', 'd8'],
        'Ne8',
        ['d8', 'e8'],
      ],
      description:
          'Vulnerable first rank. it means blacks 8th rank is weak there is no defender there So blacks king is not safe',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/4Rp1p/p1q2Pp1/Pp4P1/1P4KP/8/8/4R3 w - - 0 1',
      solution: [
        ['e7', 'e8'],
        'Qxe8',
        ['e1', 'e8'],
      ],
      description:
          'Vulnerable first rank. it means blacks 8th rank is weak there is no defender there So blacks king is not safe',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r1bqkbnr/ppp2ppp/2np4/4p3/2B1P3/5Q2/PPPP1PPP/RNB1KBNR w - - 0 1',
      solution: [
        ['f3', 'f7'],
      ],
      description:
          "Napoleon's style checkmate. don't you ever lost with this Style, ok your queen and bishop are making a good team here They both aiming at the best square on this board",
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '3r1rk1/bpp2ppp/pq6/8/8/2P4Q/PPB2PPP/3RRK2 w - - 0 1',
      solution: [
        ['h3', 'h7'],
      ],
      description:
          'Your queen and bishop are making a good team here They both aiming at the weakest square on this board',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r3r1k1/2bp1ppp/1qp5/1p6/pPP3n1/P1QP1N2/1B3PPP/R4RK1 w - - 0 1',
      solution: [
        ['c3', 'g7'],
      ],
      description:
          'Your queen and bishop are making a good team here They both aiming at the weakest square on this board',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle:
          'r1bqkb1r/p1p1np2/1pn4p/4p1pN/1B2P3/2N5/PPPQ1PPP/3R1RK1 w - - 0 1',
      solution: [
        ['h5', 'f6'],
      ],
      description: 'Sometimes knights are killer',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'kr5r/pp6/5np1/1N3p2/8/P6P/1P3PP1/2R2RK1 w - - 0 1',
      solution: [
        ['b5', 'c7'],
      ],
      description: 'Sometimes knights are killer',
    ),

    ////////////////////

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r3q1k1/p4p1p/1pn3p1/2b5/6N1/2B5/PP3PPP/R2Q2K1 w - - 0 1',
      solution: [
        ['g4', 'f6'],
        'Kf8',
        ['f6', 'e8'],
      ],
      description:
          'knight fork means your knight attack two or more things at the same time and it is Stronger with check',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '8/3k2p1/r1p1r3/1p5P/3K4/PN6/1P6/7R w - - 0 1',
      solution: [
        ['b3', 'c5'],
        'Ke7',
        ['c5', 'a6'],
      ],
      description:
          'knight fork means your knight attack two or more things at the same time and it is Stronger with check',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'k3q3/pp6/8/1N4p1/1P3nP1/KP5P/2Q5/8 w - - 0 1',
      solution: [
        ['b5', 'c7'],
        'Kb8',
        ['c7', 'e8'],
      ],
      description:
          'knight fork means your knight attack two or more things at the same time and it is Stronger with check',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '8/pp4qp/2p5/4k3/8/PP2K3/2P3PP/4B3 w - - 0 1',
      solution: [
        ['e1', 'c3'],
        'Ke6',
        ['c3', 'g7'],
      ],
      description:
          'Skewer. it means is an attack upon two pieces in a line here even tho black has queen but lose the game because of the skewer',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6r1/1p6/pbp1kp1p/4p3/1P2P2P/P5P1/4BP2/3R1K2 w - - 0 1',
      solution: [
        ['e2', 'c4'],
        'Ke7',
        ['c4', 'g8'],
      ],
      description: 'Skewer. it means is an attack upon two pieces in a line',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5r2/8/2b2k2/1pb3p1/4P1Bp/1P5P/P2NK3/1R6 w - - 0 1',
      solution: [
        ['b1', 'c1'],
        'Bb4',
        ['c1', 'c6'],
      ],
      description:
          'Skewer. look two bishops are on the same line and no other piece defend them',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r3r1k1/pp2bpp1/2p1pn1p/8/2Pq4/2NB4/PP1Q1PPP/R3R1K1 w - - 0 1',
      solution: [
        ['d3', 'h7'],
        'Kxh7',
        ['d2', 'd4'],
      ],
      description:
          'Discover Attack. is an attack that is revealed when one piece moves out of the way of another. Here look what if there is no bishop? ans. simply we take blacks queen',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r4r2/pbpp2bk/1p2p1p1/7p/4NB1P/qP1P1QP1/2P2P2/3RR1K1 w - - 0 1',
      solution: [
        ['e4', 'g5'],
        'Kh8',
        ['f3', 'b7'],
      ],
      description:
          'Discover Attack. is an attack that is revealed when one piece moves out of the way of another. Here look what if there is no knight? ans. Simply we take blacks white squared bishop ',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2r2rk1/pb2bppp/1p2pn2/6B1/3q3P/P1NB4/1PP1QPP1/R2R3K w - - 0 1',
      solution: [
        ['d3', 'h7'],
        'Kxh7',
        ['d1', 'd4'],
      ],
      description:
          'Discover Attack. is an attack that is revealed when one piece moves out of the way of another. Here look what if there is no white squared bishop? ans. simply we take blacks queen',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6r1/5p2/r1p1p3/B4p2/RP5k/2R4P/5P2/5K2 w - - 0 1',
      solution: [
        ['b4', 'b5'],
      ],
      description:
          'Discover Attack With Check. is an attack that is revealed when one piece moves out of the way of another with a check. Here look what will happen if you move pawn beside rook? ans. Simply we take blacks rook',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle:
          'r2qkbnr/ppp2ppp/2npb3/4p3/3PP3/2N2N2/PPP2PPP/R1BQKB1R w KQkq - 0 1',
      solution: [
        ['d4', 'd5'],
      ],
      description:
          'Double Attack. is an attack with one move you attack two or more pieces',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle:
          'rnb1r1k1/pp3pbp/2p2np1/1N2p3/2P1P3/5N2/PP2BPPP/R1B2RK1 w Qq - 0 1',
      solution: [
        ['b5', 'c7'],
      ],
      description: 'double attack and also knight fork',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2r3k1/bp3ppp/p1q5/3N4/8/8/PPPQ1PPP/R3R1K1 w Q - 0 1',
      solution: [
        ['d5', 'e7'],
      ],
      description:
          'There are family forks here in this puzzle it means with one piece you attack many things including the king, queen, rook',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r5k1/p1b2pp1/1p4n1/2p4p/8/PBQ1NqP1/1P3P1P/5RK1 w q - 0 1',
      solution: [
        ['b3', 'd5'],
      ],
      description: 'double attack with the bishop',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '4b1k1/1p3pb1/pR4p1/8/5P2/1P3K2/P5P1/6N1 b - - 0 1',
      solution: [
        ['g7', 'd4'],
        'Rxb7',
        ['d4', 'g1'],
      ],
      description: 'double attack with the bishop',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5r2/1p4pk/5p2/p6p/P3P3/5P2/5KPP/3R4 w - - 0 1',
      solution: [
        ['d1', 'd5'],
        'Kg6',
        ['d5', 'a5'],
      ],
      description:
          'In chess one pawn is so important and make difference so here rook can double attack',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5bk1/2q2ppp/r1n5/8/8/5N2/1pB2PPP/3QR1K1 w - - 0 1',
      solution: [
        ['d1', 'd3'],
        'g6',
        ['d3', 'a6'],
      ],
      description:
          "this one a little bit tough but it's a very useful position and it happens during games. it is about the double attack with the queen but this time threatening mate and rook",
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r4rk1/ppq2pp1/3b1n1p/2p5/2P1P3/1Q3N2/PPB3PP/R3R1K1 w - - 0 1',
      solution: [
        ['e4', 'e5'],
      ],
      description: 'Double attack and also pawn forks ',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '8/p3kp2/6p1/b6p/3N4/8/P4PPP/6K1 w - - 0 1',
      solution: [
        ['d4', 'c6'],
        'Kd6',
        ['c6', 'a5'],
      ],
      description: 'Knight forks',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '4rrk1/ppp2pp1/2n4p/q6b/2P5/PP3NBP/1Q3PP1/2RR2K1 w - - 0 1',
      solution: [
        ['d1', 'd5'],
        'Qb6',
        ['d5', 'h5'],
      ],
      description: 'Double attack with rook',
    ),

    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: 'r1q2rk1/pp3ppp/5n2/1B1pp2b/3P4/2P2N1P/PP2QPP1/3RR1K1 b - - 0 1',
      solution: [
        ['e5', 'e4'],
        'g4',
        ['e4', 'f3'],
      ],
      description:
          'Pin. here whites knight diagonally pinned to queen it means when white move his knight he loses his queen so we have to attack the knight in order to take advantage ',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '3r2rk/p4ppp/1p1qp3/8/8/2P2N2/PPQ2PPP/4R1K1 w - - 0 1',
      solution: [
        ['f3', 'g5'],
        'g6',
        ['g5', 'f7'],
      ],
      description:
          'No surprise white will win in only 2 moves thanks for a knight fork',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: 'r2q1r2/ppp2pbk/4b1pp/4p3/1B2P3/3P4/PPP3BP/R1Q1R1K1 b - - 0 1',
      solution: [
        ['d8', 'd4'],
        'Qe3',
        ['d4', 'b4'],
      ],
      description:
          'Double attack with check look at this position whites bishop is undefended and there is an open diagonal to check',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2kr3r/ppp1qppp/8/8/1nPP2n1/2N5/PP1Q1PPP/RB3RK1 w - - 0 1',
      solution: [
        ['b1', 'f5'],
        'Kb8',
        ['f5', 'g4'],
      ],
      description: 'Skewer and double attack with a bishop',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: 'rnbq1rk1/pp2ppbp/3p1np1/8/3NPB2/2N5/PPP1BPPP/R2Q1RK1 b - - 0 8',
      solution: [
        ['e7', 'e5'],
      ],
      description: 'pawn forks',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2kr3r/ppp2ppp/8/1n4b1/8/6P1/PPP2PBP/R3RNK1 w - - 0 1',
      solution: [
        ['e1', 'e5']
      ],
      description: 'Skewer and double attack with rook',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5rk1/rpp2pbp/5np1/2p5/8/2N1B3/PPP2PPP/R4RK1 w - - 0 1',
      solution: [
        ['e3', 'c5']
      ],
      description: 'Skewer and double attack with bishop',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5rk1/2p3pp/1q6/p7/1p2B3/6QP/PnP2PP1/5RK1 w - - 0 1',
      solution: [
        ['g3', 'b3'],
        'Kh8',
        ['b3', 'b2'],
      ],
      description: 'Use your Queen to eliminate blacks, undefended knight',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '8/4q3/3k4/8/3KP3/4N3/8/8 w - - 0 1',
      solution: [
        ['e3', 'f5'],
      ],
      description: 'Knight forks',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'k4n2/2r5/6P1/6K1/8/4R3/8/8 w - - 0 1',
      solution: [
        ['e3', 'e8'],
      ],
      description: 'check and win something',
    ),

    ChessPuzzle(
      isWhiteToMove: false,
      puzzle:
          'r1bqkb1r/5p1p/p1np1p2/1p2p3/4P3/N1N5/PPP1BPPP/R2QK2R b KQkq - 0 10',
      solution: [
        ['b5', 'b4'],
      ],
      description: 'pawn forks',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: 'r3kb1r/pppq1ppp/2n1p3/8/8/2Q1PNN1/PPP2PPP/R3K2R b KQkq - 0 1',
      solution: [
        ['f8', 'b4'],
        'Qxb4',
        ['c6', 'b4'],
      ],
      description:
          'Queen and the King are on the same diagonal and this is good news for you to take advantage of that pin',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r4rk1/2p2p1p/1p3p2/8/6bP/PN6/1PPR1P2/2K4R w - - 0 1',
      solution: [
        ['h1', 'g1'],
        'f5',
        ['f2', 'f3'],
      ],
      description:
          'Bishop and the King are on the same file which you can pin the bishop then attack him with pawn',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2kr3r/ppq2ppp/5p2/8/1P6/PQ6/R4PPP/5RK1 w - - 0 1',
      solution: [
        ['a2', 'c2'],
      ],
      description: 'Queen and the King are on the same file',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2r2nk1/6p1/7p/7P/2p3n1/2N3P1/5PB1/5RK1 w - - 0 1',
      solution: [
        ['g2', 'h3'],
      ],
      description: 'Pin knight to rook so you can get that knight',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r3r1k1/5pp1/2p1p1n1/p1n5/8/q2N1PB1/P1P3PP/1R2RQK1 w - - 0 1',
      solution: [
        ['g3', 'd6'],
      ],
      description:
          'Pin the knight to the queen so black can not move the knight and then you can take that knight easily',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5k2/8/r4n1R/8/4P3/3P1K2/8/8 w - - 0 1',
      solution: [
        ['e4', 'e5'],
        'Kg7',
        ['h6', 'f6'],
      ],
      description:
          'the knight is already pinned to the rook so we have to attack it',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '8/2p3k1/3p4/4n1q1/3R4/5P1P/1B5K/8 w - - 0 1',
      solution: [
        ['d4', 'g4'],
      ],
      description:
          'This one is funny, pin a queen to the king and the knight can not take rook because the knight himself is pinned to the king this puzzle is great to show how strong a pin can be',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'R3b2k/6n1/8/R7/8/1B6/1B4K1/4q3 w - - 0 1',
      solution: [
        ['a5', 'h5'],
      ],
      description:
          'Checkmate in one, this one is even more funnier than the previous one because black has two pieces but none of them are alive',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/6b1/8/3q4/4N3/4K3/8/6R1 w - - 0 1',
      solution: [
        ['e4', 'f6'],
      ],
      description:
          'Search for the Knight forks and take advantage of the pinned bishop',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/5ppp/1p6/p7/8/2n3P1/5PK1/5R2 w - - 0 1',
      solution: [
        ['f1', 'c1'],
      ],
      description:
          'This is also pin but a bit weird because you pin the knight to threatening checkmate',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/3n1p1p/p5pQ/1p6/1Bpq4/P4PP1/1P3PK1/8 w - - 0 1',
      solution: [
        ['b4', 'c3'],
        'Qd6',
        ['h6', 'g7'],
      ],
      description: 'attack queen and suddenly you will be able to checkmate',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: 'rnbqk1nr/pppp1ppp/8/8/1b2P3/1Pp2N2/P4PPP/RNBQKB1R b KQkq - 0 5',
      solution: [
        ['c3', 'c2'],
      ],
      description:
          "Discover check. a check on the opponent's king that is delivered by moving a piece out of the line ",
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'rn1q1r2/ppp1nppk/3b4/3p4/3P2b1/5N2/PPP2PPP/RNBQ1RK1 w - - 0 1',
      solution: [
        ['f3', 'g5'],
        'Kg6',
        ['d1', 'g4'],
      ],
      description:
          'your knight is pinned but thanks for the discover check that will save you and you can get a bishop. the first move is with the knight',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '3q2k1/7p/6p1/8/8/3B4/5PPP/3R2K1 w - - 0 1',
      solution: [
        ['d3', 'c4'],
      ],
      description:
          "Discover check. a check on the opponent's king that is delivered by moving a piece out of the line",
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '7k/2q5/8/2p5/2K5/8/1R3P2/B7 w - - 0 1',
      solution: [
        ['b2', 'b7'],
        'Kg8',
        ['b7', 'c7'],
      ],
      description:
          'What will happen if you move your rook? and where you put that rook?',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '4k3/8/8/4K3/8/2n5/8/4R3 w - - 0 1',
      solution: [
        ['e5', 'd4'],
      ],
      description:
          'what happens if you move your king ? and where you put your king?',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r1b2rk1/p4pbp/1p2pnp1/2p5/2P1PP2/2N3P1/PP4BP/R1BR2K1 w - - 0 1',
      solution: [
        ['e4', 'e5'],
      ],
      description: 'Double attack and also discover attack by moving a pawn',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5rk1/5ppp/1b3n2/2p5/8/6P1/1B3P1P/1R4K1 w - - 0 1',
      solution: [
        ['b2', 'f6'],
        {'from': 'g7', 'to': 'f6'},
        ['b1', 'b6'],
      ],
      description:
          "What happens if you don't have a bishop in front of your rook?",
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '8/8/1KP1r1k1/8/R4P1r/8/8/8 w - - 0 1',
      solution: [
        ['f4', 'f5'],
      ],
      description: 'Discover check by moving pawn',
    ),
  ];

////////
////////
  ///
///////
//////
///////
///////

  List<ChessPuzzle> masterTactics = [
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle:
          'r3r1k1/1p1qb1p1/p3p1p1/3b1p2/1PBPpP2/PQ2P1BP/5RP1/2R3K1 b q - 0 1',
      solution: [
        ['a8', 'c8'],
        {'from': 'f2', 'to': 'c2'},
        ['c8', 'c4'],
        'Rxc4',
        ['b7', 'b5'],
        'Rc7',
        ['d7', 'c7'],
      ],
      description:
          'White squared bishop is pinned, make another pin by putting A file rook to C file after that sack your rook, in the end, you are the one who wins the game',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r1b2rk1/p2pq1pp/1pn1pn2/4N3/5BP1/P2B3P/1P1Q1R2/2R2K2 w - - 0 1',
      solution: [
        ['e5', 'c6'],
        {'from': 'd7', 'to': 'c6'},
        ['f4', 'd6'],
        'Ne4',
        ['d3', 'e4'],
      ],
      description:
          "Exchange the knight and use the fact that black's queen and black's rook are on the same diagonal ",
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5k2/1r6/2p2bP1/p2p4/1PpP2q1/P3Q3/2B5/5K1R w - - 0 1',
      solution: [
        ['e3', 'f2'],
        {'from': 'g4', 'to': 'g5'},
        ['h1', 'h8'],
        'Kg7',
        ['h8', 'h7'],
        'Kf8',
        ['h7', 'b7'],
      ],
      description:
          "If you pin blacks bishop  then you can take black's rook after 2 moves ",
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '2r3k1/1Q3pp1/p1p2b1p/2Bp4/3Pr1q1/5NPb/PPR1PP1P/4R1K1 b - - 0 1',
      solution: [
        ['g4', 'f3'],
        {'from': 'b7', 'to': 'c8'},
        ['h3', 'c8'],
        {'from': 'e2', 'to': 'f3'},
        ['e4', 'e1'],
      ],
      description:
          "There is a very useful pinned pawn try to take advantage of it and also don't afraid to sack your queen",
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '3r4/qp1r2p1/p1p1p3/2Ppk3/1P4p1/6P1/1P4BP/3R1R1K w - - 0 1',
      solution: [
        ['f1', 'f4'],
        {'from': 'g7', 'to': 'g5'},
        ['d1', 'e1'],
      ],
      description: 'Trust your rooks they can do it',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'k1r2q2/ppp5/6Qp/2P5/B7/5n2/5P2/1R5K w - - 0 1',
      solution: [
        ['g6', 'a6'],
        {'from': 'c8', 'to': 'b8'},
        ['a4', 'c6'],
        'Qc8',
        ['a6', 'a7'],
        'Kxa7',
        ['b1', 'a1'],
      ],
      description:
          'Put a lot of pressure on the b7 pawn then suddenly you get the idea of sacking the queen',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r2qr1k1/1p3ppp/p2b4/3P1n1b/5B2/1N4P1/P2Q1PBP/2R1R1K1 w - - 0 1',
      solution: [
        ['e1', 'e8'],
        {'from': 'd8', 'to': 'e8'},
        ['g3', 'g4'],
        'Bxg4',
        ['f4', 'd6'],
        'Nxd6',
        ['d2', 'f4'],
      ],
      description:
          'After exchanging the rook go for pawn forks and then exchange some materials till you spot you have a double attack with the queen',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r6r/1b3p1n/1k2p3/Rp1pNqp1/2pP4/2P4P/1P1B1PP1/Q3R1K1 w - - 0 1',
      solution: [
        ['a1', 'a3'],
        {'from': 'a8', 'to': 'a5'},
        ['a3', 'c5'],
        'Ka6',
        ['e5', 'd7'],
      ],
      description:
          'The first move is with the queen give up a rook and go for checkmate',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle:
          'r3kb2/pp1np1pr/2pqpn1p/3p3P/3P2P1/3Q1N2/PPP2P2/RNB1K2R w KQq - 0 1',
      solution: [
        ['d3', 'g6'],
        {'from': 'e8', 'to': 'd8'},
        ['g4', 'g5'],
        {'from': 'h6', 'to': 'g5'},
        ['f3', 'g5'],
        'Rh6',
        ['g5', 'f7'],
      ],
      description: 'the First move is clear and the second move is by pawn',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '1nb1r2k/6bp/P5p1/q1p1Pp2/2Q2P2/P1p1B3/2P1B1PP/3R2K1 w - - 0 1',
      solution: [
        ['c4', 'b5'],
        {'from': 'a5', 'to': 'b5'},
        ['e2', 'b5'],
      ],
      description: "Your passed pawn needs to be free from black's queen",
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: 'r1bq1rk1/ppp1bpp1/3p3p/6Nn/4PPnQ/1BN5/PPP3PP/R1B1K2R b - - 1 1',
      solution: [
        ['h5', 'f4'],
        {'from': 'c1', 'to': 'f4'},
        ['h6', 'g5'],
        'Qg3',
        ['g5', 'f4']
      ],
      description:
          "Threatening knight forks will help to use pawn forks to gain material",
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '5rk1/4Rr1p/6pP/p5P1/1pp5/P7/1PP5/2K1R3 b - - 0 1',
      solution: [
        ['f7', 'e7'],
        {'from': 'e1', 'to': 'e7'},
        ['f8', 'f1'],
        'Kd2',
        ['c4', 'c3'],
        {'from': 'b2', 'to': 'c3'},
        ['b4', 'a3'],
      ],
      description:
          "After exchanging the rook and check the king with the other rook then it will come to key moves both with pawn",
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2r4r/ppN2Rp1/3k2p1/3P4/2P5/3p3n/PP1K4/4R3 w - - 0 1',
      solution: [
        ['b2', 'b4'],
        {'from': 'c8', 'to': 'c7'},
        ['e1', 'e6'],
      ],
      description:
          "Don't rush giving checks everywhere sometimes you have to prepare to checkmate king",
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '5r1r/R7/2pkp3/3b2pp/B2P4/P3B1bP/1P4P1/5RK1 b - - 1 1',
      solution: [
        ['f8', 'f1'],
        {'from': 'g1', 'to': 'f1'},
        ['d5', 'c4'],
        'Kg1',
        ['h8', 'f8']
      ],
      description:
          "Exchange the rook and bring back the king to his cage by using bishop",
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'k7/2p5/r6P/2P1p3/1RKp4/p7/P2P4/8 w - - 1 1',
      solution: [
        ['b4', 'a4'],
        {'from': 'a6', 'to': 'a4'},
        ['c4', 'b5'],
        'Ra7',
        ['c5', 'c6']
      ],
      description:
          "Sack the rook and focus on queening but still, there is a key move which is done by pawn",
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: 'rq2n2k/1p3p1P/3p3B/3pbPQ1/1n6/pPr2P2/P1P3P1/2K1R2R b - - 0 1',
      solution: [
        ['e5', 'f4'],
        {'from': 'g5', 'to': 'f4'},
        ['b4', 'd3'],
      ],
      description:
          "Royal fork means you forked queen, king, rook, try to spot it in this puzzle",
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '6k1/8/1p2pp1K/4n1p1/3r4/5PN1/PP3P1P/6R1 b - - 1 1',
      solution: [
        ['d4', 'd7'],
        {'from': 'g3', 'to': 'e4'},
        ['d7', 'h7'],
      ],
      description:
          "Think out of the box, if you wast too much time to look for rook H4 then you did nothing 😜",
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r5k1/ppp2ppp/1bp5/2n4q/5QN1/2Nb2B1/PPP2PPP/4RK2 w - - 0 1',
      solution: [
        ['c2', 'd3'],
        'Nxd3',
        ['f4', 'f3'],
        'Nxe1',
        ['g4', 'f6'],
        {'from': 'g7', 'to': 'f6'},
        ['f3', 'h5']
      ],
      description:
          "Don't worry take the bishop because you have a good move with the queen and a spectacular move with the knight",
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r2r2k1/p1q1pp1p/1np1b1pb/4P3/P1N5/6BP/1PP2PP1/R2QRBK1 w - - 0 1',
      solution: [
        ['d1', 'f3'],
        'Nxc4',
        ['f1', 'c4'],
        'Bxc4',
        ['e5', 'e6'],
        'Qb6',
        ['f3', 'f7']
      ],
      description:
          "Your knight will be out of the game but don't lose hope you have a good move with the queen and after that best move with the pawn ",
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '4R3/k1K5/1R6/2pq4/8/8/8/8 w - - 0 1',
      solution: [
        ['e8', 'a8'],
        {'from': 'd5', 'to': 'a8'},
        ['b6', 'b3'],
        'Ka6',
        ['b3', 'a3']
      ],
      description:
          "Sack the rook and then be careful only one square with the other rook will be decisive",
    ),
  ];

///////////////
////////////////

  List<ChessPuzzle> ruyLopez = [
    ChessPuzzle(
      playersName: "Ruy Lopez, Bird's Defense (ECO C61)",
      isWhiteToMove: true,
      puzzle:
          'r4rk1/1b1pqpbp/p5pn/1pp2P2/3pP3/1B1P1N2/PPP3PP/R1BQ1R1K w - - 0 1',
      solution: [
        ['c1', 'g5'],
        {'from': 'e7', 'to': 'd6'},
        ['f5', 'f6'],
      ],
      description:
          "You have to move away both queen and the bishop to get a blacks knight",
    ),
    ChessPuzzle(
      playersName: "Ruy Lopez, Morphy Defense (ECO C77)",
      isWhiteToMove: true,
      puzzle:
          'r1b1qrk1/2p2ppp/pb1pnn2/1p2pNB1/3PP3/1BP5/PP2QPPP/RN1R2K1 w - - 0 1',
      solution: [
        ['g5', 'f6'],
        {'from': 'g7', 'to': 'f6'},
        ['b3', 'e6'],
        'Bxe6',
        ['e2', 'g4']
      ],
      description: "destruct kingside pawn and remove defenders",
    ),
    ChessPuzzle(
      playersName: "Ruy Lopez, Morphy Defense (ECO C77)",
      isWhiteToMove: true,
      puzzle:
          'r1bqk2r/2ppbppp/p1n5/1p1BP1n1/3p4/5N2/PPP2PPP/RNBQ1RK1 w - - 0 1',
      solution: [
        ['f3', 'g5'],
        {'from': 'e7', 'to': 'g5'},
        ['d1', 'h5'],
      ],
      description: "After the exchange go for a double attack with the queen",
    ),
    ChessPuzzle(
      playersName: "Ruy Lopez, Open (ECO C80)",
      isWhiteToMove: true,
      puzzle: 'r1bqkb1r/1ppp1ppp/p1n5/4N3/8/2n5/PPPP1PPP/R1BQR1K1 w - - 0 1',
      solution: [
        ['e5', 'c6'],
        {'from': 'f8', 'to': 'e7'},
        ['c6', 'e7'],
        'Nxd1',
        ['e7', 'g6'],
        'Qe7',
        ['g6', 'e7']
      ],
      description: "Your knight and rook will do every thing",
    ),
    ChessPuzzle(
      playersName: "Ruy Lopez, Open, Classical (ECO C83)",
      isWhiteToMove: true,
      puzzle: 'r2q1rk1/2p2ppp/p5n1/1p1pPb2/3Pn3/1B2B3/PP3PPP/R2QRNK1 w - - 0 1',
      solution: [
        ['d1', 'h5'],
        {'from': 'd8', 'to': 'd7'},
        ['f2', 'f3'],
      ],
      description:
          "Black's knight on the center of the board will be out of the game if you play a correct move with your queen",
    ),
    ChessPuzzle(
      playersName: "Ruy Lopez, Marshall Gambit (ECO C89)",
      isWhiteToMove: false,
      puzzle: 'r1b2rk1/4q1pp/p2b4/1p1p3R/3P1p2/2P5/PP3PPP/RNBQ2K1 b - - 0 1',
      solution: [
        ['c8', 'g4'],
      ],
      description: "Bishop that's all",
    ),
    ChessPuzzle(
      playersName: "Ruy Lopez, Marshall Gambit (ECO C89)",
      isWhiteToMove: false,
      puzzle: 'r5k1/2p2ppp/p1P2n2/8/1pP2bbQ/1B3PP1/PP1Pq2P/RNB3K1 b - - 0 1',
      solution: [
        ['e2', 'e1'],
        {'from': 'g1', 'to': 'g2'},
        ['g4', 'f3'],
        'Kxf3',
        ['e1', 'f1']
      ],
      description: "Mate in three",
    ),
    ChessPuzzle(
      playersName: "Ruy Lopez, Closed, 9.h3 (ECO C92)",
      isWhiteToMove: true,
      puzzle:
          'r2q1r2/2pbbppk/p2p2np/1p1PpNn1/4P1N1/2P4P/PPB2PP1/R1BQR1K1 w - - 0 1',
      solution: [
        ['h3', 'h4'],
        {'from': 'd7', 'to': 'f5'},
        ['e4', 'f5'],
        'Nxh4',
        ['f5', 'f6'],
        'g6',
        ['f6', 'e7']
      ],
      description: "Black's knight is hanged attack on him",
    ),
    ChessPuzzle(
      playersName: "Ruy Lopez, Closed, Chigorin (ECO C96)",
      isWhiteToMove: true,
      puzzle:
          'r5k1/2q1bppp/p1n2n2/1pprp3/6P1/2P2N1P/PPB1QP2/R1B1R1K1 w - - 0 1',
      solution: [
        ['g4', 'g5'],
        {'from': 'f6', 'to': 'h5'},
        ['e2', 'e4'],
      ],
      description:
          "After kicking the knight, with a queen, you have a magical move",
    ),
    ChessPuzzle(
      playersName: "Ruy Lopez, Closed, Smyslov Defense (ECO C93)",
      isWhiteToMove: true,
      puzzle: '4rr2/1bp1qp1k/pn4pp/1p2b3/3P4/1PPQ2NP/P1B2RP1/5RK1 w - - 0 1',
      solution: [
        ['f2', 'f7'],
        {'from': 'f8', 'to': 'f7'},
        ['d3', 'g6'],
        'Kh8',
        ['f1', 'f7']
      ],
      description:
          "Sack your rook because Your queen and bishop line up against king",
    ),
  ];

  List<ChessPuzzle> nimzoIndian = [
    ChessPuzzle(
      playersName: "Nimzo-Indian (ECO E20)",
      isWhiteToMove: true,
      puzzle: '1r3rk1/1p3ppp/pqbNpn2/2n5/3Q4/P1N3P1/1P2PPBP/3R1RK1 w - - 0 1',
      solution: [
        ['d6', 'c4'],
        {'from': 'b6', 'to': 'a7'},
        ['b2', 'b4'],
      ],
      description: "Attack the pinned knight via knight and pawn",
    ),
    ChessPuzzle(
      playersName: "Nimzo-Indian, Samisch (ECO E24)",
      isWhiteToMove: true,
      puzzle:
          'r3r1k1/pbpn1pp1/1p5p/3P1N1n/2P2q1P/P2B1P2/5BP1/R2Q1RK1 w - - 0 1',
      solution: [
        ['g2', 'g3'],
        {'from': 'f4', 'to': 'e5'},
        ['f2', 'd4'],
      ],
      description: "Black's queen runs out of squares",
    ),
    ChessPuzzle(
      playersName: "Nimzo-Indian, Leningrad (ECO E30)",
      isWhiteToMove: true,
      puzzle:
          'rnbqk2r/ppp2ppp/3ppn2/6B1/1bPP4/2N5/PP2PPPP/R2QKBNR w KQkq - 0 1',
      solution: [
        ['d1', 'a4'],
        {'from': 'b8', 'to': 'c6'},
        ['d4', 'd5'],
      ],
      description:
          "This d6 here is a blunder because it opens up a diagonal to the king",
    ),
    ChessPuzzle(
      playersName: "Nimzo-Indian, Leningrad (ECO E30)",
      isWhiteToMove: false,
      puzzle: 'rnbqr1k1/pp3ppp/3p1n2/2pP2B1/4P3/P1P2P2/6PP/R2QKBNR b - - 0 1',
      solution: [
        ['f6', 'e4'],
      ],
      description: "Sack the queen",
    ),
    ChessPuzzle(
      playersName: "Nimzo-Indian, Classical (ECO E32)",
      isWhiteToMove: true,
      puzzle: '4rrk1/pb1n1pp1/1p1p3p/3P4/2q1B2P/P1B5/1PQ2PP1/3R1RK1 w - - 0 1',
      solution: [
        ['e4', 'h7'],
        {'from': 'g8', 'to': 'h8'},
        ['c3', 'g7'],
      ],
      description:
          "Discover check will help you to get black's queen but first, you must move black's king",
    ),
    ChessPuzzle(
      playersName: "Nimzo-Indian 4.e3 c5 (ECO E41)",
      isWhiteToMove: true,
      puzzle:
          'r3brk1/pp2n1pp/3p4/q1pP1p2/2P1pP2/PPb1P1N1/R1Q1B1PP/2B2RK1 w - - 0 1',
      solution: [
        ['b3', 'b4'],
        {'from': 'c5', 'to': 'b4'},
        ['a3', 'b4'],
        'Qxb4',
        ['c1', 'a3']
      ],
      description:
          "Black's dark-squared bishop will vanish no matter what black's queen does",
    ),
    ChessPuzzle(
      playersName: "Nimzo-Indian 4.e3 c5 (ECO E41)",
      isWhiteToMove: true,
      puzzle: 'r1b2r1k/ppq2ppp/3p1n2/2pPn3/P1P4Q/2PB3P/6P1/R1B1NRK1 w - - 0 1',
      solution: [
        ['f1', 'f6'],
        {'from': 'e5', 'to': 'd3'},
        ['e1', 'd3'],
        {'from': 'g7', 'to': 'f6'},
        ['h4', 'f6']
      ],
      description:
          "You have all pieces ready to attack the king, so don't be scared of sacking pieces",
    ),
    ChessPuzzle(
      playersName: "Nimzo-Indian 4.e3 c5 (ECO E41)",
      isWhiteToMove: false,
      puzzle:
          'r1bq1rk1/pp2nppp/3p1n2/2pPp3/2P5/2PBPN2/P1Q2PPP/1RB2RK1 b - - 0 1',
      solution: [
        ['e5', 'e4'],
        {'from': 'd3', 'to': 'e4'},
        ['f6', 'e4'],
        'Qxe4',
        ['c8', 'f5']
      ],
      description:
          "Exchange everything till you find out you have a nice skewer with the bishop",
    ),
    ChessPuzzle(
      playersName: "Nimzo-Indian, Fischer Variation (ECO E43)",
      isWhiteToMove: true,
      puzzle: 'r3k2r/pbpp1ppp/np3q2/8/1b6/2NBPP2/PPQRN1PP/2K4R w - - 0 1',
      solution: [
        ['d3', 'a6'],
        {'from': 'b7', 'to': 'a6'},
        ['c2', 'e4'],
      ],
      description: "Your queen will poison black after exchange your bishop",
    ),
    ChessPuzzle(
      playersName: "Nimzo-Indian, Fischer Variation (ECO E43)",
      isWhiteToMove: true,
      puzzle: 'r3k2r/pbp2ppp/1pnqp3/2npN3/Q1PP4/B1PBP3/P4PPP/R4RK1 w - - 0 1',
      solution: [
        ['a3', 'c5'],
        {'from': 'b6', 'to': 'c5'},
        ['c4', 'd5'],
        {'from': 'e6', 'to': 'd5'},
        ['d3', 'b5']
      ],
      description:
          "Attack the pinned knight but first, try to clean the board and also open up your white squared bishop",
    ),
  ];

  List<ChessPuzzle> french = [
    ChessPuzzle(
      playersName: "French, Advance (ECO C02)",
      isWhiteToMove: true,
      puzzle:
          'r3kbnr/1p1b2pp/pq2pp2/3pP3/3n4/P1NB1N2/1P3PPP/R1BQ1RK1 w kq - 0 1',
      solution: [
        ['f3', 'd4'],
        {'from': 'b6', 'to': 'd4'},
        ['d3', 'g6'],
      ],
      description:
          "After exchanging knights then you have a discover check and win a queen",
    ),
    ChessPuzzle(
      playersName: "French, Advance (ECO C02)",
      isWhiteToMove: true,
      puzzle:
          'rn1qkbnr/p4ppp/bp2p3/2ppP3/3P1B2/2P5/PP3PPP/RN1QKBNR w KQkq - 0 1',
      solution: [
        ['f1', 'a6'],
        {'from': 'b8', 'to': 'a6'},
        ['d1', 'a4'],
      ],
      description:
          "You have a nice check with the queen but first, you have to move the bishop",
    ),
    ChessPuzzle(
      playersName: "French, Tarrasch (ECO C03)",
      isWhiteToMove: true,
      puzzle:
          'r1bq1rk1/ppp1b2p/2n1ppp1/3pP1Nn/3P3P/2PB2P1/PP1N1P2/R1BQK2R w - - 0 1',
      solution: [
        ['g5', 'h7'],
      ],
      description: "let your knight go crazy",
    ),
    ChessPuzzle(
      playersName: "French, Tarrasch (ECO C03)",
      isWhiteToMove: true,
      puzzle:
          'r1bqk2r/1p3p2/p1n1p3/2np3p/3N1Pp1/2P5/PPB3PP/R1BQ1RK1 w kq - 0 1',
      solution: [
        ['d4', 'c6'],
        {'from': 'b7', 'to': 'c6'},
        ['d1', 'd4'],
      ],
      description:
          "After exchanging knights then you have a double attack on rook and knight",
    ),
    ChessPuzzle(
      playersName: "French, Tarrasch, Guimard Main Line (ECO C04)",
      isWhiteToMove: true,
      puzzle: 'r1b2rk1/pp2b1pp/q3pn2/3nN1N1/3p4/P2Q4/1P3PPP/RBB1R1K1 w - - 0 1',
      solution: [
        ['d3', 'h7'],
        {'from': 'f6', 'to': 'h7'},
        ['b1', 'h7'],
      ],
      description: "Mate in 3, sack your queen",
    ),
    ChessPuzzle(
      playersName: "Tarrasch, Guimard Main Line (ECO C04)",
      isWhiteToMove: false,
      puzzle: 'r1b2rk1/p1p3pp/3b1q2/2pp4/8/1NP5/PP2QPPP/R1B2RK1 b - - 0 1',
      solution: [
        ['c8', 'a6'],
      ],
      description: "Why not attack white's queen with bishop",
    ),
    ChessPuzzle(
      playersName: "French, Tarrasch, Open (ECO C07)",
      isWhiteToMove: false,
      puzzle: '5rk1/1pqr1ppp/p2bp2B/3n4/6Q1/2P2N2/PP3PPP/R4RK1 b - - 0 1',
      solution: [
        ['f7', 'f5'],
      ],
      description: "The best defensive move here is attacking",
    ),
    ChessPuzzle(
      playersName: "French, Winawer (ECO C18)",
      isWhiteToMove: true,
      puzzle:
          'rnb3nr/1pq2kpp/p3pp2/1B1pP3/P1pP2Q1/B1P2N2/2P2PPP/R3K2R w - - 0 1',
      solution: [
        ['f3', 'g5'],
        {'from': 'f6', 'to': 'g5'},
        ['g4', 'h5'],
        'g6',
        ['h5', 'f3']
      ],
      description:
          "First, sack the knight and then be accurate with the move of your queen",
    ),
    ChessPuzzle(
      playersName: "French, Winawer (ECO C18)",
      isWhiteToMove: false,
      puzzle: 'r5k1/pp2n1pp/5n2/q1ppP3/6b1/P1PQ4/2P2PPP/R3KBNR b - - 0 1',
      solution: [
        ['c5', 'c4'],
        {'from': 'd3', 'to': 'd4'},
        ['e7', 'f5'],
      ],
      description:
          "Move away the only defenders of the pawn that is pinned to the king",
    ),
    ChessPuzzle(
      playersName: "French, Winawer (ECO C18)",
      isWhiteToMove: true,
      puzzle: 'r1bq1rk1/pp3p2/2n4Q/3pP3/3p1p2/P1PR4/2P2PPP/2K3NR w - - 0 1',
      solution: [
        ['d3', 'g3'],
      ],
      description: "Incredible move with the rook",
    ),
  ];

  List<ChessPuzzle> kingsIndianDefence = [
    ChessPuzzle(
      playersName: "King's Indian Defense (ECO E60)",
      isWhiteToMove: true,
      puzzle: '2b1r1k1/rp2pp1p/p5p1/q1p1Q3/2P5/1P4P1/P3PPBP/R2R2K1 w - - 0 1',
      solution: [
        ['b3', 'b4'],
        {'from': 'a5', 'to': 'b4'},
        ['e5', 'b8'],
        'Qb6',
        ['a1', 'b1']
      ],
      description:
          "You can attack the rook and take it with the queen any time you want but first, you have to remove the only defenders which is the queen",
    ),
    ChessPuzzle(
      playersName: "King's Indian Defense (ECO E60)",
      isWhiteToMove: false,
      puzzle:
          'r1bq1rk1/1pp2pbp/3p2p1/pPn1n3/2P5/Q3PN2/PB1NBPPP/R3K2R b - - 0 1',
      solution: [
        ['e5', 'd3'],
        {'from': 'e2', 'to': 'd3'},
        ['g7', 'b2'],
      ],
      description: "Knight forks with the help of your dark squared-bishop",
    ),
    ChessPuzzle(
      playersName: "King's Indian (ECO E61)",
      isWhiteToMove: true,
      puzzle:
          'r4rk1/pp1b1p1p/3p2pn/2p3q1/2P5/1PQ1P2P/P2N1PP1/R3KB1R w KQ - 0 1',
      solution: [
        ['d2', 'e4'],
      ],
      description:
          "Black is suffering from black squares especially in front of the king bring your knight to take advantage of the weak color complex of the opponent",
    ),
    ChessPuzzle(
      playersName: "King's Indian (ECO E61)",
      isWhiteToMove: false,
      puzzle:
          'r1bq1bk1/pp5p/3p1rn1/3Pppp1/1P2Pn2/B1N1NP2/P3B1PP/2RQ1RK1 b - - 0 1',
      solution: [
        ['d8', 'b6'],
        'Qd2',
        ['f4', 'e2'],
        'Qxe2',
        ['f5', 'f4']
      ],
      description: "Pin the knight and start an attack on it",
    ),
    ChessPuzzle(
      playersName: "King's Indian, Fianchetto (ECO E62)",
      isWhiteToMove: true,
      puzzle:
          '2brr1k1/pp3pbp/2pp1np1/q3n1B1/2PN4/1PN3PP/P2QPPB1/2RR2K1 w - - 0 1',
      solution: [
        ['g5', 'f6'],
        {'from': 'g7', 'to': 'f6'},
        ['c3', 'e4'],
      ],
      description:
          "After taking the knight with your bishop then there is a beautiful discover attack, don't worry if black takes your queen first because you have checks",
    ),
    ChessPuzzle(
      playersName: "King's Indian, Fianchetto (ECO E62)",
      isWhiteToMove: true,
      puzzle:
          'r4rk1/pp1b1pbp/n2p1np1/3Pp3/4P3/PqN1BNPP/1P2QPB1/R4RK1 w - - 0 1',
      solution: [
        ['a1', 'b1'],
        {'from': 'a6', 'to': 'c5'},
        ['f3', 'd2'],
        'Qb6',
        ['b2', 'b4']
      ],
      description:
          "Go for hunting black's queen but first make sure your pawns are safe",
    ),
    ChessPuzzle(
      playersName: "King's Indian, Panno Variation (ECO E63)",
      isWhiteToMove: true,
      puzzle:
          'r1bq1rk1/1p2ppbp/p4np1/n1p5/2P2B2/2NQ1NP1/PP2PPBP/R4RK1 w - - 0 1',
      solution: [
        ['d3', 'd8'],
        {'from': 'f8', 'to': 'd8'},
        ['f4', 'c7'],
      ],
      description: "Exchange queens then use your bishop to double attack",
    ),
    ChessPuzzle(
      playersName: "King's Indian, Panno Variation (ECO E63)",
      isWhiteToMove: true,
      puzzle:
          '1r2r1k1/1p1bppb1/p1np2pp/3N3q/1PP5/5NP1/P2QPPBP/2R2RK1 w - - 0 1',
      solution: [
        ['d5', 'f4'],
        {'from': 'h5', 'to': 'f5'},
        ['g2', 'h3'],
      ],
      description:
          "That's why principles are not agreed to bring queen too early. take advantage of it",
    ),
    ChessPuzzle(
      playersName: "King's Indian, Four Pawns Attack (ECO E76)",
      isWhiteToMove: true,
      puzzle: 'r1bqr3/pppnpkbp/3p2pn/8/2PP1PP1/2N2N1P/PP2B3/R1BQK2R w - - 0 1',
      solution: [
        ['f3', 'g5'],
      ],
      description: "Black's queen has no space",
    ),
    ChessPuzzle(
      playersName: "King's Indian, Classical 6.Be2 (ECO E91)",
      isWhiteToMove: true,
      puzzle:
          'r1bq1rk1/pp2ppbp/2np2p1/8/2PNP1n1/2N1B3/PP2BPPP/R2Q1RK1 w - - 0 1',
      solution: [
        ['e2', 'g4'],
        {'from': 'c8', 'to': 'g4'},
        ['d4', 'c6'],
      ],
      description:
          "Your knight is vulnerable, exchange bishop than do something about your knight regardless of what happens to your queen",
    ),
  ];

  List<ChessPuzzle> caroKann = [
    ChessPuzzle(
      playersName: 'Caro-Kann, Classical (ECO B19)',
      isWhiteToMove: true,
      puzzle: '3rkb1r/ppn2pp1/1qp1p2p/4P3/2P4P/3Q2N1/PP1B1PP1/1K1R3R w - - 0 1',
      solution: [
        ['d3', 'd8'],
        {'from': 'e8', 'to': 'd8'},
        ['d2', 'g5'],
        'Ke8',
        ['d1', 'd8']
      ],
      description: "Mate in 3 with incredible sacrifice and double-check",
    ),
    ChessPuzzle(
      playersName: 'Caro-Kann, Classical (ECO B19)',
      isWhiteToMove: false,
      puzzle: '2kr1b1r/ppqn1pp1/4pn1p/7P/2PNN3/3Q4/PP1B1PP1/1K1R3R b - - 0 1',
      solution: [
        ['d7', 'e5'],
        {'from': 'd3', 'to': 'e3'},
        ['e5', 'g4'],
        'Qd3',
        ['f6', 'e4'],
        'Qxe4',
        ['g4', 'f2']
      ],
      description:
          "This one is tough but don't worry first if you move your knight in front of rook then suddenly white's knight is pinned to the queen and also the idea of this puzzle is to get one of your knights to the g4 square and also this puzzle end up with knight forks with help of knight",
    ),
    ChessPuzzle(
      playersName: 'Caro-Kann Defense, Fantasy Variation (ECO B12)',
      isWhiteToMove: true,
      puzzle: 'r5r1/pp1n1qbk/2p2p2/3p3p/3P1NPp/N1P2P2/PP1Q3P/4RRK1 w - - 0 1',
      solution: [
        ['e1', 'e7'],
        {'from': 'f7', 'to': 'e7'},
        ['d2', 'd3'],
      ],
      description:
          "Sack the rook then find a very nice move that leads checkmate or taking black's queen",
    ),
    ChessPuzzle(
      playersName: 'Caro-Kann Defense, Fantasy Variation (ECO B12)',
      isWhiteToMove: true,
      puzzle: '2k1rbnr/pbqn3p/1p4p1/3p1p2/3P4/2NBBP2/PPPQ2PP/1K1R3R w - - 0 1',
      solution: [
        ['c3', 'b5'],
        {'from': 'c7', 'to': 'd8'},
        ['d2', 'c3'],
        'Kb8',
        ['e3', 'f4']
      ],
      description:
          "First, use knight and then the queen and after the queen use dark-squared bishop",
    ),
    ChessPuzzle(
      playersName: 'Caro-Kann, Panov-Botvinnik Attack (ECO B14)',
      isWhiteToMove: true,
      puzzle:
          'r1b2rk1/pp1nbppp/2q1p3/1NPp4/1P1PnB2/3B1N2/P4PPP/R2QK2R w - - 0 1',
      solution: [
        ['b5', 'a7'],
        {'from': 'a8', 'to': 'a7'},
        ['b4', 'b5'],
      ],
      description: "Make black's queen look stupid",
    ),
    ChessPuzzle(
      playersName: 'Caro-Kann, Panov-Botvinnik Attack (ECO B14)',
      isWhiteToMove: false,
      puzzle: '1r3rk1/ppqb1ppp/2n1p3/6B1/2PP2n1/1Q3N1P/P3BPP1/R4RK1 b - - 0 1',
      solution: [
        ['c6', 'd4'],
      ],
      description:
          "What if white has no knight? ans. you can check mate white so try to remove the knight",
    ),
    ChessPuzzle(
      playersName: 'Caro-Kann Defense, Fantasy Variation (ECO B12)',
      isWhiteToMove: false,
      puzzle:
          'rnbqk2r/pp3pb1/2p3pp/4p3/3PPBn1/2P5/PP1NB1PP/R2QK1NR b KQkq - 0 1',
      solution: [
        ['e5', 'f4'],
        {'from': 'e2', 'to': 'g4'},
        ['d8', 'h4'],
      ],
      description:
          "Don't be afraid of taking whites bishop because you have crucial check with queen",
    ),
    ChessPuzzle(
      playersName: 'Caro-Kann, Steinitz Variation (ECO B17)',
      isWhiteToMove: true,
      puzzle: '2kr3r/pb1nqppp/1p2pn2/2p5/3P1Q2/3B1NN1/PPP2PPP/2KRR3 w - - 0 1',
      solution: [
        ['g3', 'f5'],
        {'from': 'e7', 'to': 'f8'},
        ['f5', 'd6'],
        'Kb8',
        ['d6', 'b5'],
        'Ka8',
        ['b5', 'c7']
      ],
      description: "Four moves with knight",
    ),
    ChessPuzzle(
      playersName: 'Caro-Kann, Steinitz Variation (ECO B17)',
      isWhiteToMove: false,
      puzzle:
          'r1bqk2r/3n1pp1/1p2pn1p/pQb5/5B2/PB3N2/1PP1NPPP/R3K2R b KQkq - 0 1',
      solution: [
        ['c8', 'a6'],
        {'from': 'b5', 'to': 'c6'},
        ['a8', 'c8'],
      ],
      description: "White's queen in danger",
    ),
    ChessPuzzle(
      playersName: 'Caro-Kann, Steinitz Variation (ECO B17)',
      isWhiteToMove: false,
      puzzle:
          'r1bqk2r/pp1n1ppp/2pbpn2/6N1/2BP1B2/8/PPP1NPPP/R2QK2R b KQkq - 0 1',
      solution: [
        ['d6', 'f4'],
        {'from': 'e2', 'to': 'f4'},
        ['d8', 'a5'],
      ],
      description: "The second move is with the queen and wining a piece",
    ),
  ];

  List<ChessPuzzle> english = [
    ChessPuzzle(
      playersName: 'English (ECO A15)',
      isWhiteToMove: true,
      puzzle:
          '1r1r2k1/2q2p2/pp2bbpp/2p1p3/1nP5/1PN1P1PP/PB2QPB1/2RR2K1 w - - 0 1',
      solution: [
        ['a2', 'a3'],
        {'from': 'b4', 'to': 'c6'},
        ['e2', 'f3'],
      ],
      description:
          'Your queen will do the double attack after a simple move with the pawn',
    ),
    ChessPuzzle(
      playersName: 'English (ECO A15)',
      isWhiteToMove: true,
      puzzle: 'rn1qr1k1/pb2bppp/1p6/2pn4/7N/2N3P1/PP1P1PBP/R1BQR1K1 w - - 0 1',
      solution: [
        ['h4', 'f5'],
        {'from': 'd5', 'to': 'c3'},
        ['d1', 'g4'],
        'g6',
        ['g2', 'b7']
      ],
      description: "Put pressure on black's bishop then move your queen wisely",
    ),
    ChessPuzzle(
      playersName: 'English (ECO A16)',
      isWhiteToMove: true,
      puzzle:
          '1r2r1k1/1pp2pb1/pnnq2pp/2N1p1B1/1P6/P2P2PP/4PPB1/2RQ1RK1 w - - 0 1',
      solution: [
        ['c5', 'b7'],
        {'from': 'b8', 'to': 'b7'},
        ['g2', 'c6'],
      ],
      description:
          'Discover attack and removing the guard after moving the knight',
    ),
    ChessPuzzle(
      playersName: 'English, Hedgehog (ECO A17)',
      isWhiteToMove: true,
      puzzle: 'rn1qkb1r/pbp2ppp/1p2p3/4p1N1/2P5/2PB4/PP3PPP/R1BQK2R w - - 0 1',
      solution: [
        ['g5', 'f7'],
        {'from': 'e8', 'to': 'f7'},
        ['d3', 'g6'],
      ],
      description: 'Sacrifices is not a big deal where you can win a queen',
    ),
    ChessPuzzle(
      playersName: ' English, Mikenas-Carls, Sicilian Variation (ECO A19)',
      isWhiteToMove: true,
      puzzle: 'r2r2k1/p1n1qppp/1pbppb2/8/2P1PP2/1PN1BB2/P4QPP/2RR2K1 w - - 0 1',
      solution: [
        ['e4', 'e5'],
      ],
      description:
          'Simple pawn move will be a discover attack and double attack',
    ),
    ChessPuzzle(
      playersName: 'English, Bremen System (ECO A23-24)',
      isWhiteToMove: true,
      puzzle: 'r4rk1/pp1qbppp/2n1bn2/8/3NN3/3Q2P1/PP3PBP/R1BR2K1 w - - 0 1',
      solution: [
        ['d4', 'c6'],
        'Qxd3',
        ['c6', 'e7']
      ],
      description:
          'Take that knight, there are 2 knights, right? ok now you decide which one is correct ',
    ),
    ChessPuzzle(
      playersName: 'English, Bremen System (ECO A23-24)',
      isWhiteToMove: false,
      puzzle:
          'r2qkb1r/pQ1n1ppp/4bn2/3pp3/8/2N2NP1/PP1PPPBP/R1B1K2R b KQkq - 0 1',
      solution: [
        ['d7', 'c5'],
        {'from': 'b7', 'to': 'b5'},
        ['e6', 'd7']
      ],
      description: 'Poor queen',
    ),
    ChessPuzzle(
      playersName: 'English, Three Knights System (ECO A27)',
      isWhiteToMove: true,
      puzzle:
          'r1bqk2r/ppppnp1p/2n3p1/3N2B1/2Pb4/8/PP2PPPP/R2QKB1R w KQkq - 0 1',
      solution: [
        ['d1', 'd4'],
        'Nxd4',
        ['d5', 'f6'],
        'Kf8',
        ['g5', 'h6']
      ],
      description: 'Sacrificing queen will make mikhail tal happy',
    ),
    ChessPuzzle(
      playersName: 'English, Four Knights, Kingside Fianchetto (ECO A29)',
      isWhiteToMove: true,
      puzzle: 'rq3rk1/1ppnb1pp/p3bp2/8/1P1QN3/P5P1/1B2PPBP/2R2RK1 w - - 0 1',
      solution: [
        ['e4', 'g5'],
        'Bf5',
        ['d4', 'd5']
      ],
      description:
          'There is no way for black to defend the piece if you move the knight first',
    ),
    ChessPuzzle(
      playersName: 'English, Symmetrical, Benoni Formation (ECO A31)',
      isWhiteToMove: true,
      puzzle: 'rnbqkb1r/pp3ppp/8/1N1np3/8/8/PP2PPPP/RNBQKB1R w KQkq - 0 1',
      solution: [
        ['d1', 'd5'],
      ],
      description:
          "Simple but it happens on the board so many times, it's all about sacking",
    ),
  ];
}
