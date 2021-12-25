import '../../components/import_package.dart';


class BottomBar extends StatelessWidget {
  BottomBarProvider? model;
   BottomBar({Key? key, required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _context = context.watch<BottomBarProvider>();
    // BottomProvier? model;
    return BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: _context.currentTab == 0 ?  SvgPicture.asset(Iconspath.mainhome) : SvgPicture.asset(Iconspath.mainhome2),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _context.currentTab == 1 ?  SvgPicture.asset(Iconspath.mainSearch) : SvgPicture.asset(Iconspath.mainSearch2),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _context.currentTab == 2 ? SvgPicture.asset(Iconspath.mainNotification) : SvgPicture.asset(Iconspath.mainNotification2),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _context.currentTab == 3 ? SvgPicture.asset(Iconspath.mainUser) : SvgPicture.asset(Iconspath.mainUser2),
            label: '',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _context.currentTab,
        onTap: (int idx) {
          model!.currentTab = idx;
        });
  }
}