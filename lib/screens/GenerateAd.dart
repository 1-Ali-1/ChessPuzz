import 'package:chess_puzz/storage/sharedPrefrences.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:io';

class AdScreen extends StatefulWidget {
  @override
  _AdState createState() => _AdState();
}

class _AdState extends State<AdScreen> {
  int i;
  bool loaded;
  bool isFailed;
  bool isFinished;
  bool b = false;

  RewardedAd rewardedAd;

  @override
  void initState() {
    super.initState();

    i = 0;
    loaded = false;
    isFailed = false;
    isFinished = false;

    rewardedAd = RewardedAd(
      adUnitId: Platform.isAndroid
          ? 'ca-app-pub-4888683541781775/1543387392'
          : 'ca-app-pub-4888683541781775/1143144096',
      request: AdRequest(),
      listener: AdListener(
        // Called when an ad is successfully received.
        onAdLoaded: (Ad ad) => setState(() {
          loaded = true;
        }),
        // Called when an ad request failed.
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          setState(() {
            isFailed = true;
          });
          ad.dispose();
        },
        // Called when an ad opens an overlay that covers the screen.
        onAdOpened: (Ad ad) => print('Ad opened.'),
        // Called when an ad removes an overlay that covers the screen.
        onAdClosed: (Ad ad) {
          ad.dispose();
        },
        // Called when an ad is in the process of leaving the application.
        onApplicationExit: (Ad ad) => print('Left application.'),
        // Called when a RewardedAd triggers a reward.
        onRewardedAdUserEarnedReward: (RewardedAd ad, RewardItem reward) {
          StoreData().winAttempt();
          setState(() {
            isFinished = true;
          });
        },
      ),
    );
    rewardedAd.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kthird_color,
        appBar: AppBar(
          centerTitle: true,
          title: isFinished
              ? Text('Video Ad',
                  style: TextStyle(
                    color: kSecondary_color,
                    fontSize: 26.0,
                  ))
              : Text('Wait for Ad',
                  style: TextStyle(
                    color: kSecondary_color,
                    fontSize: 26.0,
                  )),
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
          elevation: 0.0,
          backgroundColor: kthird_color,
          shadowColor: Colors.transparent,
        ),
        body: FutureBuilder(
          future: rewardedAd.isLoaded() ?? StoreData().tempRead(),
          builder: (context, snapshot) {
            rewardedAd.isLoaded().then((value) {
              rewardedAd.show();
            });
            return snapshot.data ?? false
                ? Center(
                    child: Container(
                      child:
                          AnimatedTextKit(repeatForever: true, animatedTexts: [
                        FadeAnimatedText('Congrats',
                            duration: Duration(seconds: 2),
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 45.0,
                                color: kSecondary_color)),
                      ]),
                    ),
                  )
                : isFailed
                    ? Center(
                        child: Text(
                          'there is a problem with the video Ad',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: kSecondary_color,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text('please wait ..',
                                style: TextStyle(
                                  color: kSecondary_color,
                                  fontSize: 21.0,
                                )),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Center(
                              child: SpinKitWanderingCubes(
                            color: kSecondary_color,
                            size: 50.0,
                          )),
                        ],
                      );
          },
        ));
  }
}
