import 'components/import_package.dart';

void main() {
  runApp(
     MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavBarProvider()),
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
      theme: MyTheme.lighttheme,
      darkTheme: MyTheme.darktheme,
      routes: {
        '/': (_) => const MainPage(),
      },
    );
  }
}

