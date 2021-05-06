import 'package:shared_preferences/shared_preferences.dart';

class StoreData {
  void save(bool iSsolved) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'solved';

    prefs.setBool(key, iSsolved);
  }

  Future<bool> read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'solved';
    var value = prefs.getBool(key) ?? false;
    return value;
  }
}
