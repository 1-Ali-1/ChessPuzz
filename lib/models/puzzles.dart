import 'dart:math';

import 'package:flutter/cupertino.dart';
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
        description: 'blacks back rank is so weak'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r5k1/ppp2rp1/7p/2qN4/3n4/3Q4/PPPP2PP/R1B3KR b - - 0 1',
        solution: ['e2'],
        description: 'double check'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/8/5k1p/6pP/6P1/4b3/8/2rb1K2 w - - 0 1',
        solution: ['f3'],
        description: 'where do you put your bishop'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '2k5/p7/Ppb5/3p1p2/5P2/5KBP/3r4/1R6 w - - 0 1',
        solution: ['d4'],
        description: 'sometimes pawns are killer'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2r1kr2/pN4R1/4p3/3p2p1/6q1/BP2P3/P2P2B1/6K1 w - - 0 1',
        solution: ['e7'],
        description: "don't move knight because prevent king to run away"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r5rk/1q2b1p1/6Pp/2p1BP2/pp2P3/8/1PP3P1/2KR3R w - - 0 1',
        solution: ['h6'],
        description: 'there is nice pin help us to mare king'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '5r1k/2p1b1pp/p2pB3/8/2Q1P3/5pPn/RP5P/6RK b - - 0 1',
        solution: ['f2'],
        description: 'knights are so merciless'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '1r4k1/R6p/3p1r2/1p2n3/1Pp1Pp2/5Nn1/2B2KP1/R2Q3q w - - 0 1',
        solution: ['g4'],
        description: 'knights are so merciless'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1q2r2k/p5R1/2n1N1p1/1p3ppP/3p4/P6R/1P3PP1/3K1B2 w - - 0 1',
        solution: ['g6'],
        description: 'bring other rook to play'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1brk1n1/1pp3Q1/p2p1p2/3NnP2/4P3/3B2R1/PPP3PP/R5K1 w - - 0 1',
        solution: ['c7'],
        description: 'there is so many checks but one of them is correct'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r6k/1p4p1/1pp4p/3p4/1P1nq1P1/P4rp1/3B4/R1R3QK b - - 0 1',
        solution: ['f1'],
        description: 'you have to move your rook but where this is important'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '1R6/4pk1p/6p1/R7/1P6/6PP/r4n1K/2r5 b - - 0 1',
        solution: ['g4'],
        description: 'double check thats it'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r4rk1/pb4pp/1p2npq1/1N6/8/1P5P/PBP1QPP1/R4RK1 b - - 0 1',
        solution: ['g2'],
        description: 'bishops are good supporters'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '2k5/1pp5/p6p/5p2/1P4p1/P5P1/5P1P/4rbK1 w - - 0 1',
        solution: ['h3'],
        description: "don't let king run through g2"),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '3N1rk1/pb3ppp/1p6/2b1N3/4n3/PP6/1BR4P/5R1K w - - 0 1',
        solution: ['g3'],
        description: 'double check thats it'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3rr2k/1p3R1B/p2P4/2P1N1p1/b2K2P1/P7/8/8 w - - 0 1',
        solution: ['g6'],
        description: 'blacks king is stuck one check is mate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'kr5r/pp1R1p2/N3p3/7p/qP6/P6p/5PPK/2R5 w - - 0 1',
        solution: ['c7'],
        description: 'blacks king run out of squares one check is mate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r4q1k/1p3p1p/4bNnQ/r2p4/p2P4/2P4P/2B2PP1/R3R1K1 w - - 0 1',
        solution: ['h7'],
        description: "if you think that one need hint then simply i can't "),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '4k1r1/1Q1n1p1p/4p1r1/8/1B6/P4PP1/1PP2q2/4R2K b - - 0 1',
        solution: ['h6'],
        description: 'whits king are out of squares one check is mate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2r5/3b3k/p2P4/1pp1BppB/5P2/P5P1/1PP2K2/7R w - - 0 1',
        solution: ['f7'],
        description:
            'first move is clear you have to move bishop but where thats important'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r6k/ppp3pp/2np2r1/3QP3/2P1P2q/P1P1P3/1B2B1b1/R4RK1 b - - 0 1',
        solution: ['f3'],
        description: 'block whits bishop'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '4r1k1/ppp3pp/3b4/8/2Pp3q/1P1P1p1b/P2B1P2/1R4QK w - - 0 1',
        solution: ['g2'],
        description: 'double check'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle:
            '4rrn1/2nbq1bk/p2p2p1/PppP1pp1/4P1P1/2NB1P1N/1P1Q2KR/7R w - - 0 1',
        solution: ['g5'],
        description: 'double check'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/pp1kn3/4p2R/1P1p4/2pP4/2P1K3/P4r2/2B2r2 w - - 0 1',
        solution: ['f5'],
        description:
            'block blacks rook not let it take your queen while check'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r3r1k1/pb3ppp/1p1Q4/4n3/1P3P2/P7/5PPP/3RKB1R w - - 0 1',
        solution: ['f3'],
        description: "double check but don't let king run away"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r5k1/pp2bR1p/2p3pB/4p2n/2BqP3/3P3P/PPP3P1/R6K w - - 0 1',
        solution: ['f8'],
        description: 'double check but you have to be smart'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'rnbqkb1r/1p3ppp/p4n2/2pp4/8/5N2/PPPPBPPP/RNBQR1K1 w - - 0 1',
        solution: ['b5'],
        description: 'there is only one check'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2b3rk/2q1r3/1pP1pnRB/pP1pNp1Q/P2P4/2N4P/5P2/6K1 w - - 0 1',
        solution: ['g7'],
        description: 'where do you put your bishop ?!!'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '7r/1p1b2k1/1qpP1p2/p2P1P2/N4nP1/1P2r3/P2Q2B1/2R3KR b - - 0 1',
        solution: ['e1'],
        description: 'move your rook wisely '),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/pp2k3/2ppp3/4p3/4P1rq/3P1Qb1/PPP1R3/5RK1 w - - 0 1',
        solution: ['f2'],
        description: 'double check'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '3k3r/1pp2p2/p3bN1p/4P3/2P4n/1P2K1P1/PQ5P/R1Br1q2 w - - 0 1',
        solution: ['f3'],
        description:
            'there is 9 possible checks one of them is correct can you spot it'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3r1r1k/1bpq1P1p/p7/1pbpP1Q1/8/1PN3B1/1PP3PP/3R1R1K w - - 0 1',
        solution: ['f6'],
        description: 'queen'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5b1r/2B1k3/p1q1ppQp/1pp5/8/8/PPP2PPP/3R2K1 w - - 0 1',
        solution: ['d8'],
        description: 'sometimes bishops are killer'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5q1k/p2b1rrp/1p3BnQ/3pPp2/P1pP2P1/2P5/2P5/R3K2R w - - 0 1',
        solution: ['h7'],
        description: 'the only defender is pinned by your bishop'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2r2rkb/5p2/5P2/p3pN1Q/1p6/6PP/1P3PB1/1b4K1 w - - 0 1',
        solution: ['e7'],
        description: 'there is only one correct check with your knight'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '7k/1pQbbp2/3p3p/3Pp3/1PP1Pp1q/1N3P2/P5K1/2R2B1r w - - 0 1',
        solution: ['h2'],
        description: 'kiss the king'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2q3R1/1n1k4/1n1p4/2pP1pBB/ppP1pP2/1P6/P7/5K1R w - - 0 1',
        solution: ['g7'],
        description: "your bishops place are so good don't move them"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1r3k1r/p1R2Bbp/1p6/5pp1/3P4/1P2P1PP/PB1N1P2/4K2b w - - 0 1',
        solution: ['a3'],
        description: 'sometimes bishops are killer'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '5rk1/2p2pp1/3b3p/8/2P4P/1P2B2q/P4P1P/R4RK1 w - - 0 1',
        solution: ['h2'],
        description: 'kiss the king'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '3R1bk1/p4ppp/1p4n1/4PN2/4B3/1P3P2/P5KP/4q3 w - - 0 1',
        solution: ['f4'],
        description: 'its good to have knights and queens attacking king'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '8/8/1p6/1B6/P2b4/4p1k1/6p1/6K1 w - - 0 1',
        solution: ['e2'],
        description: 'sometimes bishops are killer'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2rrk3/5pp1/2P4p/Q7/8/4B3/PP3PPP/R3R1K1 w - - 0 1',
        solution: ['c5'],
        description: "don't let blacks king run away go to the behind pawns"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r3bknQ/1p3pp1/pq1r4/2Np1pN1/1P1P4/P3R3/5PP1/2R3K1 w - - 0 1',
        solution: ['h7'],
        description: 'blacks king are out of squares one check is mate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4RBk1/7p/6p1/3r2b1/3P4/2P5/rP4PP/5RK1 w - - 0 1',
        solution: ['h6'],
        description:
            'first move is bishop but where you put it thats important'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '1r3rk1/p1Q2pp1/Bp1p3p/8/2R1bq2/7P/P5P1/5nRK w - - 0 1',
        solution: ['h2'],
        description: 'kiss the king'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '2r3k1/pp3pp1/2n3pq/3p4/1P4P1/P1PQbNKP/3Nr3/R4R2 w - - 0 1',
        solution: ['f4'],
        description: 'sometimes bishops are killer'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '3r3k/1p3Q1p/2b2b2/4pP2/1p2P3/1B3q2/PP5P/3RK3 w - - 0 1',
        solution: ['h4'],
        description: 'sometimes bishops are killer'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: 'r3k3/p1b3p1/2p2np1/3p4/4P3/4BKP1/PPP1NP1r/RN3R2 w - - 0 1',
        solution: ['e4'],
        description: 'whits king are out of squares one check is mate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1b1qrk1/pppp1p2/2n2Bp1/b7/2B1P3/2P5/PP3PP1/RN2K1NR w - - 0 1',
        solution: ['h8'],
        description: 'rook'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1bq3k/4R1np/pp1p1Bp1/2pQ4/2P2P2/2N5/PP4PP/5R1K w - - 0 1',
        solution: ['g7'],
        description: 'sometimes bishops are killer'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1bnrk2/3R4/p4Np1/4P3/2p5/6P1/PPP2PB1/2K4R w - - 0 1',
        solution: ['h8'],
        description: 'stair case mate'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '6k1/1p2rpp1/p5n1/2PN2p1/2Q3P1/1P3K1P/4RP2/6q1 b - - 0 1',
        solution: ['h4'],
        description: 'whits king are out of squares one check is mate'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '3r2k1/1p2p2p/p3n1p1/4P3/4K1pP/5r2/PP2N3/6R1 w - - 0 1',
        solution: ['c5'],
        description: 'whits king are out of squares one check is mate'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle: '6k1/R4p1p/6p1/5pr1/7r/P1Nn1P2/1P5R/7K w - - 0 1',
        solution: ['f2'],
        description: 'the rook in front of king is pinned'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2k5/pRprq3/3p3p/2bBp1p1/4P1b1/2PPBN2/2P2PPP/1R5K w - - 0 1',
        solution: ['b8'],
        description: 'back rank'),
    ChessPuzzle(
        isWhiteToMove: false,
        puzzle:
            'r1b1k1nr/pppp1ppp/2n5/2b5/2B1Pp1q/2N2N2/PPPP2PP/R1BQ1K1R b - - 0 1',
        solution: ['f2'],
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
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '6k1/8/6K1/8/8/3r4/4r3/5R1R w - - 0 1',
        solution: ['h8', 'Kxh8', 'f8'],
        description: 'bring blacks king to the corner'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2rkr3/2ppp3/2n1n3/R2R4/8/8/3K4/8 w - - 0 1',
        solution: ['d7', 'Kxd7', 'd5'],
        description: 'other black pieces will help you to check mate'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k7/3b4/1K6/8/8/5q2/2R1R3/8 w - - 0 1',
        solution: ['e8', 'Bxe8', 'c8'],
        description: 'remove the bishop first'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'kr6/1p6/8/1p5R/6R1/8/1r6/5K2 w - - 0 1',
        solution: [
          'a4',
          {'from': 'b5', 'to': 'a4'},
          'a5'
        ],
        description: 'try get to the open file'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'kn1R4/ppp5/2q5/8/8/8/8/3RK3 w - - 0 1',
        solution: ['b8', 'Kxb8', 'd8'],
        description: 'back rank'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1kb4R/1npp4/8/8/8/8/8/R5K1 w - - 0 1',
        solution: ['c8', 'Kxc8', 'a8'],
        description: 'back rank'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5K1k/7p/8/2p5/2rp4/8/8/6B1 w - - 0 1',
        solution: ['h2', 'd3', 'e5'],
        description: "blacks can't prevent diagonal check"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/6N1/8/pp6/kp6/pp5K/2N5/8 w - - 0 1',
        solution: ['e6', 'a2', 'c5'],
        description: 'bring the other knight'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '7k/4K1pp/6pn/6N1/6N1/8/8/8 w - - 0 1',
        solution: ['f8', 'Nxg4', 'f7'],
        description: 'the first move is king'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '7k/5P2/4n1PK/8/8/8/8/8 w - - 0 1',
        solution: ['g7', 'Nxg7', 'f8'],
        description: 'if you want queen just remove the knight'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k7/pn6/p1Pp4/4P3/8/8/8/6K1 w - - 0 1',
        solution: [
          'c7',
          {'from': 'd6', 'to': 'e5'},
          'c8'
        ],
        description:
            'if there is no pawn in d6 square you can not mate black in 2'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r1k5/P7/2K1P3/8/8/8/8/8 w - - 0 1',
        solution: ['e7', 'Rxa7', 'e8'],
        description: 'back rank'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1k1B4/8/1K6/1n6/q7/8/8/3R4 w - - 0 1',
        solution: ['c7', 'Kc8', 'd8'],
        description: 'what happen if in place of bishop  were a rook'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5Knk/7b/R7/8/7B/8/8/8 w - - 0 1',
        solution: ['h6', 'Nxh6', 'f6'],
        description: 'pin the bishop to remove knight'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '7k/5ppr/K5p1/8/8/8/2B5/2R5 w - - 0 1',
        solution: ['g6', 'Rh1', 'c8'],
        description: 'back rank'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '7k/7p/5K1b/8/6R1/8/1B6/1q6 w - - 0 1',
        solution: ['f7', 'Qxb2', 'g8'],
        description: 'move your king with tempo'),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/8/pp6/kb2B3/4n3/K1R5/8/8 w - - 0 1',
        solution: ['c5', 'Nxc5', 'c3'],
        description: 'pin bishop then black must move pawn or knight'),
    ////
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'r7/kp6/pR1Q4/5q2/8/8/8/3K4 w - - 0 1',
        solution: [
          'a6',
          {'from': 'b7', 'to': 'a6'},
          'c7'
        ],
        description: "don't be afraid of sacrifice if you can check mate"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4Q3/kr6/pp6/8/8/8/6q1/R2K4 w - - 0 1',
        solution: ['a6', 'Kxa6', 'a4'],
        description: "don't be afraid of sacrifice if you can check mate"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '6rk/6n1/1R1Q4/7r/8/8/8/3K4 w - - 0 1',
        solution: ['h6', 'Rxh6', 'h6'],
        description: "don't be afraid of sacrifice if you can check mate"),
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1k4r1/ppp5/8/8/2q5/8/5Q2/3K1R2 w - - 0 1',
        solution: ['f8', 'Rxf8', 'f8'],
        description: "don't be afraid of sacrifice if you can check mate"),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5Q2/pp6/kp1R4/8/K7/8/4q3/8 w - - 0 1',
        solution: ['b6', 'Kxb6', 'd6'],
        description: "don't be afraid of sacrifice if you can check mate"),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '1q1r3k/7p/7K/8/4R3/2p5/8/1Q6 w - - 0 1',
        solution: ['e8', 'Rxe8', 'h7'],
        description: "don't be afraid of sacrifice if you can check mate"),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k3r3/pR6/K7/2b5/8/8/1Q3q2/8 w - - 0 1',
        solution: ['a7', 'Bxa7', 'b7'],
        description: "don't be afraid of sacrifice if you can check mate"),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3rkr2/R3p3/8/4K3/8/7Q/5q2/8 w - - 0 1',
        solution: ['e7', 'Kxe7', 'e6'],
        description: "don't be afraid of sacrifice if you can check mate"),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2k5/1ppn4/1q6/8/Q7/8/5R2/4K3 w - - 0 1',
        solution: ['f8', 'Nxf8', 'e8'],
        description: "don't be afraid of sacrifice if you can check mate"),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k1r5/p1p5/N1K5/8/3q4/8/8/1R6 w - - 0 1',
        solution: ['b8', 'Rxb8', 'c7'],
        description: 'knight is the killer'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/8/6Nr/5Kbk/R7/8/8/8 w - - 0 1',
        solution: ['h4', 'Bxh4', 'f4'],
        description: 'knight is the killer'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'kr6/pp6/8/8/2N4R/8/8/3K4 w - - 0 1',
        solution: [
          'b6',
          {'from': 'a7', 'to': 'b6'},
          'a4'
        ],
        description: 'sacrifice knight to open up the file'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2Nnkr2/3p3R/8/5n2/8/8/8/7K w - - 0 1',
        solution: ['e7', 'Nxe7', 'd6'],
        description: 'knight is the killer'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '2R5/8/pn6/k1N5/8/1K6/6q1/8 w - - 0 1',
        solution: ['b7', 'Qxb7', 'c5'],
        description: 'what happen if in place of Knight were rook'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/pk6/1p6/1B2r3/K7/2Q1q3/8/8 w - - 0 1',
        solution: ['a6', 'Kb8', 'c8'],
        description: 'sacrifice bishop'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/8/6rp/6pk/5b1p/5K2/6P1/6R1 w - - 0 1',
        solution: [
          'g4',
          {'from': 'h4', 'to': 'g3'},
          'h1'
        ],
        description: 'what after enpassant'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/6kp/4r1p1/q3r3/6K1/B7/8/2Q5 w - - 0 1',
        solution: ['h6', 'Kxh6', 'f8'],
        description: 'first move by queen but you have to calculate carefully'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'qkb5/4p3/1K1p4/8/5Q2/6B1/8/8 w - - 0 1',
        solution: [
          'd6',
          {'from': 'e7', 'to': 'd6'},
          'd6'
        ],
        description: 'sometimes bishop is killer'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'B7/8/8/7K/4b3/Q7/7p/1q4bk w - - 0 1',
        solution: [
          'f3',
          {'from': 'e4', 'to': 'f3'},
          'f3'
        ],
        description: 'sacrifice queen to leave bishop without defence'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/8/B7/3qp3/2ppkpp1/8/4K3/3Q4 w - - 0 1',
        solution: [
          'd3',
          {'from': 'c4', 'to': 'd3'},
          'd3'
        ],
        description:
            'i know may be this one is not super easy but my hint for you is now blacks king has no square so one check will end the game whether its queen or bishop does not make any difference'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5nk1/4K1n1/8/4N3/6N1/8/8/8 w - - 0 1',
        solution: ['f6', 'Kh8', 'f7'],
        description:
            'with knight you have 2 check which is correct ? find out'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5K1k/6pp/6p1/6B1/6N1/8/8/8 w - - 0 1',
        solution: [
          'h6',
          {'from': 'g7', 'to': 'h6'},
          'f6'
        ],
        description: 'what happen if there is no pawn diagonally to king'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'kb1n4/8/KP6/8/B7/8/8/8 w - - 0 1',
        solution: ['c6', 'Nxc6', 'b7'],
        description: 'remove knight then go for mate'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/8/5B2/8/2pN4/K7/pp6/kb6 w - - 0 1',
        solution: [
          'h6',
          {'from': 'a2', 'to': 'b3'},
          'b2'
        ],
        description: 'with knight you have 2 check which is correct find out'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3B1K1k/6pp/4b3/7P/8/8/8/8 w - - 0 1',
        solution: ['h6', 'g6', 'f6'],
        description: 'what happen if there is no pawn diagonally to king'),
