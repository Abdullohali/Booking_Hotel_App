import 'package:bookinghotelapp/provider/theme_provider.dart';
import 'package:bookinghotelapp/screen/titleScreen/title_screen.dart';

import 'components/import_package.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        themeMode: ThemeMode.system,
        theme: ThemeProvider.theme ? MyTheme.lighttheme : MyTheme.darktheme,
        darkTheme: MyTheme.darktheme,
        home: const TitleSceen());
  }
}
