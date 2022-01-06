import 'package:animated_drawer/views/animated_drawer.dart';
import 'package:chess_puzz/constants.dart';
import 'package:chess_puzz/screens/Home.dart';
import 'package:chess_puzz/screens/about_app.dart';
import 'package:chess_puzz/screens/howkeyworks.dart';
import 'package:chess_puzz/screens/setting.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:chess_puzz/models/puzzles.dart';
import 'package:double_back_to_close/double_back_to_close.dart';

class FirstPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DoubleBack(
      message: "Press back again to close",
      child: AnimatedDrawer(
          homePageXValue: 150,
          homePageYValue: 80,
          homePageAngle: -0.2,
          homePageSpeed: 250,
          shadowXValue: 122,
          shadowYValue: 110,
          shadowAngle: -0.275,
          shadowSpeed: 550,
          openIcon: Container(
            height: 27,
            width: 27,
            child: Image.asset(
              'assets/img/menu.png',
              color: kPrimary_color,
            ),
          ),
          closeIcon: Icon(
            Icons.arrow_back,
            color: kPrimary_color,
            size: 30.0,
          ),
          shadowColor: Color(0xFF84C9DC),
          backgroundGradient: LinearGradient(
            colors: [Color(0xFFB8DADE), Color(0xFF84C9DC)],
          ),
          menuPageContent: Padding(
            padding: const EdgeInsets.only(top: 100.0, left: 15),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        'assets/icon/icon.png',
                        fit: BoxFit.cover,
                      )),
                  Row(
                    children: [
                      const Text(
                        "Chess",
                        style: TextStyle(
                            fontSize: 25,
                            color: kSecondary_color,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Puzz",
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xFFBE6B51),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 40),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Sound FX",
                        style: TextStyle(color: kSecondary_color, fontSize: 19),
                      ),
                      Switch(
                        value: Provider.of<Puzzles>(context).soundFx,
                        onChanged: (v) {
                          Provider.of<Puzzles>(context, listen: false).muteFx();
                        },
                        inactiveThumbColor: kSecondary_color,
                        activeColor: Color(0xFFBE6B51),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Music",
                        style: TextStyle(color: kSecondary_color, fontSize: 19),
                      ),
                      Switch(
                        value: Provider.of<Puzzles>(context).music,
                        onChanged: (v) {
                          Provider.of<Puzzles>(context, listen: false)
                              .muteMusic();
                        },
                        inactiveThumbColor: kSecondary_color,
                        activeColor: Color(0xFFBE6B51),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Setting())),
                    child: const Text(
                      "Board theme",
                      style: TextStyle(color: kSecondary_color, fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => KeyInf()));
                    },
                    child: const Text(
                      "How key works",
                      style: TextStyle(color: kSecondary_color, fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AboutApp()));
                    },
                    child: const Text(
                      "About App",
                      style: TextStyle(color: kSecondary_color, fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  const Divider(
                    color: Color(0xFFBE6B51),
                    thickness: 1.5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                  ),
                  const Text(
                    "Keep Improving\n have fun",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kSecondary_color,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          homePageContent: Home()),
    );
  }
}
