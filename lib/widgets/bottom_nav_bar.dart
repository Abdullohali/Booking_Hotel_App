import 'package:bookinghotelapp/components/import_package.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBarProvider? model;
  BottomNavBar({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _context = context.watch<BottomNavBarProvider>();
    // BottomProvier? model;
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: _context.currentTab == 0 ? SvgPicture.asset(Iconspath.mainhome,color: constColor.kPeach,) : SvgPicture.asset(Iconspath.mainhome2),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 1 ? SvgPicture.asset(Iconspath.mainSearch2,color: constColor.kPeach,) : SvgPicture.asset(Iconspath.mainSearch),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 2 ? SvgPicture.asset(Iconspath.mainNotification,color: constColor.kPeach,) : SvgPicture.asset(Iconspath.mainNotification2),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 3 ? SvgPicture.asset(Iconspath.mainUser,color: constColor.kPeach,) : SvgPicture.asset(Iconspath.mainUser2),
          label: '',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _context.currentTab,
      onTap: (int idx) {
        model!.currentTab = idx;
      },
    );
  }
}