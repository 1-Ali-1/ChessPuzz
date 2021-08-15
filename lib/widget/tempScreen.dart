import 'package:chess_puzz/models/puzzles.dart';
import 'package:chess_puzz/widget/drawer.dart';
import 'package:flutter/material.dart';
// import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:provider/provider.dart';

import 'first_time.dart';

class Temp extends StatefulWidget {
  @override
  _TempState createState() => _TempState();
}

class _TempState extends State<Temp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      // assetsAudioPlayer.pause();
    }
    if (state == AppLifecycleState.resumed) {
      // assetsAudioPlayer.play();
    }
    super.didChangeAppLifecycleState(state);
  }

  // final assetsAudioPlayer = AssetsAudioPlayer();

  Widget build(BuildContext context) {
    if (Provider.of<Puzzles>(context).music) {
    //   assetsAudioPlayer.open(
    //       Playlist(
    //           startIndex: Provider.of<Puzzles>(context).randomIndex,
    //           audios: [
    //             Audio("assets/sb_reverie.mp3"),
    //             Audio("assets/sb_monomyth_12_therestoration.mp3"),
    //             Audio("assets/sb_monomyth_1_thedistantsun.mp3"),
    //             Audio("assets/sb_monomyth_3_thethingsthatbindushere.mp3"),
    //             Audio("assets/sb_lifeis.mp3"),
    //           ]),
    //       loopMode: LoopMode.playlist //loop the full playlist
    //       );
    // } else {
    //   assetsAudioPlayer.pause();
    }

    return FirstTime();
  }
}
