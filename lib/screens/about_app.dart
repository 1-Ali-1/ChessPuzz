import 'package:chess_puzz/constants.dart';
import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kthird_color,
      appBar: AppBar(
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
        backgroundColor: kthird_color,
        elevation: 0.0,
        title: Text(
          'Chess Puzz',
          style: TextStyle(color: kSecondary_color, fontSize: 25.0),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    'About developer',
                    style: TextStyle(
                        color: kSecondary_color,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'I am international chess player and mobile application developer I dedicated this app for all chess lovers around the world',
                    style: TextStyle(color: kSecondary_color, fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: Image.asset(
                        'assets/img/ali.jpg',
                        height: 70,
                        width: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: SelectableText(
                      'alifarhad.engineer@gmail.com',
                      style: TextStyle(color: kSecondary_color, fontSize: 16.0),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: kswitch,
                  ),
                  Text(
                    'About App',
                    style: TextStyle(
                        color: kSecondary_color,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'This App is free and it works offline with a ton of great puzzles for chess players and it has a soft and relaxed music to keep players focus',
                    style: TextStyle(color: kSecondary_color, fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: kswitch,
                  ),
                  Text(
                    'Thanks For',
                    style: TextStyle(
                        color: kSecondary_color,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SelectableText(
                    'All Musics by Scott Buckley – www.scottbuckley.com.au',
                    style: TextStyle(color: kSecondary_color, fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SelectableText(
                    'https://storyset.com/web Illustration by Freepik Storyset',
                    style: TextStyle(color: kSecondary_color, fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SelectableText(
                    'All Icons made by https://www.freepik.com Freepik \n and \n https://www.flaticon.com Flaticon',
                    style: TextStyle(color: kSecondary_color, fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: kswitch,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
