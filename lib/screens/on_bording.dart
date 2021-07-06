import 'package:chess_puzz/constants.dart';
import 'package:chess_puzz/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:fancy_on_boarding/fancy_on_boarding.dart';

class OnBording extends StatelessWidget {
  
  final pageList = [
    PageModel(
        color: Colors.blueGrey[800],
        heroImagePath: 'assets/img/Opuzzle.png',
        title: Text('Solve Puzzles',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: kthird_color,
              fontSize: 30.0,
            )),
        body: Text('you can solve a ton of great and useful puzzles',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kthird_color,
              fontSize: 20.0,
            )),
        iconImagePath: 'assets/img/Opuzzle.png'),
    PageModel(
        color: Colors.blueGrey[500],
        heroImagePath: 'assets/img/headphones.png',
        title: Text('Relaxing music',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: kthird_color,
              fontSize: 30.0,
            )),
        body: Text(
            'you can listen to the relaxing musics to keep you focus and relax',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kthird_color,
              fontSize: 20.0,
            )),
        iconImagePath: 'assets/img/headphones.png'),
    PageModel(
        color: Colors.blueGrey[100],
        heroImagePath: 'assets/img/no-wifi.png',
        title: Text('Works Offline',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: kSecondary_color,
              fontSize: 30.0,
            )),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
              'you can solve puzzles offline as long as you have keys and you can get keys by watching short videos',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kSecondary_color,
                fontSize: 20.0,
              )),
        ),
        iconImagePath: 'assets/img/no-wifi.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FancyOnBoarding(
        doneButtonBackgroundColor: kSecondary_color,
        doneButtonText: "Done",
        skipButtonText: "Skip",
        pageList: pageList,
        onDoneButtonPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => FirstPlace())),
        onSkipButtonPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => FirstPlace())),
      ),
    );
  }
}
