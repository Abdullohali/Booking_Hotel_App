import '../components/import_package.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int _currentIndex = 0;
  final screens = [
    HomeOne(),
    BookingOne(),
    HomeOne(),
    BookingOne(),
  ];
  set currentTab(int tab) {
    this._currentIndex = tab;
    notifyListeners();
  }

  void onTap(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  int get currentTab => this._currentIndex;
  get currentScreens => this.screens[this._currentIndex];
}