//////
    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '7k/2r4r/5PK1/8/8/2B5/8/8 w - - 0 1',
        solution: [
          'f7',
          {'from': 'h7', 'to': 'g7'},
          'g7'
        ],
        description: 'discover check'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/p2p4/kp6/1pP5/1K6/7B/8/8 w - - 0 1',
        solution: ['c6', 'd5', 'c8'],
        description: 'open up space for your bishop'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k1r2q2/ppQ5/N7/8/8/8/8/3K4 w - - 0 1',
        solution: ['b8', 'Rxb8', 'c7'],
        description:
            'arabian mate it means you make blacks king without any move then you check mate the king with knight'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4q2k/4N1pr/8/8/2Q5/8/4K3/8 w - - 0 1',
        solution: ['g8', 'Qxg8', 'g6'],
        description:
            'arabian mate it means you make blacks king without any move then you check mate the king with knight'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '4r1kr/5b1p/5KN1/8/8/Q7/3q4/8 w - - 0 1',
        solution: ['f8', 'Rxf8', 'e7'],
        description: 'first imprison blacks king then check mate it'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k1b5/8/NKn5/8/4q3/8/7Q/8 w - - 0 1',
        solution: ['b8', 'Nxb8', 'c7'],
        description: 'first imprison blacks king then check mate it'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k4K2/p7/1bP5/8/8/8/8/6qQ w - - 0 1',
        solution: ['c7', 'Qxh1', 'c8'],
        description: 'your pawn two square away to promote'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5rkr/5ppp/8/4K3/6N1/2Q5/q7/8 w - - 0 1',
        solution: [
          'h6',
          {'from': 'g7', 'to': 'h6'},
          'g3'
        ],
        description: 'open up the file in front of king'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'krQ5/p7/8/4q3/N7/8/8/3K4 w - - 0 1',
        solution: [
          'b6',
          {'from': 'a7', 'to': 'b6'},
          'a6'
        ],
        description:
            'rook is pinned so if you check king with knight black will take it with pawn'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: 'k1r5/p1pq4/Qp1p4/8/3N4/8/3K4/8 w - - 0 1',
        solution: ['c6', 'Qxc6', 'c8'],
        description: 'the pawn in front of king is weak'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '3q2rk/5Q1p/6bK/4N3/8/8/8/8 w - - 0 1',
        solution: [
          'h7',
          {'from': 'g6', 'to': 'h7'},
          'f7'
        ],
        description: 'remove the bishop from a great square'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/8/5Q2/2q3pk/7b/8/4K1P1/8 w - - 0 1',
        solution: ['g4', 'Kxg4', 'f3'],
        description: 'pawns sometimes will help you to check mate'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '8/b2Q4/kp2p3/p2q4/1P6/K7/8/8 w - - 0 1',
        solution: ['b5', 'Qxb5', 'c8'],
        description: 'pawns sometimes will help you to check mate'),

    ChessPuzzle(
        isWhiteToMove: true,
        puzzle: '5K1k/7b/8/4ppP1/8/6bQ/7q/8 w - - 0 1',
        solution: ['g6', 'Qxh3', 'g7'],
        description: 'pawns sometimes will help you to check mate'),
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

  List<ChessPuzzle> beginnerTactics = [
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
