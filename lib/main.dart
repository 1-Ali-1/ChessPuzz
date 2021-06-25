import 'package:chess_puzz/services/notification.dart';
import 'package:chess_puzz/widget/tempScreen.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:chess_puzz/models/chessPuzzels.dart';
import 'package:chess_puzz/models/puzzles.dart';
import 'package:chess_puzz/screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(Main());
}

class Main extends StatelessWidget {
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Puzzles(),
            child: Home(),
          ),
          ChangeNotifierProvider(
            create: (context) => ChessPuzzle(),
            child: Home(),
          ),
          ChangeNotifierProvider(
            create: (context) => notifications(),
            child: Home(),
          )
        ],
        child: MaterialApp(
            theme: ThemeData(
              textTheme: GoogleFonts.ubuntuTextTheme(),
            ),
            debugShowCheckedModeBanner: false,
            home: Temp()));
  }
}
