import 'dart:async';

import 'package:bookinghotelapp/components/import_package.dart';
import 'package:lottie/lottie.dart';

class TitleSceen extends StatefulWidget {
  const TitleSceen({Key? key}) : super(key: key);

  @override
  State<TitleSceen> createState() => _TitleSceenState();
}

class _TitleSceenState extends State<TitleSceen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const MainPage()));
    });
    // Navigator.push(context, MaterialPageRoute(builder: (_) => MainPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: constColor.kPeach,
        body: Center(
          child: Lottie.asset("assets/gifs/booking.json"),
        ));
  }
}
