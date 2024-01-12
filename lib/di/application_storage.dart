import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

const _kMapList = "mapList";

class ApplicationStorage {
  ApplicationStorage(SharedPreferences sharedPreferences)
      : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;
  StreamController<bool> isUpdated = StreamController<bool>();

  List<String> get mapList {
    String input = _sharedPreferences.getString(_kMapList) ?? "";
    List<String> stringList =
        (jsonDecode(input) as List<dynamic>).cast<String>();

    return stringList;
  }

  set mapList(List<String> list) {
    var json = jsonEncode(list.map((e) => e).toList());

    _sharedPreferences.setString(_kMapList, json);
    isUpdated.add(true);
  }
}
