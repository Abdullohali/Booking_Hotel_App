import 'package:bookinghotelapp/provider/bottom_nav_provider.dart';
import 'package:bookinghotelapp/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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