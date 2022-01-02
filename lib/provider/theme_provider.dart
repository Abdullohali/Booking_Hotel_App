import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/components/types.dart';

class ThemeProvider extends ChangeNotifier{
  static bool theme = true;

  void changeTheme(){
    theme = false;
    Types.valueoftheme = true;
    notifyListeners();
  }
  void returnTheme(){
    theme = true;
    Types.valueoftheme = false;
    notifyListeners();
  }
}