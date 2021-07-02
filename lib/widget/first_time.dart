import 'package:chess_puzz/screens/Home.dart';
import 'package:chess_puzz/screens/on_bording.dart';
import 'package:chess_puzz/storage/sharedPrefrences.dart';
import 'package:chess_puzz/widget/drawer.dart';
import 'package:flutter/material.dart';

class FirstTime extends StatefulWidget {
  const FirstTime({Key key}) : super(key: key);

  _FirstTimeState createState() => _FirstTimeState();
}

class _FirstTimeState extends State<FirstTime> {
  bool firstTime = false;
  @override
  void initState() {
    StoreData().read('FT').then((value) => firstTime = value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    StoreData().read('FT').then((value) => setState(() {
          firstTime = value;
        }));

    return firstTime
        ? FirstPlace()
        : firstTime
            ? FirstPlace()
            : firstTime
                ? FirstPlace()
                : OnBording();
  }
}
