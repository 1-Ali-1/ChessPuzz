import 'package:chess_puzz/constants.dart';
import 'package:chess_puzz/models/puzzles.dart';
import 'package:chess_puzz/screens/Home.dart';
import 'package:chess_puzz/storage/sharedPrefrences.dart';
import 'package:chess_puzz/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:provider/provider.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Temp extends StatefulWidget {
  @override
  _TempState createState() => _TempState();
}

class _TempState extends State<Temp> {
  @override
  bool temp = false;
  final assetsAudioPlayer = AssetsAudioPlayer();

  List<PageViewModel> listPagesViewModel = [
    PageViewModel(
      decoration: PageDecoration(
          pageColor: kthird_color, imagePadding: EdgeInsets.all(50)),
      title: "Solve puzzles",
      bodyWidget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Expanded(
            child: Text(
              "there are a ton of amazing and useful puzzles to solve ",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      image: Center(
          child: Container(
              child: Image.asset(
        'assets/img/Opuzzle.png',
      ))),
    ),
    PageViewModel(
      decoration: PageDecoration(
          pageColor: kthird_color, imagePadding: EdgeInsets.all(50)),
      title: "Relaxing Music",
      bodyWidget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Expanded(
              child: Text(
            "you hear relaxing music while solving puzzles to keep you focus and feel relaxing",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          )),
        ],
      ),
      image: Center(
          child: Container(
              child: Image.asset(
        'assets/img/headphones.png',
      ))),
    ),
    PageViewModel(
      decoration: PageDecoration(
          pageColor: kthird_color, imagePadding: EdgeInsets.all(50)),
      title: "Works Offline !!!",
      bodyWidget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Expanded(
              child: Text(
            "you can solve puzzles offline if you have keys you can get keys by watching short video",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          )),
        ],
      ),
      image: Center(
          child: Container(
              child: Image.asset(
        'assets/img/no-wifi.png',
      ))),
    ),
  ];

  Widget build(BuildContext context) {
    StoreData().firstTimeread('first').then((value) => setState(() {
          temp = value;
        }));
    var size = MediaQuery.of(context).size;
    if (Provider.of<Puzzles>(context).music) {
      assetsAudioPlayer.open(
          Playlist(
              startIndex: Provider.of<Puzzles>(context).randomIndex,
              audios: [
                Audio("assets/sb_reverie.mp3"),
                Audio("assets/sb_monomyth_12_therestoration.mp3"),
                Audio("assets/sb_monomyth_1_thedistantsun.mp3"),
                Audio("assets/sb_monomyth_3_thethingsthatbindushere.mp3"),
                Audio("assets/sb_lifeis.mp3"),
              ]),
          loopMode: LoopMode.playlist //loop the full playlist
          );
    } else {
      assetsAudioPlayer.stop();
    }
    print('$temp 0000000000000000000000000');
    return temp
        ? Home()
        : Scaffold(
            body: IntroductionScreen(
            globalBackgroundColor: kthird_color,
            color: kSecondary_color,
            pages: listPagesViewModel,
            onDone: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => FirstPlace()),
                (Route<dynamic> route) => false,
              );
            },
            onSkip: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => FirstPlace()),
                (Route<dynamic> route) => false,
              );
            },
            showSkipButton: true,
            skip: const Text("skip",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
            next: const Text("next",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
            done: const Text("Done",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
            dotsDecorator: DotsDecorator(
                size: const Size.square(12.0),
                activeSize: const Size(22.0, 12.0),
                color: Colors.black26,
                spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0))),
          ));
  }
}
