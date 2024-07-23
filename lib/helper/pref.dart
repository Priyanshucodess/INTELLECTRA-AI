import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';


class Pref{
  static late Box _box;

static Future<void> initialize() async {

  //  Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;
  //  _box = Hive.box(name: 'myData');

   await Hive.initFlutter();
    _box = await Hive.openBox('myData');

}
    static bool get showOnboarding => _box.get('showOnboarding',defaultValue: true);
    static set showOnboarding(bool v)=> _box.put('showOnboarding', v);

}