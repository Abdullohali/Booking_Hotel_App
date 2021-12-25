import '../components/import_package.dart';
class BottomBarProvider extends ChangeNotifier {
  int _currentIndex = 0;
  List<Widget> _screens = [
    HomeOne(),
    BookingOne(),
  ];

  set currentTab(int tab) {
    this._currentIndex = tab;
    notifyListeners();
  }

  int get currentTab => this._currentIndex;
  get currentScreens => this._screens[this._currentIndex];

  onTap(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
