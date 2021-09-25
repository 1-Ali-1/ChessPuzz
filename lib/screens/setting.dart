import 'package:chess_puzz/constants.dart';
import 'package:chess_puzz/models/puzzles.dart';
import 'package:chess_puzz/screens/GenerateAd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stateless_chessboard/flutter_stateless_chessboard.dart';
import 'package:chess_puzz/storage/sharedPrefrences.dart';
import 'package:provider/provider.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kthird_color,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Settings',
          style: TextStyle(color: kSecondary_color, fontSize: 24),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: kSecondary_color,
            size: 30,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text(
                  "Sound FX",
                  style: TextStyle(color: kSecondary_color, fontSize: 19),
                ),
                Switch(
                  value: Provider.of<Puzzles>(context).soundFx,
                  onChanged: (v) {
                    Provider.of<Puzzles>(context, listen: false).muteFx();
                  },
                  inactiveThumbColor: kSecondary_color,
                  activeColor: kswitch,
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Music",
                  style: TextStyle(color: kSecondary_color, fontSize: 19),
                ),
                Switch(
                  value: Provider.of<Puzzles>(context).music,
                  onChanged: (v) {
                    Provider.of<Puzzles>(context, listen: false).muteMusic();
                  },
                  inactiveThumbColor: kSecondary_color,
                  activeColor: kswitch,
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 18),
            ),
            // Padding(
            //   padding: EdgeInsets.only(right: size.width * 0.48),
            //   child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(primary: kSecondary_color),
            //     onPressed: () {
            //       Navigator.push(context,
            //           MaterialPageRoute(builder: (context) => AdScreen()));
            //     },
            //     child: Text(
            //       "Get 15 Keys",
            //       style: TextStyle(
            //         color: kthird_color,
            //         fontSize: 19,
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Divider(
                color: kswitch,
                thickness: 2,
              ),
            ),
            Text(
              'choose Board theme',
              style: TextStyle(color: kSecondary_color, fontSize: 22),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      StoreData().saveColor(0);
                      setState(() {});
                    },
                    child: boardTheme(imag: 'chess-board', title: 'default')),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      StoreData().saveColor(1);
                      setState(() {});
                    },
                    child: boardTheme(imag: 'greenBoard', title: 'Green')),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      StoreData().saveColor(2);
                      setState(() {});
                    },
                    child: boardTheme(imag: 'redBoard', title: 'Red')),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      StoreData().saveColor(3);
                      setState(() {});
                    },
                    child: boardTheme(imag: 'tournment', title: 'Tournment')),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      StoreData().saveColor(4);
                      setState(() {});
                    },
                    child: boardTheme(imag: 'brownBoard', title: 'Brown')),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      StoreData().saveColor(5);
                      setState(() {});
                    },
                    child: boardTheme(imag: 'pinkBoard', title: 'Pink')),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 7,
                          offset: Offset(2, 1),
                          spreadRadius: 7.0,
                          color: kdeafultBlack.withOpacity(0.7))
                    ]),
                child: FutureBuilder(
                  future: StoreData().readColor('color'),
                  builder: (context, snapshot) => Chessboard(
                    darkSquareColor: snapshot.data == 0
                        ? kdeafultBlack
                        : snapshot.data == 1
                            ? kgreenBlack
                            : snapshot.data == 2
                                ? kredBlack
                                : snapshot.data == 3
                                    ? ktournmentblack
                                    : snapshot.data == 4
                                        ? kbrownBlack
                                        : kpinkblack,
                    lightSquareColor: snapshot.data == 0
                        ? kdeafultWhite
                        : snapshot.data == 1
                            ? kgreenWhite
                            : snapshot.data == 2
                                ? kredWhite
                                : snapshot.data == 3
                                    ? ktournmentwhite
                                    : snapshot.data == 4
                                        ? kbrownWhite
                                        : kpinkwhite,
                    fen:
                        'rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1',
                    size: size.width * 0.6,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }

  Column boardTheme({imag, title}) {
    return Column(
      children: [
        Container(
            height: 90, width: 90, child: Image.asset('assets/img/$imag.png')),
        SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
