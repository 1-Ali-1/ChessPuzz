import 'package:chess_puzz/storage/sharedPrefrences.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../constants.dart';

class AdScreen extends StatefulWidget {
  @override
  _AdState createState() => _AdState();
}

class _AdState extends State<AdScreen> {

  
  int i = 0;
  bool loaded = false;
  bool isFailed = false;
  bool isFinished = false;
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
      // !
      // ! test rewarded vedio ad real mine 'ca-app-pub-4888683541781775/1543387392'
      adUnitId: RewardedAd.testAdUnitId,
      // !
      //!
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
          setState(() {
            isFinished = true;
          });
          print('Reward earned: $reward');
          StoreData().winAttempt();
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
              ? Text('You got 15 keys',
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
                      child: Text('AD'),
                    ),
                  )
                : isFailed
                    ? Center(
                        child: Text('some error occured'),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text('please wait',
                                style: TextStyle(
                                  color: kSecondary_color,
                                  fontSize: 26.0,
                                )),
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          Center(
                            child: CircularProgressIndicator(),
                          ),
                        ],
                      );
          },
        ));
  }
}