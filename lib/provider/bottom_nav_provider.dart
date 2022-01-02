import 'package:bookinghotelapp/screen/deals/deals_page.dart';
import 'package:bookinghotelapp/screen/googlemap/map.page.dart';
import 'package:bookinghotelapp/screen/hotellist/hotel_list_page.dart';
import 'package:bookinghotelapp/screen/user/user_page.dart';

import '../components/import_package.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int _currentIndex = 0;
   final screens = const [
    HomeOne(),
    HotelList(),
    DealsPage(),
    Userpage(),
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
