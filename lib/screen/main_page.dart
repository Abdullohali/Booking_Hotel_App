import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/widgets/bottom_nav_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavBarProvider>(
      create: (context) => BottomNavBarProvider(),
      child: Consumer<BottomNavBarProvider>(
        builder: (context, model, child) => Scaffold(
          body: model.currentScreens,
          bottomNavigationBar: BottomNavBar(
            model: model,
          ),
        ),
      ),
      // builder: (context) => BottomProvier(),
    );
  }
}