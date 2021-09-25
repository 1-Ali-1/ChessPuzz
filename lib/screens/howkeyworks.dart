import 'package:flutter/material.dart';

import '../constants.dart';

class KeyInf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Key',
          style: TextStyle(color: kSecondary_color, fontSize: 27.0),
        ),
        centerTitle: true,
      ),
      backgroundColor: kthird_color,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            const Text(
              "For now the key is unlimited",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40.0,
            ),
            const Text(
              "First you have 15 keys after solving or missing any puzzle you will lose one key",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: kSecondary_color,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 70.0,
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            SizedBox(
              height: 30.0,
            ),
            const Text(
              "By watching short video you will get 15 key any time you want by clicking key icon in the home screen or puzzle screen",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: kSecondary_color,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
