import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/core/cubit/bottomnavbar_cubit.dart';
import 'package:bookinghotelapp/provider/theme_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return BlocProvider(
      create: (_) => BottomnavbarCubit(),
      child: BlocBuilder<BottomnavbarCubit, BottomnavbarState>(
        builder: (context, state) {
          var _context = context.watch<BottomnavbarCubit>();
          return Scaffold(
            body:_context.pages[_context.pageindex],
            bottomNavigationBar: bottomnavbar(_context, context),
          );
        },
      ),
    );
  }

  static BottomNavigationBar bottomnavbar(BottomnavbarCubit _context, BuildContext context) {
    return BottomNavigationBar(
            selectedFontSize: getUniqueHeight(25),
            unselectedFontSize: getUniqueHeight(25),
            showUnselectedLabels: false,
            backgroundColor:
                ThemeProvider.currenttheme ? constColor.kgrey : constColor.kBlack,
            items: [
              BottomNavigationBarItem(
                icon: _context.pageindex == 0
                    ? SvgPicture.asset(
                        Iconspath.home1,
                        color: constColor.kpink,
                      )
                    : SvgPicture.asset(Iconspath.home1),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _context.pageindex == 1
                    ? SvgPicture.asset(
                        Iconspath.search1,
                        color: constColor.kpink,
                      )
                    : SvgPicture.asset(Iconspath.search1),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _context.pageindex == 2
                    ? SvgPicture.asset(
                        Iconspath.noti,
                        color: constColor.kpink,
                      )
                    : SvgPicture.asset(Iconspath.noti),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _context.pageindex == 3
                    ? SvgPicture.asset(
                        Iconspath.user1,
                        color: constColor.kpink,
                      )
                    : SvgPicture.asset(Iconspath.user1),
                label: '',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: context.watch<BottomnavbarCubit>().pageindex,
            onTap: (int idx) {
              context.read<BottomnavbarCubit>().changePage(idx);
            },
          );
  }
}
