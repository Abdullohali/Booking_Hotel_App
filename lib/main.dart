import 'package:bookinghotelapp/provider/navigation_provider.dart';
import 'package:bookinghotelapp/provider/stepper_provider.dart';
import 'package:bookinghotelapp/provider/theme_provider.dart';
import 'package:bookinghotelapp/screen/complete/complete_page.dart';
import 'package:bookinghotelapp/screen/deals/deals_page.dart';
import 'package:bookinghotelapp/screen/filter/filter_page.dart';
import 'package:bookinghotelapp/screen/googlemap/map.page.dart';
import 'package:bookinghotelapp/screen/hotellist/hotel_list_page.dart';
import 'package:bookinghotelapp/screen/payment/payment_page.dart';
import 'package:bookinghotelapp/screen/registerOne/register_one.dart';
import 'package:bookinghotelapp/screen/reservation/reservation.dart';
import 'package:bookinghotelapp/screen/searchmap/search_in_map.dart';
import 'package:bookinghotelapp/screen/selectromm/select_room.dart';
import 'package:bookinghotelapp/screen/user/user_page.dart';

import 'components/import_package.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavBarProvider()),
        ChangeNotifierProvider(create: (_) => StepperProvider()),
        ChangeNotifierProvider(create: (_) => NavigationProvider()),
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
      home: const MainPage()
    );
  }
}
