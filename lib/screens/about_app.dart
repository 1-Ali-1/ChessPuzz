import 'package:chess_puzz/constants.dart';
import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size.width);
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
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Chess',
                style: TextStyle(color: kSecondary_color, fontSize: 30.0),
              ),
              TextSpan(
                text: ' Puzz',
                style: TextStyle(color: kswitch, fontSize: 30.0),
              )
            ],
          ),
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
                        fontSize: 22.0,
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
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[200],
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Row(children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            child: Image.asset(
                              'assets/img/ali.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      size.width < 500
                          ? SizedBox(
                              width: 8,
                            )
                          : SizedBox(
                              width: 30,
                            ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            SelectableText(
                              'alifarhad.engineer@gmail.com',
                              style: TextStyle(
                                  color: kswitch,
                                  fontSize: size.width > 500 ? 22.0 : 16),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Software Engineer',
                              style: TextStyle(
                                  color: kswitch,
                                  fontSize: size.width > 500 ? 16 : 15),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    color: kswitch,
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'About App',
                    style: TextStyle(
                        color: kSecondary_color,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'This App is free and it works offline with a ton of great puzzles for chess players and it has a soft and relaxed music to keep players focus and relieve their stress',
                    style: TextStyle(color: kSecondary_color, fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: kswitch,
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Thanks For',
                    style: TextStyle(
                        color: kSecondary_color,
                        fontSize: 22.0,
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
                  SizedBox(
                    height: 10,
                  ),
                  SelectableText(
                    "All Icons made by Freepik from www.flaticon.com",
                    style: TextStyle(color: kSecondary_color, fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 20,
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
