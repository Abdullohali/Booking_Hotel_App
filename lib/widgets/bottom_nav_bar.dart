import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/provider/theme_provider.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBarProvider? model;
  BottomNavBar({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _context = context.watch<BottomNavBarProvider>();
    // BottomProvier? model;
    return BottomNavigationBar(
      selectedFontSize: getUniqueHeight(25),
      unselectedFontSize: getUniqueHeight(25),
      showUnselectedLabels: false,
      backgroundColor:
          ThemeProvider.theme ? constColor.kgrey : constColor.kBlack,
      items: [
        BottomNavigationBarItem(
          icon: _context.currentTab == 0
              ? SvgPicture.asset(
                  Iconspath.home1,
                  color: constColor.kpink,
                )
              : SvgPicture.asset(Iconspath.home1),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 1
              ? SvgPicture.asset(
                  Iconspath.search1,
                  color: constColor.kpink,
                )
              : SvgPicture.asset(Iconspath.search1),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 2
              ? SvgPicture.asset(
                  Iconspath.noti,
                  color: constColor.kpink,
                )
              : SvgPicture.asset(Iconspath.noti),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 3
              ? SvgPicture.asset(
                  Iconspath.user1,
                  color: constColor.kpink,
                )
              : SvgPicture.asset(Iconspath.user1),
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
