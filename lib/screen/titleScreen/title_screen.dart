import 'dart:async';

import 'package:bookinghotelapp/components/import_package.dart';

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
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/reseptions.jpg"),
                  fit: BoxFit.cover)),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
        ));
  }
}
