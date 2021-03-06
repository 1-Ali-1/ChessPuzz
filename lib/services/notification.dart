import 'package:chess_puzz/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class notifications extends ChangeNotifier {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future initialize() async {
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings("splash");

    IOSInitializationSettings iosInitializationSettings =
        IOSInitializationSettings();

    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: androidInitializationSettings,
            iOS: iosInitializationSettings);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future sheduledNotification() async {
    var interval = RepeatInterval.weekly;
    var android = AndroidNotificationDetails("id", "channel", "description",
        color: kdeafultBlack,
        enableLights: false,
        enableVibration: true,
        largeIcon: DrawableResourceAndroidBitmap("splash"),
        styleInformation: MediaStyleInformation(
            htmlFormatContent: true, htmlFormatTitle: true));
            var ios = IOSNotificationDetails(subtitle:"Solve puzzles daily");

    var platform = new NotificationDetails(android: android,iOS:ios );

    await _flutterLocalNotificationsPlugin.periodicallyShow(
        0, "Solve puzzles daily", "to get better at chess", interval, platform);
  }

  

  Future cancelNotification() async {
    await _flutterLocalNotificationsPlugin.cancelAll();
  }
}
