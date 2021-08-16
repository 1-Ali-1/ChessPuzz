import 'package:chess_puzz/services/notification.dart';
import 'package:chess_puzz/widget/tempScreen.dart';
import 'package:flutter/services.dart';
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
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(
      Main(),
    );
  });
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
          //here ChangeNotifierProvider(
          //here   create: (context) => notifications(),
          //here   child: Home(),
          //here )
        ],
        child: MaterialApp(
            theme: ThemeData(
              textTheme: GoogleFonts.ubuntuTextTheme(),
            ),
            debugShowCheckedModeBanner: false,
            home: Temp()));
  }
}
