import '../../components/import_package.dart';


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomBarProvider>(
      create: (context) => BottomBarProvider(),
      child: Consumer<BottomBarProvider>(
        builder: (context, model, child) => Scaffold(
          body: model.currentScreens,
          bottomNavigationBar: BottomBar(
            model: model,
          ),
        ),
      ),
    );
  }
}