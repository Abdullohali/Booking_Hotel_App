import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/components/types.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  static bool currenttheme = true;
  ThemeMode get thememode {
    if (currenttheme) {
      return ThemeMode.light;
    } else if (currenttheme == false) {
      return ThemeMode.dark;
    } else {
      return ThemeMode.system;
    }
  }

  changeTheme(bool theme) async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    _prefs.setBool('theme', theme);
    currenttheme = theme;
    notifyListeners();
  }

  initialize() async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    currenttheme = _prefs.getBool('theme') ?? false;
    notifyListeners();
  }
}
