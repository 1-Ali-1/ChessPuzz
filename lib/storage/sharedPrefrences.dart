import 'package:shared_preferences/shared_preferences.dart';

class StoreData {
  void saveColor(int num) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('color', num);
  }

  Future<int> readColor(key) async {
    final prefs = await SharedPreferences.getInstance();
    var value = prefs.getInt(key) ?? 0;
    return value;
  }

  void save(String key, bool iSsolved) async {
    final prefs = await SharedPreferences.getInstance();

    prefs.setBool(key, iSsolved);
  }

  Future<bool> read(key) async {
    final prefs = await SharedPreferences.getInstance();
    var value = prefs.getBool(key) ?? false;
    return value;
  }

///////////////////
  void saveForCheckMate() async {
    final prefsNumber = await SharedPreferences.getInstance();
    var value = prefsNumber.getInt('checkmate') ?? 0;
    value++;
    prefsNumber.setInt('checkmate', value);
  }

//////////////
  Future<int> readForCheckMate() async {
    final prefsNumber = await SharedPreferences.getInstance();
    return prefsNumber.getInt('checkmate') ?? 0;
  }

  ///////////////////
  void saveForTactics() async {
    final pr = await SharedPreferences.getInstance();
    var value = pr.getInt('tactic') ?? 0;
    value++;
    pr.setInt('tactic', value);
  }

//////////////
  Future<int> readForTactics() async {
    final pr = await SharedPreferences.getInstance();
    return pr.getInt('tactic') ?? 0;
  }

  ///////////////////
  void saveForTacticsWithTopPlayers() async {
    final p = await SharedPreferences.getInstance();
    var value = p.getInt('tacticWithTopPlayer') ?? 0;
    value++;
    p.setInt('tacticWithTopPlayer', value);
  }

//////////////
  Future<int> readForTacticsWithTopPlayers() async {
    final p = await SharedPreferences.getInstance();
    return p.getInt('tacticWithTopPlayer') ?? 0;
  }

  void saveForBeginnerTactics() async {
    final p = await SharedPreferences.getInstance();
    var value = p.getInt('beginnerTactics') ?? 0;
    value++;
    p.setInt('beginnerTactics', value);
  }

//////////////
  Future<int> readForBeginnerTactics() async {
    final p = await SharedPreferences.getInstance();
    return p.getInt('beginnerTactics') ?? 0;
  }

  void saveForMasterTactics() async {
    final p = await SharedPreferences.getInstance();
    var value = p.getInt('masterTactics') ?? 0;
    value++;
    p.setInt('masterTactics', value);
  }

//////////////
  Future<int> readForMasterTactics() async {
    final p = await SharedPreferences.getInstance();
    return p.getInt('masterTactics') ?? 0;
  }

  void saveForOpeningTactics() async {
    final p = await SharedPreferences.getInstance();
    var value = p.getInt('openingTactics') ?? 0;
    value++;
    p.setInt('openingTactics', value);
  }

//////////////
  Future<int> readForOpeningTactics() async {
    final p = await SharedPreferences.getInstance();
    return p.getInt('openingTactics') ?? 0;
  }

  Future<int> getAttempt() async {
    final prefs = await SharedPreferences.getInstance();
    var value = prefs.getInt('attempt') ?? 15;
    return value;
  }

  void looseAttempt() async {
    final p = await SharedPreferences.getInstance();
    var value = p.getInt('attempt') ?? 15;

    if (value != 0) {
      value--;
      p.setInt('attempt', value);
    }
  }

  void winAttempt() async {
    final p = await SharedPreferences.getInstance();
    var value = p.getInt('attempt') ?? 15;
    value += 15;
    p.setInt('attempt', value);
  }

  Future<bool> tempRead() async {
    final prefs = await SharedPreferences.getInstance();
    var value = prefs.getBool('temp') ?? false;
    return value;
  }

  void unlocking() async {
    final prefs = await SharedPreferences.getInstance();
    var value = prefs.getInt('attempt') ?? 15;

    if (value >= 30) {
      value = value - 30;
      prefs.setInt('attempt', value);
      StoreData().save('tempbool', true);
    }
  }

  void unlockingForSacrifice() async {
    final prefs = await SharedPreferences.getInstance();
    var value = prefs.getInt('attempt') ?? 15;

    if (value >= 30) {
      value = value - 30;
      prefs.setInt('attempt', value);

      StoreData().save('tempboolForSacrifice', true);
    }
  }

  void unlockingForCaroKann() async {
    final prefs = await SharedPreferences.getInstance();
    var value = prefs.getInt('attempt') ?? 15;

    if (value >= 30) {
      value = value - 30;
      prefs.setInt('attempt', value);

      StoreData().save('tempboolForCaroKann', true);
    }
  }

  void unlockingForEnglish() async {
    final prefs = await SharedPreferences.getInstance();
    var value = prefs.getInt('attempt') ?? 15;

    if (value >= 30) {
      value = value - 30;
      prefs.setInt('attempt', value);

      StoreData().save('tempboolForEnglish', true);
    }
  }
}
