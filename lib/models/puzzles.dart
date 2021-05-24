import 'dart:math';

import 'package:flutter/material.dart';
import 'chessPuzzels.dart';

class Puzzles extends ChangeNotifier {
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

  List<ChessPuzzle> pin = [
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2b1k3/p2q4/3PnQ2/Pp1B4/1P3P2/6PP/7K/8 w - - 1 1',
      solution: [
        ['d5', 'c6'],
        'Qxc6',
        ['f6', 'e7']
      ],
      description:
          'there is some check mate threat but blacks queen provent it',
    ),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '6k1/p4Np1/1p1qrn1Q/3b4/3P3P/1B4R1/PP3PP1/6K1 b - - 0 1',
        solution: [
          ['e6', 'e1'],
          'Kh2',
          ['nf6', 'g4']
        ],
        description: 'pin the rook to gain queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1n6/1p6/2k1q1p1/1p2n1Pp/2p4P/2Q2P2/PPP5/2KR4 w - - 0 1',
        solution: [
          ['d1', 'e1']
        ],
        description: 'night and the queen are on the same file'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '7r/p5p1/7k/2Np3p/3P4/2P2Q2/Pr5q/R4K2 b - - 0 1',
        solution: [
          ['h8', 'f8'],
          'Qxf8',
          ['h2', 'h1']
        ],
        description: 'queen and the king are on the same file'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '4rr1k/1p4p1/p1pp3p/2P5/Q3B3/PPP3Pb/5q1P/R3R2K b - - 0 1',
        solution: [
          ['h3', 'g2'],
          'Bxg2',
          ['e8', 'e1']
        ],
        description: 'what happen if we remove whits bishop'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            '4rrk1/pbqn1p1p/1p1b2p1/2pp2N1/2P4P/1P4P1/PB2QP2/1B1R1RK1 w - - 0 1',
        solution: [
          ['e2', 'h5'],
          {'from': 'g6', 'to': 'h5'},
          ['b1', 'h7']
        ],
        description: 'there is forced check mate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5rk1/1p1rnqpp/p1pb1p2/P3p3/4P3/1PQNB3/1P3PPP/3R1RK1 w - - 0 1',
        solution: [
          ['d3', 'c5'],
          {'from': 'd7', 'to': 'd8'},
          ['c5', 'b7']
        ],
        description: 'seek for annoying pin'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            '5rk1/2pbqppp/1r3n2/p2p2BN/1p1P2PP/1P1B1P2/P1PQ4/2K4R w - - 0 1',
        solution: [
          ['g5', 'f6'],
          {'from': 'b6', 'to': 'f6'},
          ['d2', 'g5']
        ],
        description: 'try check mate black through you will win a heavy piece'),
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
        description: 'there is a pinned pawn try to take advantage of it'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3r2k1/2qn1p1p/4p1pB/4P2P/7Q/3R4/1r3PP1/3R2K1 w - - 0 1',
        solution: [
          ['h4', 'f6'],
          'Nxf6',
          ['d3', 'd8']
        ],
        description: 'what if there is no knight here at this position'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3rk2r/1q2bpp1/2p2n1p/1p3Q2/3P1B2/5N2/1P3PPP/R3R1K1 w k - 0 1',
        solution: [
          ['e1', 'e7'],
          'Kxe7',
          ['a1', 'e1'],
        ],
        description: 'king in the center attack on it'),
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
        description: 'do not think about check the king with rook first move'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '6k1/p1p2rb1/4Q2R/5p2/2N4P/1P1qP1P1/PB5K/8 w - - 0 1',
        solution: [
          ['e6', 'e8'],
          'Rf8',
          ['h6', 'h8'],
        ],
        description:
            'your bishop is so strong that can help you with pinning blacks bishop'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3qn1k1/2r1r1bN/1pp3Q1/p2pPN2/P2P4/1P4P1/5PK1/7R w - - 0 1',
        solution: [
          ['f5', 'h6'],
          'Kh8',
          ['h7', 'g5'],
        ],
        description: 'two first moves are with both knights '),
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
            'this is very tricky whites bishop is pinned so try to attack on it'),
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
            'at the end blacks queen will gone.  first move with pawn not rook'),
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
            'How can white take advantage of the exposed queen and the pinned knight ?'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'q5k1/5pp1/8/1pb1P3/2p4p/2P2r1P/1P3PQ1/1N3R1K b - - 0 1',
        solution: [
          ['f3', 'h3'],
          'Kg1',
          ['h3', 'g3'],
        ],
        description:
            'do not afraid of loosing your rook because of great support from back by queen and bishop that pinned every thing'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4r1r1/2p5/1p1kn3/p1p1R1p1/P6p/5N1P/1PP1R1PK/8 w - - 0 1',
        solution: [
          ['f3', 'g5'],
        ],
        description: 'two first moves are with both knights '),
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
            'forget about your pawn unfortunately he can not become queen one day but he can help you with pinning bishop'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4k2r/4np1p/1pq1pBp1/p1p1P3/Q7/2P5/PP4PP/3R2K1 w - - 0 1',
        solution: [
          ['d1', 'd8'],
          'Kxd8',
          ['a4', 'c6'],
        ],
        description:
            'Trade your rook for a queen , might wanna sacrifice something!'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            'r4r2/1bn4k/1qn1ppp1/p1ppP3/1p1P4/2PBB3/PP1N2PP/R2Q1RK1 w - - 0 1',
        solution: [
          ['d1', 'h5'],
        ],
        description:
            'You can checkmate in 3 , by using the power of the pin . might wanna use ur queen . '),
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
        description: 'Try using your queen to manage the rook grab'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle:
            '2nq1r1k/1p3p1p/2p3p1/1PPpPp2/3P1P1b/r3B2Q/4NP1P/1R4RK b Qq - 0 1',
        solution: [
          ['h4', 'f2'],
        ],
        description: 'pin whits bishop to the queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3b1rk1/5pp1/p3p2p/4P3/1Q3N1q/8/PPP5/1K3R2 w - - 0 1',
        solution: [
          ['b4', 'f8'],
          'Kxf8',
          ['f4', 'g6']
        ],
        description:
            'sacrifice your queen to get rook and queen with beautiful forks with help of pin'),
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
        description: 'go for queening'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '5rk1/1pp2ppp/r7/p1q1n3/2PRQ3/P4P2/1P2PP1P/4KB1R b - - 0 1',
        solution: [
          ['e5', 'f3'],
          {'from': 'e2', 'to': 'f3'},
          ['a6', 'e6']
        ],
        description: 'sacrifice your knight to pin the queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2r3k1/R5pp/2q2n2/3p4/8/2Q3P1/1P3PB1/6K1 w - - 0 1',
        solution: [
          ['g2', 'd5'],
          'Qxd5',
          ['c3', 'c8']
        ],
        description:
            'blacks knight is pinned because of checkmate and also queen to rook'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5rk1/r2nqppp/pp6/n2Rp3/1p2P3/2P1B2P/P1B1QPP1/3R2K1 w Qq - 0 1',
        solution: [
          ['d5', 'a5'],
          {'from': 'b6', 'to': 'a5'},
          ['e3', 'a7']
        ],
        description: 'there is a pinned pawn'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4kb1r/pp1qnppp/8/1Q1NP1B1/8/P7/1P3PPP/2R3K1 w - - 0 1',
        solution: [
          ['c1', 'c8'],
          'Nxc8',
          ['d5', 'c7']
        ],
        description: 'this one is checkmate in two with help of pin'),
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
      description: 'look for the forks',
    ),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '2qrb1k1/1p2bppp/1n2p3/p3P3/3NN3/1P4Q1/PB3PPP/3R2K1 b - - 0 1',
        solution: [
          ['c8', 'c2']
        ],
        description: 'try get benefit from the whites weak back rank'),
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
        description: 'queen and the king are ready to be forked'),
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
          'one of your knights will for other knight to do the job and get blacks queen',
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
          'after exchanging the knights then you have a move which is simply double attack',
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
          'first move is Nd5 but after that you have to calculate two possible move with black Kg7 or Qd6',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5rk1/5pp1/1q5p/3nP2P/4N3/1b4Q1/1P2BR2/6K1 w - - 0 1',
      solution: [
        ['e4', 'f6'],
      ],
      description: 'disturb blacks pawn to get king',
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
          'there is no directly knight forks here but you have to work for it',
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
          'there is knight forks with help of rook that pinned a pawn but at first you have to sacrifice a rook',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r3r3/1pp3kp/2bpnpp1/p2B4/2PP4/PPN3P1/5P1P/1R1R2K1 w - - 0 1',
      solution: [
        ['d5', 'e6'],
        'Rxe6',
        ['d4', 'd5']
      ],
      description:
          'simple what if there is no bishop . ans you push a pawn to fork both blacks piece',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '4rrk1/1p1n2np/p2p4/2pP4/P1P3P1/2P4Q/2q3B1/2B1RRK1 b - - 0 1',
      solution: [
        ['e8', 'e1'],
        'Rxe1',
        ['c2', 'f2'],
      ],
      description: 'you will win a rook if you play correctly',
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
      description: 'pawn forks',
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
          'there is the way you can take rook without being checkmated',
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
      description: 'knight forks happen on f6 square but how you find out',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '1r6/p5pk/4p1r1/2N1p2p/1P1bP2q/8/P1R1Q1PP/5R1K w - - 0 1',
      solution: [
        ['c5', 'd7'],
        'Rd8',
        ['d7', 'f8']
      ],
      description: 'both moves with knight',
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
      description: 'first move is with queen',
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
      description: 'knight forks after one move',
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
      description:
          'the most important things here is after moving knight f6 pawn can be taken and here first move is with rook',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '3r1k2/RR3bp1/2Bn1p2/1PN5/3Pp1r1/8/7K/8 w - - 0 1',
      solution: [
        ['b7', 'f7'],
        'Nxf7',
        ['c5', 'e6']
      ],
      description: 'make knight forks work',
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
          'whites king is exposed to check do not miss this chance to check him',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'Q7/p4rkp/8/2p1q1N1/P1P5/8/8/7K w - - 0 1',
      solution: [
        ['a8', 'h8'],
        'Kxh8',
        ['g5', 'f7']
      ],
      description: 'your knight can remove them all',
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
      description: 'thats funny because your knight is unstoppable',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: 'r1b2rk1/pp4pp/2p2b2/2Ppq3/1P1N1Pn1/P2B4/1B4PP/R2Q1RK1 b - - 0 1',
      solution: [
        ['e5', 'e3'],
        'Kh1',
        ['g4', 'f2']
      ],
      description: 'use your queen and let the knight do the rest',
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
      description: 'first move with Knight',
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
      description: 'blacks queen is undefended',
    ),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2r1r2k/1b3ppp/pqN1pn2/1p6/PQ6/2R1PB2/1P3PPP/5RK1 w - - 0 1',
        solution: [
          ['a4', 'a5'],
          {'from': 'b6', 'to': 'c7'},
          ['c6', 'a7']
        ],
        description: 'blacks queen restricted'),

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
            'whites bishop is the only defender that prevent knight forks so remove it'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '4q1k1/pppb1pbp/1n1p2pB/7n/2PP3N/1PN4P/P1BQ1PP1/6K1 b - - 0 1',
        solution: [
          ['g7', 'h6'],
          'Qxh6',
          ['e8', 'e1'],
          'Kh3',
          ['e1', 'c3']
        ],
        description: 'exchanging bishop will help you'),
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
        description: "nothing can't prevent knight forks"),

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
            'rook when go to the 7th rank or 8th rank it will be called wild pig because of its danger and power there'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            'r1bq1rk1/p4ppp/2p1n3/3pb3/1P6/P2B1QN1/2P2PPP/R1B2RK1 w - - 0 1',
        solution: [
          ['f3', 'f5'],
        ],
        description:
            'blacks bishop is in danger and also blacks king feel he is safe but he is not'),

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
            'after a lot of exchanges you realise that you won something '),

    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/1N2kp2/2p3p1/p3P2p/2P1KP2/n1r3P1/7P/R7 b - - 0 1',
        solution: [
          ['a3', 'c2'],
          {'from': 'a1', 'to': 'b1'},
          ['c3', 'e3']
        ],
        description: 'may be there is some checkmate threats here'),

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
            'first move is clear for the second and third move you fork rook and king with help of pinned pawn'),

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
        description: 'the blacks doubled pawn is a weakness'),

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
            'double check and discover check with the help of blacks white squared bishop'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3r1r1k/p1p3pp/6q1/2P5/1P1N1p1n/PQ1n1P2/1B1R2PP/R5K1 b - - 0 1',
        solution: [
          ['d8', 'd4'],
          {'from': 'b2', 'to': 'd4'},
          ['h4', 'f3']
        ],
        description:
            'I have question for you do the knight can fork king and the rook in first move if not why ? and how to do it ?'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1r3rk1/5ppp/4pn2/1qp5/7Q/2B3P1/1Pn1PPBP/R2R2K1 w - - 0 1',
        solution: [
          ['c3', 'f6'],
          {'from': 'g7', 'to': 'f6'},
          ['g2', 'e4'],
        ],
        description: 'white squared bishop will be key in this position'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r3r2k/pp5p/2pRn1p1/4N3/1P2qpP1/8/PB3P1P/Q5K1 w - - 0 1',
        solution: [
          ['e5', 'd7'],
          {'from': 'h8', 'to': 'g8'},
          ['d7', 'f6'],
        ],
        description:
            'discover check it is just like you win a tempo and a move a head'),

    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/ppkbQ2p/1q1p2B1/2n1p3/2P5/2P5/P5PP/3R2K1 b - - 0 1',
        solution: [
          ['c5', 'd3'],
          {'from': 'g1', 'to': 'h1'},
          ['d3', 'f2']
        ],
        description: 'discover check'),

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
            'what if there is no bishop here ? ans we take the queen simple so right now can we make happen'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle:
            'r5rk/1pp3bp/n2p2q1/p2P1b2/4pp2/PPN2P2/1Q2B1PP/2R1RNBK b - - 0 1',
        solution: [
          ['g6', 'g2'],
          {'from': 'h1', 'to': 'g2'},
          ['g7', 'c3']
        ],
        description: 'there is beautiful discover attack with check here'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '3r1rk1/ppp1q2p/5p2/4pb2/2PnN3/3Q2P1/PP3PBP/R2R2K1 b - - 0 1',
        solution: [
          ['f5', 'g4'],
          {'from': 'f2', 'to': 'f3'},
          ['d4', 'f3']
        ],
        description:
            'what is you move knight ? but in the first move its impossible because of if you do any check then whits queen take the knight'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1n3r1k/4bp1p/2p1pp2/3q3Q/P1rP4/5NP1/5PBP/R2R2K1 w - - 0 1',
        solution: [
          ['g2', 'e5'],
        ],
        description: 'discover attack by moving a piece'),
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
            'first find the best place for your queen then suddenly some thing happen you find out by your self'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1Q2b1k1/2r1q1pp/4P3/3B4/1p1n4/6P1/7P/5RK1 w - - 0 1',
        solution: [
          ['b8', 'e8'],
          {'from': 'e7', 'to': 'e8'},
          ['e6', 'e7']
        ],
        description:
            'discover checks are so strong sometimes you sacrifice major piece for it to win the game'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r4B1k/1p4pp/p7/8/3Qp2P/1BP2p2/PP1K1nq1/3R4 b - - 0 1',
        solution: [
          ['f2', 'd3'],
        ],
        description: 'discover attack with check'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2rq3r/pp1n1Q2/3P2pk/4b1Np/3p1B1P/8/PP3PP1/1K5R w - - 1 0',
        solution: [
          ['g5', 'e6'],
        ],
        description: 'discover attack with check'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '6k1/5R1p/1p1r2p1/4p3/P1Q2p2/3P2Pq/4PP1P/6K1 w - - 1 0',
        solution: [
          ['f7', 'd7'],
        ],
        description: 'discover attack with check and winning rook'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '4r3/p1kn2NR/3b1QP1/1bq2P2/1pp5/4p3/PPP5/3R3K b - - 0 1',
        solution: [
          ['b5', 'c6'],
          {'from': 'h1', 'to': 'g1'},
          ['e3', 'e2']
        ],
        description:
            'there are two checks one of them is correct and one other hint is discover check happen with moving pawn not bishop'),
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
        description: 'your bishop plays an important role to mate in 4'),
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
            'great example to show what is discover attack with check'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1bqr1k1/ppp1bppp/5n2/8/3n4/2NB1N2/PPP2PPP/R1BQ1RK1 w - - 0 1',
        solution: [
          ['d3', 'h7'],
        ],
        description:
            'discover attack with check just a pawn and a pawn means a lot'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            'r4rk1/pp1n1pp1/2q3bp/4p1b1/8/P1B1PNP1/1P3PBP/R2Q1RK1 w - - 0 1',
        solution: [
          ['f3', 'g5'],
        ],
        description: 'discover attack on queen'),
  ];

  List<ChessPuzzle> sacrifice = [
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2q4r/1Q2nk2/1R6/p4pR1/4pP2/7P/6P1/6K1 w - - 0 1',
      solution: [
        ['g5', 'g7'],
      ],
      description: 'sacrifice to checkmate king',
    ),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'R7/2q2ppk/3bp2p/3p4/1n1P1N2/4PNP1/2r2P1P/3Q2K1 w - - 0 1',
        solution: [
          ['f3', 'g5'],
          {'from': 'h6', 'to': 'g5'},
          ['d1', 'h5']
        ],
        description: 'the solution of this puzzle must end with checkmate'),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '4k3/7p/b5p1/8/7N/2B2pbP/P4rP1/2R3KR b - - 0 1',
      solution: [
        ['f2', 'g2'],
        {'from': 'h4', 'to': 'g2'},
        ['f3', 'f2']
      ],
      description: 'Black mates in 2',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6kb/R6p/6nP/3qp3/1B2RPQ1/1P6/2rp3N/6K1 w - - 0 1',
      solution: [
        ['g4', 'g6'],
        {'from': 'h7', 'to': 'g6'},
        ['h6', 'h7']
      ],
      description: 'this part is all about sacrifice so be brave',
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
          'you have to option whether take it with knight or with rook',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '2q4r/1Q2nk2/1R6/p4pR1/4pP2/7P/6P1/6K1 w - - 0 1',
      solution: [
        ['a8', 'a1'],
        'Kxa1',
        ['g6', 'a6'],
        'Kb1',
        ['a6', 'a2']
      ],
      description: 'mate in four',
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
      description:
          'check mate in 3 remember you have to be brave for giving piece',
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
          'try to get benefit from the pinned queen and knight forks that open the rank',
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
      description: 'first move is just amazing sacrifice',
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
      description: 'check mate in 3',
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
          'this will end with check mate and it is impossible without sacrifice',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '4r3/6kp/2q3p1/1R6/1P6/3B3K/2PQ3N/6r1 b - - 0 1',
      solution: [
        ['e8', 'e3'],
        'Qxe3',
        ['c6', 'g2']
      ],
      description: 'do you like sacking rook ?',
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
      description: 'put the king in the corner or invite him to your territory',
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
      description: 'sacrifice your queen',
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
          'the idea of this puzzle is so common and it happen in your game so frequently that you have to sack your rook in order to bring your queen instead',
    ),
    //!
    //// * 15
    //!
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
      description: 'sacrifice queen',
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
      description: 'first move with pawn and the second with rook',
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
      description:
          'we can discover check the queen but there is a pawn defend him so first we have to remove it',
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
      description: 'check mate in 3 with sacrificing your queen',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '3rr3/Qp3k2/2b1pp2/3n3p/P7/BP4P1/4KP1P/2R1R2q b - - 0 1',
      solution: [
        ['d5', 'f4'],
        {'from': 'g3', 'to': 'f4'},
        ['h8', 'f3'],
        'Ke1',
        ['f3', 'h3'],
        'Ke2',
        ['h3', 'd3']
      ],
      description: 'mate in 4 with sacrificing knight',
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
          'if queen diagonally pair up with bishop then there is no check mate threat simply white push the pawn to block them so can you make something to prevent whites pawn to block the diagonals',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '3k4/ppr1bp1r/4p1p1/3pP2p/QP1q1N1P/P4RP1/6PK/5R2 w - - 0 1',
      solution: [
        ['f4', 'e6'],
        {'from': 'f7', 'to': 'e6'},
        ['f3', 'f8']
      ],
      description: 'some sacrifices are for opening files',
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
          'some sacrifices for destroying blacks king defence to checkmate him',
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
      description: 'checkmate in 4',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '1r1q1b1k/p1p4r/3pR1Q1/2pB4/2P3pP/1P4P1/P6K/4R3 w - - 0 1',
      solution: [
        ['g6', 'g8'],
        'Kxg8',
        ['e6', 'g6'],
        'Kh8',
        ['g5', 'g8']
      ],
      description: 'check mate in three with a beautiful sacrifice',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5rk1/p2b2r1/1p2pR1Q/3pP1p1/1q1P2RP/3BP3/PP6/6K1 w - - 0 1',
      solution: [
        ['h6', 'g7'],
        'Kxg7',
        ['g4', 'g5']
      ],
      description: 'queen',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r5kr/2N1bp2/2qp1ppQ/4p3/p7/PpP3R1/1P4PP/2K4R w - - 0 1',
      solution: [
        ['g3', 'g6'],
      ],
      description: 'checkmate in 3',
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
      description:
          'the final check mate in this puzzle happen with rook and knight',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5r1k/pp1n1p1p/5n1Q/3p1pN1/3P4/1P4RP/P1r1qPP1/R5K1 w - - 0 1',
      solution: [
        ['h6', 'f8'],
        'Kxf8',
        ['g5', 'f7']
      ],
      description:
          'have you ever sacrifice your queen in the chess tournament ? if yes then does it successful ',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r1b1nBR1/pp1n3k/2p5/4p2q/2Q1P3/2N5/PPP2P2/1K4R1 w - - 0 1',
      solution: [
        ['g8', 'h8'],
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
        description: 'look for back rank'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle:
            'rbb1k1nr/ppqn2pp/2p1p3/3p1pN1/2PP4/1PN1P3/P3BPPP/R1BQ1RK1 b kq - 0 1',
        solution: [
          ['c7', 'h2']
        ],
        description: 'blacks queen and bishop are on the same diagonal so !!'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '1r2R3/8/2p2k1p/p5p1/Pp1n4/6Pq/QP3P2/4R1K1 b - - 0 1',
        solution: [
          ['d4', 'f3']
        ],
        description:
            'there is no space for blacks king one check can be game over'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3r2rk/p5pp/1p4n1/3p2N1/2pP4/2P1R3/qPBQ1PPP/6K1 w - - 0 1',
        solution: [
          ['g5', 'f7']
        ],
        description:
            'there is no space for blacks king one check can be game over'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '2r2rk1/p4pp1/1p3n1p/4pN2/4P3/2q1P3/n1PRQ1PP/3K1R2 b - - 0 1',
        solution: [
          ['c3', 'a1']
        ],
        description: 'blacks back rank is so weak'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r5k1/ppp2rp1/7p/2qN4/3n4/3Q4/PPPP2PP/R1B3KR b - - 0 1',
        solution: [
          ['d4', 'e2']
        ],
        description: 'double check'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/8/5k1p/6pP/6P1/4b3/8/2rb1K2 w - - 0 1',
        solution: [
          ['d1', 'f3']
        ],
        description: 'where do you put your bishop'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '2k5/p7/Ppb5/3p1p2/5P2/5KBP/3r4/1R6 w - - 0 1',
        solution: [
          ['d5', 'd4']
        ],
        description: 'sometimes pawns are killer'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2r1kr2/pN4R1/4p3/3p2p1/6q1/BP2P3/P2P2B1/6K1 w - - 0 1',
        solution: [
          ['g7', 'e7']
        ],
        description: "don't move knight because prevent king to run away"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r5rk/1q2b1p1/6Pp/2p1BP2/pp2P3/8/1PP3P1/2KR3R w - - 0 1',
        solution: [
          ['h1', 'h6']
        ],
        description: 'there is nice pin help us to mare king'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '5r1k/2p1b1pp/p2pB3/8/2Q1P3/5pPn/RP5P/6RK b - - 0 1',
        solution: [
          ['h3', 'f2']
        ],
        description: 'knights are so merciless'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '1r4k1/R6p/3p1r2/1p2n3/1Pp1Pp2/5Nn1/2B2KP1/R2Q3q w - - 0 1',
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
        description: 'bring other rook to play'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1brk1n1/1pp3Q1/p2p1p2/3NnP2/4P3/3B2R1/PPP3PP/R5K1 w - - 0 1',
        solution: [
          ['d5', 'c7']
        ],
        description: 'there is so many checks but one of them is correct'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r6k/1p4p1/1pp4p/3p4/1P1nq1P1/P4rp1/3B4/R1R3QK b - - 0 1',
        solution: [
          ['f3', 'f1']
        ],
        description: 'you have to move your rook but where this is important'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '1R6/4pk1p/6p1/R7/1P6/6PP/r4n1K/2r5 b - - 0 1',
        solution: [
          ['f2', 'g4']
        ],
        description: 'double check thats it'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r4rk1/pb4pp/1p2npq1/1N6/8/1P5P/PBP1QPP1/R4RK1 b - - 0 1',
        solution: [
          ['g6', 'g2']
        ],
        description: 'bishops are good supporters'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '2k5/1pp5/p6p/5p2/1P4p1/P5P1/5P1P/4rbK1 w - - 0 1',
        solution: [
          ['f1', 'h3']
        ],
        description: "don't let king run through g2"),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '3N1rk1/pb3ppp/1p6/2b1N3/4n3/PP6/1BR4P/5R1K w - - 0 1',
        solution: [
          ['e4', 'g3']
        ],
        description: 'double check thats it'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3rr2k/1p3R1B/p2P4/2P1N1p1/b2K2P1/P7/8/8 w - - 0 1',
        solution: [
          ['e5', 'g6']
        ],
        description: 'blacks king is stuck one check is mate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'kr5r/pp1R1p2/N3p3/7p/qP6/P6p/5PPK/2R5 w - - 0 1',
        solution: [
          ['a6', 'c7']
        ],
        description: 'blacks king run out of squares one check is mate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r4q1k/1p3p1p/4bNnQ/r2p4/p2P4/2P4P/2B2PP1/R3R1K1 w - - 0 1',
        solution: [
          ['h6', 'h7']
        ],
        description: "if you think that one need hint then simply i can't "),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '4k1r1/1Q1n1p1p/4p1r1/8/1B6/P4PP1/1PP2q2/4R2K b - - 0 1',
        solution: [
          ['g6', 'h6']
        ],
        description: 'whits king are out of squares one check is mate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2r5/3b3k/p2P4/1pp1BppB/5P2/P5P1/1PP2K2/7R w - - 0 1',
        solution: [
          ['h5', 'f7']
        ],
        description:
            'first move is clear you have to move bishop but where thats important'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r6k/ppp3pp/2np2r1/3QP3/2P1P2q/P1P1P3/1B2B1b1/R4RK1 b - - 0 1',
        solution: [
          ['g2', 'f3']
        ],
        description: 'block whits bishop'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '4r1k1/ppp3pp/3b4/8/2Pp3q/1P1P1p1b/P2B1P2/1R4QK w - - 0 1',
        solution: [
          ['h3', 'g2']
        ],
        description: 'double check'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            '4rrn1/2nbq1bk/p2p2p1/PppP1pp1/4P1P1/2NB1P1N/1P1Q2KR/7R w - - 0 1',
        solution: [
          ['h3', 'g5']
        ],
        description: 'double check'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/pp1kn3/4p2R/1P1p4/2pP4/2P1K3/P4r2/2B2r2 w - - 0 1',
        solution: [
          ['e7', 'f5']
        ],
        description:
            'block blacks rook not let it take your queen while check'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r3r1k1/pb3ppp/1p1Q4/4n3/1P3P2/P7/5PPP/3RKB1R w - - 0 1',
        solution: [
          ['e5', 'f3']
        ],
        description: "double check but don't let king run away"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r5k1/pp2bR1p/2p3pB/4p2n/2BqP3/3P3P/PPP3P1/R6K w - - 0 1',
        solution: [
          ['f7', 'f8']
        ],
        description: 'double check but you have to be smart'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'rnbqkb1r/1p3ppp/p4n2/2pp4/8/5N2/PPPPBPPP/RNBQR1K1 w - - 0 1',
        solution: [
          ['e2', 'b5']
        ],
        description: 'there is only one check'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2b3rk/2q1r3/1pP1pnRB/pP1pNp1Q/P2P4/2N4P/5P2/6K1 w - - 0 1',
        solution: [
          ['h6', 'g7']
        ],
        description: 'where do you put your bishop ?!!'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '7r/1p1b2k1/1qpP1p2/p2P1P2/N4nP1/1P2r3/P2Q2B1/2R3KR b - - 0 1',
        solution: [
          ['e3', 'e1']
        ],
        description: 'move your rook wisely '),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/pp2k3/2ppp3/4p3/4P1rq/3P1Qb1/PPP1R3/5RK1 w - - 0 1',
        solution: [
          ['g3', 'f2']
        ],
        description: 'double check'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '3k3r/1pp2p2/p3bN1p/4P3/2P4n/1P2K1P1/PQ5P/R1Br1q2 w - - 0 1',
        solution: [
          ['f1', 'f3']
        ],
        description:
            'there is 9 possible checks one of them is correct can you spot it'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3r1r1k/1bpq1P1p/p7/1pbpP1Q1/8/1PN3B1/1PP3PP/3R1R1K w - - 0 1',
        solution: [
          ['g5', 'f6']
        ],
        description: 'queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5b1r/2B1k3/p1q1ppQp/1pp5/8/8/PPP2PPP/3R2K1 w - - 0 1',
        solution: [
          ['c7', 'd8']
        ],
        description: 'sometimes bishops are killer'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5q1k/p2b1rrp/1p3BnQ/3pPp2/P1pP2P1/2P5/2P5/R3K2R w - - 0 1',
        solution: [
          ['h6', 'h7']
        ],
        description: 'the only defender is pinned by your bishop'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2r2rkb/5p2/5P2/p3pN1Q/1p6/6PP/1P3PB1/1b4K1 b - - 0 1',
        solution: [
          ['f5', 'e7']
        ],
        description: 'there is only one correct check with your knight'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '7k/1pQbbp2/3p3p/3Pp3/1PP1Pp1q/1N3P2/P5K1/2R2B1r b - - 0 1',
        solution: [
          ['h4', 'h2']
        ],
        description: 'kiss the king'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2q3R1/1n1k4/1n1p4/2pP1pBB/ppP1pP2/1P6/P7/5K1R b - - 0 1',
        solution: [
          ['g8', 'g7']
        ],
        description: "your bishops place are so good don't move them"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1r3k1r/p1R2Bbp/1p6/5pp1/3P4/1P2P1PP/PB1N1P2/4K2b w - - 0 1',
        solution: [
          ['b2', 'a3']
        ],
        description: 'sometimes bishops are killer'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '5rk1/2p2pp1/3b3p/8/2P4P/1P2B2q/P4P1P/R4RK1 b - - 0 1',
        solution: [
          ['h3', 'h2']
        ],
        description: 'kiss the king'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '3R1bk1/p4ppp/1p4n1/4PN2/4B3/1P3P2/P5KP/4q3 b - - 0 1',
        solution: [
          ['g6', 'f4']
        ],
        description: 'its good to have knights and queens attacking king'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/8/1p6/1B6/P2b4/4p1k1/6p1/6K1 b - - 0 1',
        solution: [
          ['e3', 'e2']
        ],
        description: 'sometimes bishops are killer'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2rrk3/5pp1/2P4p/Q7/8/4B3/PP3PPP/R3R1K1 w - - 0 1',
        solution: [
          ['e3', 'c5']
        ],
        description: "don't let blacks king run away go to the behind pawns"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r3bknQ/1p3pp1/pq1r4/2Np1pN1/1P1P4/P3R3/5PP1/2R3K1 b - - 0 1',
        solution: [
          ['g5', 'h7']
        ],
        description: 'blacks king are out of squares one check is mate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4RBk1/7p/6p1/3r2b1/3P4/2P5/rP4PP/5RK1 b - - 0 1',
        solution: [
          ['f8', 'h6']
        ],
        description:
            'first move is bishop but where you put it thats important'),
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
        description: 'sometimes bishops are killer'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '3r3k/1p3Q1p/2b2b2/4pP2/1p2P3/1B3q2/PP5P/3RK3 w - - 0 1',
        solution: [
          ['f6', 'h4']
        ],
        description: 'sometimes bishops are killer'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r3k3/p1b3p1/2p2np1/3p4/4P3/4BKP1/PPP1NP1r/RN3R2 w - - 0 1',
        solution: [
          ['d5', 'e4']
        ],
        description: 'whits king are out of squares one check is mate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1b1qrk1/pppp1p2/2n2Bp1/b7/2B1P3/2P5/PP3PP1/RN2K1NR w - - 0 1',
        solution: [
          ['h1', 'h8']
        ],
        description: 'rook'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1bq3k/4R1np/pp1p1Bp1/2pQ4/2P2P2/2N5/PP4PP/5R1K w - - 0 1',
        solution: [
          ['f6', 'g7']
        ],
        description: 'sometimes bishops are killer'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1bnrk2/3R4/p4Np1/4P3/2p5/6P1/PPP2PB1/2K4R w - - 0 1',
        solution: [
          ['h1', 'h8']
        ],
        description: 'stair case mate'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '6k1/1p2rpp1/p5n1/2PN2p1/2Q3P1/1P3K1P/4RP2/6q1 b - - 0 1',
        solution: [
          ['g6', 'h4']
        ],
        description: 'whits king are out of squares one check is mate'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '3r2k1/1p2p2p/p3n1p1/4P3/4K1pP/5r2/PP2N3/6R1 w - - 0 1',
        solution: [
          ['e6', 'c5']
        ],
        description: 'whits king are out of squares one check is mate'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '6k1/R4p1p/6p1/5pr1/7r/P1Nn1P2/1P5R/7K w - - 0 1',
        solution: [
          ['d3', 'f2']
        ],
        description: 'the rook in front of king is pinned'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2k5/pRprq3/3p3p/2bBp1p1/4P1b1/2PPBN2/2P2PPP/1R5K w - - 0 1',
        solution: [
          ['b7', 'b8']
        ],
        description: 'back rank'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle:
            'r1b1k1nr/pppp1ppp/2n5/2b5/2B1Pp1q/2N2N2/PPPP2PP/R1BQ1K1R b - - 0 1',
        solution: [
          ['h4', 'f2']
        ],
        description: 'napoleons style check mate'),
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
        description: 'simple try remember rook and king checkmate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4rkr1/1R1R4/4bK2/8/8/8/8/8 w - - 0 1',
        solution: [
          ['d7', 'f7'],
          'Bxf7',
          ['b7', 'f7']
        ],
        description: 'blacks two rook will help us !!'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2k5/1q4b1/3K4/8/7R/8/7R/8 w - - 0 1',
        solution: [
          ['h4', 'h8'],
          'Bxh8',
          ['h2', 'h8']
        ],
        description: 'thanks for the blacks queen !'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'kr6/1p6/p5R1/8/1q6/8/Q7/2K5 w - - 0 1',
        solution: [
          ['g6', 'a6'],
          {'from': 'b7', 'to': 'a6'},
          ['a2', 'a6']
        ],
        description: 'do you know queens are strong piece'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '6k1/8/6K1/8/8/3r4/4r3/5R1R w - - 0 1',
        solution: [
          ['h1', 'h8'],
          'Kxh8',
          ['f1', 'f8']
        ],
        description: 'bring blacks king to the corner'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2rkr3/2ppp3/2n1n3/R2R4/8/8/3K4/8 w - - 0 1',
        solution: [
          ['d5', 'd7'],
          'Kxd7',
          ['a5', 'd5']
        ],
        description: 'other black pieces will help you to check mate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k7/3b4/1K6/8/8/5q2/2R1R3/8 w - - 0 1',
        solution: [
          ['e2', 'e8'],
          'Bxe8',
          ['c2', 'c8']
        ],
        description: 'remove the bishop first'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'kr6/1p6/8/1p5R/6R1/8/1r6/5K2 w - - 0 1',
        solution: [
          ['g4', 'a4'],
          {'from': 'b5', 'to': 'a4'},
          ['h5', 'a5']
        ],
        description: 'try get to the open file'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'kn1R4/ppp5/2q5/8/8/8/8/3RK3 w - - 0 1',
        solution: [
          ['d8', 'b8'],
          'Kxb8',
          ['d1', 'd8']
        ],
        description: 'back rank'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1kb4R/1npp4/8/8/8/8/8/R5K1 w - - 0 1',
        solution: [
          ['h8', 'c8'],
          'Kxc8',
          ['a1', 'a8']
        ],
        description: 'back rank'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5K1k/7p/8/2p5/2rp4/8/8/6B1 w - - 0 1',
        solution: [
          ['g1', 'h2'],
          'd3',
          ['h2', 'e5']
        ],
        description: "blacks can't prevent diagonal check"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/6N1/8/pp6/kp6/pp5K/2N5/8 w - - 0 1',
        solution: [
          ['g7', 'e6'],
          'a2',
          ['e6', 'c5']
        ],
        description: 'bring the other knight'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '7k/4K1pp/6pn/6N1/6N1/8/8/8 w - - 0 1',
        solution: [
          ['e7', 'f8'],
          'Nxg4',
          ['g5', 'f7']
        ],
        description: 'the first move is king'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '7k/5P2/4n1PK/8/8/8/8/8 w - - 0 1',
        solution: [
          ['g6', 'g7'],
          'Nxg7',
          ['f7', 'f8']
        ],
        description: 'if you want queen just remove the knight'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k7/pn6/p1Pp4/4P3/8/8/8/6K1 w - - 0 1',
        solution: [
          ['c6', 'c7'],
          {'from': 'd6', 'to': 'e5'},
          ['c7', 'c8']
        ],
        description:
            'if there is no pawn in d6 square you can not mate black in 2'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1k5/P7/2K1P3/8/8/8/8/8 w - - 0 1',
        solution: [
          ['e6', 'e7'],
          'Rxa7',
          ['e7', 'e8']
        ],
        description: 'back rank'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1k1B4/8/1K6/1n6/q7/8/8/3R4 w - - 0 1',
        solution: [
          ['d8', 'c7'],
          'Kc8',
          ['d1', 'd8']
        ],
        description: 'what happen if in place of bishop  were a rook'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5Knk/7b/R7/8/7B/8/8/8 w - - 0 1',
        solution: [
          ['a6', 'h6'],
          'Nxh6',
          ['h4', 'f6']
        ],
        description: 'pin the bishop to remove knight'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '7k/5ppr/K5p1/8/8/8/2B5/2R5 w - - 0 1',
        solution: [
          ['c2', 'g6'],
          'Rh1',
          ['c1', 'c8']
        ],
        description: 'back rank'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '7k/7p/5K1b/8/6R1/8/1B6/1q6 w - - 0 1',
        solution: [
          ['f6', 'f7'],
          'Qxb2',
          ['g4', 'g8']
        ],
        description: 'move your king with tempo'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/8/pp6/kb2B3/4n3/K1R5/8/8 w - - 0 1',
        solution: [
          ['c3', 'c5'],
          'Nxc5',
          ['e5', 'c3']
        ],
        description: 'pin bishop then black must move pawn or knight'),
    ////
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r7/kp6/pR1Q4/5q2/8/8/8/3K4 w - - 0 1',
        solution: [
          ['b6', 'a6'],
          {'from': 'b7', 'to': 'a6'},
          ['d6', 'c7']
        ],
        description: "don't be afraid of sacrifice if you can check mate"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4Q3/kr6/pp6/8/8/8/6q1/R2K4 w - - 0 1',
        solution: [
          ['a1', 'a6'],
          'Kxa6',
          ['e8', 'a4']
        ],
        description: "don't be afraid of sacrifice if you can check mate"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '6rk/6n1/1R1Q4/7r/8/8/8/3K4 w - - 0 1',
        solution: [
          ['d6', 'h6'],
          'Rxh6',
          ['b6', 'h6']
        ],
        description: "don't be afraid of sacrifice if you can check mate"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1k4r1/ppp5/8/8/2q5/8/5Q2/3K1R2 w - - 0 1',
        solution: [
          ['f2', 'f8'],
          'Rxf8',
          ['f1', 'f8']
        ],
        description: "don't be afraid of sacrifice if you can check mate"),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5Q2/pp6/kp1R4/8/K7/8/4q3/8 w - - 0 1',
        solution: [
          ['d6', 'b6'],
          'Kxb6',
          ['f8', 'd6']
        ],
        description: "don't be afraid of sacrifice if you can check mate"),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1q1r3k/7p/7K/8/4R3/2p5/8/1Q6 w - - 0 1',
        solution: [
          ['e4', 'e8'],
          'Rxe8',
          ['b1', 'h7']
        ],
        description: "don't be afraid of sacrifice if you can check mate"),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k3r3/pR6/K7/2b5/8/8/1Q3q2/8 w - - 0 1',
        solution: [
          ['b7', 'a7'],
          'Bxa7',
          ['b2', 'b7']
        ],
        description: "don't be afraid of sacrifice if you can check mate"),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3rkr2/R3p3/8/4K3/8/7Q/5q2/8 w - - 0 1',
        solution: [
          ['a7', 'e7'],
          'Kxe7',
          ['h3', 'e6']
        ],
        description: "don't be afraid of sacrifice if you can check mate"),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2k5/1ppn4/1q6/8/Q7/8/5R2/4K3 w - - 0 1',
        solution: [
          ['f2', 'f8'],
          'Nxf8',
          ['a4', 'e8']
        ],
        description: "don't be afraid of sacrifice if you can check mate"),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k1r5/p1p5/N1K5/8/3q4/8/8/1R6 w - - 0 1',
        solution: [
          ['b1', 'b8'],
          'Rxb8',
          ['a6', 'c7']
        ],
        description: 'knight is the killer'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/8/6Nr/5Kbk/R7/8/8/8 w - - 0 1',
        solution: [
          ['a4', 'h4'],
          'Bxh4',
          ['g6', 'f4']
        ],
        description: 'knight is the killer'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'kr6/pp6/8/8/2N4R/8/8/3K4 w - - 0 1',
        solution: [
          ['c4', 'b6'],
          {'from': 'a7', 'to': 'b6'},
          ['h4', 'a4']
        ],
        description: 'sacrifice knight to open up the file'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2Nnkr2/3p3R/8/5n2/8/8/8/7K w - - 0 1',
        solution: [
          ['h7', 'e7'],
          'Nxe7',
          ['c8', 'd6']
        ],
        description: 'knight is the killer'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2R5/8/pn6/k1N5/8/1K6/6q1/8 w - - 0 1',
        solution: [
          ['c5', 'b7'],
          'Qxb7',
          ['c8', 'c5']
        ],
        description: 'what happen if in place of Knight were rook'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/pk6/1p6/1B2r3/K7/2Q1q3/8/8 w - - 0 1',
        solution: [
          ['b5', 'a6'],
          'Kb8',
          ['c3', 'c8']
        ],
        description: 'sacrifice bishop'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/8/6rp/6pk/5b1p/5K2/6P1/6R1 w - - 0 1',
        solution: [
          ['g2', 'g4'],
          {'from': 'h4', 'to': 'g3'},
          ['g1', 'h1']
        ],
        description: 'what after enpassant'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/6kp/4r1p1/q3r3/6K1/B7/8/2Q5 w - - 0 1',
        solution: [
          ['c1', 'h6'],
          'Kxh6',
          ['a3', 'f8']
        ],
        description: 'first move by queen but you have to calculate carefully'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'qkb5/4p3/1K1p4/8/5Q2/6B1/8/8 w - - 0 1',
        solution: [
          ['f4', 'd6'],
          {'from': 'e7', 'to': 'd6'},
          ['g3', 'd6']
        ],
        description: 'sometimes bishop is killer'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'B7/8/8/7K/4b3/Q7/7p/1q4bk w - - 0 1',
        solution: [
          ['a3', 'f3'],
          {'from': 'e4', 'to': 'f3'},
          ['a8', 'f3']
        ],
        description: 'sacrifice queen to leave bishop without defence'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/8/B7/3qp3/2ppkpp1/8/4K3/3Q4 w - - 0 1',
        solution: [
          ['d1', 'd3'],
          {'from': 'c4', 'to': 'd3'},
          ['a6', 'd3']
        ],
        description:
            'i know may be this one is not super easy but my hint for you is now blacks king has no square so one check will end the game whether its queen or bishop does not make any difference'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5nk1/4K1n1/8/4N3/6N1/8/8/8 w - - 0 1',
        solution: [
          ['g4', 'f6'],
          'Kh8',
          ['e5', 'f7']
        ],
        description:
            'with knight you have 2 check which is correct ? find out'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5K1k/6pp/6p1/6B1/6N1/8/8/8 w - - 0 1',
        solution: [
          ['g4', 'h6'],
          {'from': 'g7', 'to': 'h6'},
          ['g5', 'f6']
        ],
        description: 'what happen if there is no pawn diagonally to king'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'kb1n4/8/KP6/8/B7/8/8/8 w - - 0 1',
        solution: [
          ['a4', 'c6'],
          'Nxc6',
          ['b6', 'b7']
        ],
        description: 'remove knight then go for mate'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/8/5B2/8/2pN4/K7/pp6/kb6 w - - 0 1',
        solution: [
          ['d4', 'b3'],
          {'from': 'c4', 'to': 'b3'},
          ['f6', 'b2']
        ],
        description: 'with knight you have 2 check which is correct find out'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3B1K1k/6pp/4b3/7P/8/8/8/8 w - - 0 1',
        solution: [
          ['h5', 'h6'],
          'g6',
          ['d8', 'f6']
        ],
        description: 'what happen if there is no pawn diagonally to king'),
