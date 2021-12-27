import 'package:bookinghotelapp/components/import_package.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBarProvider? model;
  BottomNavBar({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _context = context.watch<BottomNavBarProvider>();
    // BottomProvier? model;
    return BottomNavigationBar(
      backgroundColor: ColorScheme == ColorScheme.dark() ? constColor.kBlack : constColor.kgrey,
      items: [
        BottomNavigationBarItem(
          icon: _context.currentTab == 0 ? SvgPicture.asset(Iconspath.home1,color: constColor.kPeach,) : SvgPicture.asset(Iconspath.home2),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 1 ? SvgPicture.asset(Iconspath.search1,color: constColor.kPeach,) : SvgPicture.asset(Iconspath.search2),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 2 ? SvgPicture.asset(Iconspath.noti,color: constColor.kPeach,) : SvgPicture.asset(Iconspath.noti2),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _context.currentTab == 3 ? SvgPicture.asset(Iconspath.user2,color: constColor.kPeach,) : SvgPicture.asset(Iconspath.user1),
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