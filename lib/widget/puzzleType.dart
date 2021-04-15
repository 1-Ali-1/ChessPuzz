import 'package:chess_puzz/constants.dart';
import 'package:flutter/material.dart';

class PuzzleType extends StatelessWidget {
  final String img;
  final String title;

  const PuzzleType({Key key, @required this.img, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          elevation: 3.0,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 90,
                  width: 90,
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(color: kSecondary_color, fontSize: 27.0),
                ),
              )
            ],
          ),
          color: kPrimary_color.withOpacity(0.85),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