//////
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '7k/2r4r/5PK1/8/8/2B5/8/8 w - - 0 1',
        solution: [
          ['f6', 'f7'],
          {'from': 'h7', 'to': 'g7'},
          ['c3', 'g7']
        ],
        description: 'discover check'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/p2p4/kp6/1pP5/1K6/7B/8/8 w - - 0 1',
        solution: [
          ['c5', 'c6'],
          'd5',
          ['h3', 'c8']
        ],
        description: 'open up space for your bishop'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k1r2q2/ppQ5/N7/8/8/8/8/3K4 w - - 0 1',
        solution: [
          ['c7', 'b8'],
          'Rxb8',
          ['a6', 'c7']
        ],
        description:
            'arabian mate it means you make blacks king without any move then you check mate the king with knight'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4q2k/4N1pr/8/8/2Q5/8/4K3/8 w - - 0 1',
        solution: [
          ['c4', 'g8'],
          'Qxg8',
          ['e7', 'g6']
        ],
        description:
            'arabian mate it means you make blacks king without any move then you check mate the king with knight'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4r1kr/5b1p/5KN1/8/8/Q7/3q4/8 w - - 0 1',
        solution: [
          ['a3', 'f8'],
          'Rxf8',
          ['g6', 'e7']
        ],
        description: 'first imprison blacks king then check mate it'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k1b5/8/NKn5/8/4q3/8/7Q/8 w - - 0 1',
        solution: [
          ['h2', 'b8'],
          'Nxb8',
          ['a6', 'c7']
        ],
        description: 'first imprison blacks king then check mate it'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k4K2/p7/1bP5/8/8/8/8/6qQ w - - 0 1',
        solution: [
          ['c6', 'c7'],
          'Qxh1',
          ['c7', 'c8']
        ],
        description: 'your pawn two square away to promote'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5rkr/5ppp/8/4K3/6N1/2Q5/q7/8 w - - 0 1',
        solution: [
          ['g4', 'h6'],
          {'from': 'g7', 'to': 'h6'},
          ['c3', 'g3']
        ],
        description: 'open up the file in front of king'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'krQ5/p7/8/4q3/N7/8/8/3K4 w - - 0 1',
        solution: [
          ['a4', 'b6'],
          {'from': 'a7', 'to': 'b6'},
          ['c8', 'a6']
        ],
        description:
            'rook is pinned so if you check king with knight black will take it with pawn'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k1r5/p1pq4/Qp1p4/8/3N4/8/3K4/8 w - - 0 1',
        solution: [
          ['d4', 'c6'],
          'Qxc6',
          ['a6', 'c8']
        ],
        description: 'the pawn in front of king is weak'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3q2rk/5Q1p/6bK/4N3/8/8/8/8 w - - 0 1',
        solution: [
          ['f7', 'h7'],
          {'from': 'g6', 'to': 'h7'},
          ['e5', 'f7']
        ],
        description: 'remove the bishop from a great square'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/8/5Q2/2q3pk/7b/8/4K1P1/8 w - - 0 1',
        solution: [
          ['g2', 'g4'],
          'Kxg4',
          ['f6', 'f3']
        ],
        description: 'pawns sometimes will help you to check mate'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/b2Q4/kp2p3/p2q4/1P6/K7/8/8 w - - 0 1',
        solution: [
          ['b4', 'b5'],
          'Qxb5',
          ['d7', 'c8']
        ],
        description: 'pawns sometimes will help you to check mate'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5K1k/7b/8/4ppP1/8/6bQ/7q/8 w - - 0 1',
        solution: [
          ['g5', 'g6'],
          'Qxh3',
          ['g6', 'g7']
        ],
        description: 'pawns sometimes will help you to check mate'),
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
        description: 'it is more easier to checkmate king in the corner'),
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
            'firstly take that annoying knight out of the board then check mate him'),
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
        description: 'open up the file'),
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
        description: 'may be your double pawn will help'),
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
        description: 'your queen needs your knights square so help him'),
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
        description: 'your rook will die peacefully '),
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
        description: 'put king in the corner'),
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
            'can you check with knight ? yes because blacks queen is pinned'),
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
        description: 'invite the king to your territory'),
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
            'first move is clear but the second move and third is brilliant my hint for you is double check will be the key'),

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
        description:
            "don't you wish to not have bishop here  mmmm so just eliminant it"),
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
        description: 'would you consider your bishop he is not happy'),
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
        description: 'put the blacks king in the jail'),
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
        description: 'very beautiful sacrifice wow'),
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
        description:
            'very popular puzzle first make sure blacks king cant run away'),
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
        description: 'there is so many weak squares around the king'),

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
        description: 'your knight can move both rook very interesting'),
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
            'if you saw a check mate in your calculation correctly then you can sacrifice your queen'),
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
            'this one tricky because check mate will happen on the center of the board'),
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
        description: 'open files will always help you'),

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
        description: 'blacks queen will help you to check mate'),
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
            'if you saw a check mate in your calculation correctly then you can sacrifice your queen'),
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
            'block blacks queen diagonally then calculate you lazy 😋'),
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
            'this is really puzzle one .   you have to consider stalemate'),
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
            'are you good with knights .   ok pawn will do checkmate '),

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
        description: 'discover check'),
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
        description: 'discover check'),
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
            'all three moves with queen and funny things after three moves it return to its place'),
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
            'there are so many variations to calculate but its simple you have to sacrifice one of your knight'),
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
        description: 'bring out whites king then follow him till you kill him'),

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
        description:
            'there are so many pieces here some times you have to sacrifice them in order to open files'),
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
        description: 'attack d6 pawn'),
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
            'the key square here is in front of the king blacks king '),
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
        description: 'use the fact that whites rook is pinned'),
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
            'bring the king to the crowd because its easer to check mate'),

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
        description: 'bring the bishop to the play'),
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
        description: 'open file'),
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
            'if your knight defended then you can check mate with queen in one move'),
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
        description: 'sacrifice the rook'),
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
        description: 'one move and no solution for it'),
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
        description: '1'),
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
        description: '2'),
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
        description: '3'),
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
        description: '4'),
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
        description: '5'),
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
        description: '6'),
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
        description: '7'),
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
        description: '8'),
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
        description: '9'),
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
        description: '10'),
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
        description: '11'),
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
        description: '12'),
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
        description: '13'),
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
        description: '14'),
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
        description: '15'),
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
        description: '16'),
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
        description: '17'),
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
        description: '18'),
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
        description: '19'),
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
        description: '20'),
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

  List<ChessPuzzle> beginnerTactics = [
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/pbpr1ppp/1p6/8/6n1/1BP5/PPN2PPP/4R1K1 w - - 0 1',
      solution: [
        ['e1', 'e8'],
      ],
      description:
          'valnarable first rank . it means blacks 8th rank is weak there is no defender there so blacks king is not safe ',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/1p3ppp/r5q1/pp6/2b4P/1BP3Q1/PP3PP1/R5K1 w - - 0 1',
      solution: [
        ['g3', 'b8'],
      ],
      description:
          'valnarable first rank . it means blacks 8th rank is weak there is no defender there so blacks king is not safe',
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
          'valnarable first rank . it means blacks 8th rank is weak there is no defender there so blacks king is not safe ',
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
          'valnarable first rank . it means blacks 8th rank is weak there is no defender there so blacks king is not safe',
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
          'valnarable first rank . it means blacks 8th rank is weak there is no defender there so blacks king is not safe',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r1bqkbnr/ppp2ppp/2np4/4p3/2B1P3/5Q2/PPPP1PPP/RNB1KBNR w - - 0 1',
      solution: [
        ['f3', 'f7'],
      ],
      description:
          'napoleons style check mate. dont you ever lost with this style ok your queen and bishop are making a good team here they both aiming at the best square on this board',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '3r1rk1/bpp2ppp/pq6/8/8/2P4Q/PPB2PPP/3RRK2 w - - 0 1',
      solution: [
        ['h3', 'h7'],
      ],
      description:
          'your queen and bishop are making a good team here they both aiming at the weak square on this board',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r3r1k1/2bp1ppp/1qp5/1p6/pPP3n1/P1QP1N2/1B3PPP/R4RK1 w - - 0 1',
      solution: [
        ['c3', 'g7'],
      ],
      description:
          'your queen and bishop are making a good team here they both aiming at the weak square on this board',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle:
          'r1bqkb1r/p1p1np2/1pn4p/4p1pN/1B2P3/2N5/PPPQ1PPP/3R1RK1 w - - 0 1',
      solution: [
        ['h5', 'f6'],
      ],
      description: 'sometimes knights are killer ',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'kr5r/pp6/5np1/1N3p2/8/P6P/1P3PP1/2R2RK1 w - - 0 1',
      solution: [
        ['b5', 'c7'],
      ],
      description: 'sometimes knights are killer ',
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
          'knight forks it means your knight attack two or more things at the same time and it is more stronger with check ',
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
          'knight forks it means your knight attack two or more things at the same time and it is more stronger with check ',
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
          'knight forks it means your knight attack two or more things at the same time and it is more stronger with check',
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
          'Skewer. it means is an attack upon two pieces in a line here even tho black has queen but loose the game because of skewer',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6r1/1p6/pbp1kp1p/4p3/1P2P2P/P5P1/4BP2/3R1K2 w - - 0 1',
      solution: [
        ['e2', 'c4'],
        'Ke7',
        ['c4', 'g8'],
      ],
      description:
          'Skewer. it means is an attack upon two pieces in a line here even tho black has queen but loose the game because of skewer',
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
          'Discover Attack. is an attack that is revealed when one piece moves out of the way of another. here look what if there is no bishop ? ans. simply we take blacks queen',
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
          'Discover Attack. is an attack that is revealed when one piece moves out of the way of another. here look what if there is no knight ? ans. simply we take blacks white squared bishop ',
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
          'Discover Attack. is an attack that is revealed when one piece moves out of the way of another. here look what if there is no white squared bishop ? ans. simply we take blacks queen ',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6r1/5p2/r1p1p3/B4p2/RP5k/2R4P/5P2/5K2 w - - 0 1',
      solution: [
        ['a5', 'd8'],
        'Rxd8',
        ['a4', 'a6'],
      ],
      description:
          'Discover Attack. is an attack that is revealed when one piece moves out of the way of another. here look what if there is no dark squared bishop ? ans. simply we take blacks rook  ',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle:
          'r2qkbnr/ppp2ppp/2npb3/4p3/3PP3/2N2N2/PPP2PPP/R1BQKB1R b KQkq - 0 1',
      solution: [
        ['d4', 'd5'],
      ],
      description:
          'Double Attack. is an attack with one move you attack two or more pieces in this puzzle also we can say it is about pawns fork',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle:
          'rnb1r1k1/pp3pbp/2p2np1/1N2p3/2P1P3/5N2/PP2BPPP/R1B2RK1 b Qq - 0 1',
      solution: [
        ['b5', 'c7'],
      ],
      description: 'double attack and also knight fork ',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2r3k1/bp3ppp/p1q5/3N4/8/8/PPPQ1PPP/R3R1K1 b Q - 0 1',
      solution: [
        ['d5', 'e7'],
      ],
      description:
          'there is family forks here in this puzzle it means with one piece you attack to many things including king , queen , rook ',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r5k1/p1b2pp1/1p4n1/2p4p/8/PBQ1NqP1/1P3P1P/5RK1 w q - 0 1',
      solution: [
        ['b3', 'd5'],
      ],
      description: 'double attack by bishop',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: '4b1k1/1p3pb1/pR4p1/8/5P2/1P3K2/P5P1/6N1 b - - 0 1',
      solution: [
        ['g7', 'd4'],
        'Rxb7',
        ['d4', 'g1'],
      ],
      description: 'double attack by bishop ',
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
          'in chess one pawn is so important and make diffrence so here rook can double attack ',
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
          'this one a little bit tough but its very useful position and it happens during games . it is about double attack with queen but this time threating mate and rook ',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r4rk1/ppq2pp1/3b1n1p/2p5/2P1P3/1Q3N2/PPB3PP/R3R1K1 w - - 0 1',
      solution: [
        ['e4', 'e5'],
      ],
      description: 'double attack and also pawn forks ',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '8/p3kp2/6p1/b6p/3N4/8/P4PPP/6K1 w - - 0 1',
      solution: [
        ['d4', 'c6'],
        'Kd6',
        ['c6', 'a5'],
      ],
      description: 'Knight forks  ',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '4rrk1/ppp2pp1/2n4p/q6b/2P5/PP3NBP/1Q3PP1/2RR2K1 w - - 0 1',
      solution: [
        ['d1', 'd5'],
        'Qb6',
        ['d5', 'h5'],
      ],
      description: 'double attack with rook',
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
          'Pin. here whites knight diagonally pinned to queen it means when white move his knight then he loose his queen so we have to attack on knight in order to gain something ',
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
          'no surprise white will win in only 2 move thanks for knight fork that double attaking two checkmate threats ',
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
          'double attack with check look at this position whites bishop is undefended and there is an open digonall to check',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2kr3r/ppp1qppp/8/8/1nPP2n1/2N5/PP1Q1PPP/RB3RK1 w - - 0 1',
      solution: [
        ['b1', 'f5'],
        'Kb8',
        ['f5', 'g4'],
      ],
      description: 'skewer with bishop',
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
      description: 'double attack with check by queen ',
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
          'queen and the king are on the same diagonall and this is a good news for us to use [ Pin ]',
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
          'bishop and the king are on the same file which you can pin the bishop then attack him with pawn',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2kr3r/ppq2ppp/5p2/8/1P6/PQ6/R4PPP/5RK1 w - - 0 1',
      solution: [
        ['a2', 'c2'],
      ],
      description: 'queen and the king are on the same file',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '2r2nk1/6p1/7p/7P/2p3n1/2N3P1/5PB1/5RK1 w - - 0 1',
      solution: [
        ['g2', 'h3'],
      ],
      description: 'pin knight to rook so you can get the knight',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r3r1k1/5pp1/2p1p1n1/p1n5/8/q2N1PB1/P1P3PP/1R2RQK1 w - - 0 1',
      solution: [
        ['g3', 'd6'],
      ],
      description:
          'pin the knight to the queen so black can not move knight and then you take it',
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
          'the knight is already pinned to the rook so we have to attack to it to get some thing ',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '8/2p3k1/3p4/4n1q1/3R4/5P1P/1B5K/8 w - - 0 1',
      solution: [
        ['d4', 'g4'],
      ],
      description:
          'this one is funny we pin a queen to the king and knight can not take rook because knight himself is pinned to the king too here is example of how greate pin is ',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'R3b2k/6n1/8/R7/8/1B6/1B4K1/4q3 w - - 0 1',
      solution: [
        ['a5', 'h5'],
      ],
      description:
          'checkmate in one and this one is even more funnier than preveus one becouse black has two pieces but non of them are a live',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/6b1/8/3q4/4N3/4K3/8/6R1 w - - 0 1',
      solution: [
        ['e4', 'f6'],
      ],
      description: 'knight forks just because of pinned bishop',
    ),

    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/5ppp/1p6/p7/8/2n3P1/5PK1/5R2 w - - 0 1',
      solution: [
        ['f1', 'c1'],
      ],
      description:
          'this is also pin but a bit wierd because you pin the knight to threating checkmate if moved',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '6k1/3n1p1p/p5pQ/1p6/1Bpq4/P4PP1/1P3PK1/8 w - - 0 1',
      solution: [
        ['b4', 'c3'],
        'Qd6',
        ['h6', 'g7'],
      ],
      description: 'attack queen and suddnly you will be able to checkmate',
    ),
    ChessPuzzle(
      isWhiteToMove: false,
      puzzle: 'rnbqk1nr/pppp1ppp/8/8/1b2P3/1Pp2N2/P4PPP/RNBQKB1R b KQkq - 0 5',
      solution: [
        ['c3', 'c2'],
      ],
      description:
          "Discover check.a check on the opponent's king that is delivered by moving a piece out of the line of attack by a queen ",
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
          'your knight is pinned but thanks for the discover check that will save you and you can get a bishop. first move is knight',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '3q2k1/7p/6p1/8/8/3B4/5PPP/3R2K1 w - - 0 1',
      solution: [
        ['d3', 'c4'],
      ],
      description:
          'here it is a great example of discover check can you spot it your self',
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
          'what happen if you move your rook ? and where you put your rook?',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '4k3/8/8/4K3/8/2n5/8/4R3 w - - 0 1',
      solution: [
        ['e5', 'd4'],
      ],
      description:
          'what happen if you move your king ? and where you put your king?',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: 'r1b2rk1/p4pbp/1p2pnp1/2p5/2P1PP2/2N3P1/PP4BP/R1BR2K1 w - - 0 1',
      solution: [
        ['e4', 'e5'],
      ],
      description: 'double attack and also discover attack by moving pawn',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '5rk1/5ppp/1b3n2/2p5/8/6P1/1B3P1P/1R4K1 w - - 0 1',
      solution: [
        ['b2', 'f6'],
        {'from': 'g7', 'to': 'f6'},
        ['b1', 'b6'],
      ],
      description: 'discover attack gaining a piece',
    ),
    ChessPuzzle(
      isWhiteToMove: true,
      puzzle: '8/8/1KP1r1k1/8/R4P1r/8/8/8 w - - 0 1',
      solution: [
        ['f4', 'f5'],
      ],
      description: 'discover check by moving pawn',
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
  ];
///////
//////////
////////////
////////////
///////////////
////////////////

  List<ChessPuzzle> ruyLopez = [
    ChessPuzzle(
      playersName: 'ruy lopez',
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
  ];

  List<ChessPuzzle> nimzoIndian = [
    ChessPuzzle(
      playersName: 'nimzo indian',
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
  ];

  List<ChessPuzzle> french = [
    ChessPuzzle(
      playersName: 'french',
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
  ];

  List<ChessPuzzle> kingsIndianDefence = [
    ChessPuzzle(
      playersName: 'kings indian',
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
  ];

  List<ChessPuzzle> caroKann = [
    ChessPuzzle(
      playersName: 'carro kan',
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
  ];

  List<ChessPuzzle> english = [
    ChessPuzzle(
      playersName: 'english',
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
  ];
}
