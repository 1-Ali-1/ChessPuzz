import 'package:animated_drawer/views/animated_drawer.dart';
import 'package:chess_puzz/constants.dart';
import 'package:chess_puzz/screens/Home.dart';
import 'package:chess_puzz/screens/howkeyworks.dart';
import 'package:chess_puzz/screens/setting.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:chess_puzz/models/puzzles.dart';

class FirstPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedDrawer(
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
                    Text(
                      "Chess",
                      style: TextStyle(
                          fontSize: 25,
                          color: kSecondary_color,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
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
                    Text(
                      "Sound",
                      style: TextStyle(color: kSecondary_color, fontSize: 19),
                    ),
                    Switch(
                      value: Provider.of<Puzzles>(context).sound,
                      onChanged: (v) {},
                      inactiveThumbColor: Color(0xFFBE6B51),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
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
                const Text(
                  "About App",
                  style: TextStyle(color: kSecondary_color, fontSize: 19),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                const Divider(
                  color: Color(0xFFBE6B51),
                  thickness: 1.5,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 70),
                ),
                const Text(
                  "keep improving\n have fun",
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
        homePageContent: Home());
  }
}
