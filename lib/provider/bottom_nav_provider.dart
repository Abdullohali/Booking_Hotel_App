import 'package:bookinghotelapp/screen/googlemap/map.page.dart';

import '../components/import_package.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int _currentIndex = 0;
   final screens = [
    HomeOne(),
    BookingOne(),
    MapPage(),
    BookingOne(),
  ];
  set currentTab(int tab) {
    _currentIndex = tab;
    notifyListeners();
  }

  void onTap(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  int get currentTab => _currentIndex;
  get currentScreens => screens[_currentIndex];
}
