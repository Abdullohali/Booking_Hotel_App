import 'package:bookinghotelapp/components/import_package.dart';

class MyTheme {
  static final darktheme = ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: constColor.kBlack),
    primaryColor: constColor.kBlack,
    scaffoldBackgroundColor: constColor.kBlack,
    colorScheme: const ColorScheme.dark(),
  );
  static final lighttheme = ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: constColor.kGrey),
    primaryColor: constColor.kgrey,
    scaffoldBackgroundColor: constColor.kgrey,
    colorScheme: const ColorScheme.light(),
  );
}
