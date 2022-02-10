import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/components/types.dart';
import 'package:bookinghotelapp/provider/theme_provider.dart';
import 'package:bookinghotelapp/widgets/buttons.dart';
import 'package:bookinghotelapp/widgets/listtile_on_filter.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: FromLTRB.getEgdeInsets(22, 5, 22, 0),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios)),
                      Text(
                        "Filter",
                        style: googleFonts(28, FontWeight.w700),
                      ),
                      Padding(
                        padding: FromLTRB.getEgdeInsets(200, 0, 0, 18),
                        child: TextButton(
                          style: TextButton.styleFrom(
                              primary: constColor.kGreyDark),
                          onPressed: () {},
                          child: Text(
                            "Reset",
                            style: googleFonts(16, FontWeight.w600,
                                color: constColor.kGreyDark),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(
                  height: 4.0,
                  color: constColor.kOffWhite,
                ),
                listtileforfilter("Your budget"),
                listtileforfilter("Star Rating"),
                listtileforfilter("Review score"),
                listtileforfilter("Meals"),
                listtileforfilter("Hotel", trailing: "Hotel"),
                switchlisttile("Breakfast Included", Types.valueforbreakfast),
                switchlisttile("Deals", Types.valueforDeals),
                switchlisttile("Only show available", Types.valueforShow),
                Consumer(builder: (context, provider, chid) {
                  return SwitchListTile(
                    activeColor: constColor.kpink,
                    value: Types.valueoftheme,
                    onChanged: (e) {
                      if (Types.valueoftheme == false) {
                        e = false;
                        Types.valueoftheme = true;
                        context.read<ThemeProvider>().changeTheme(e);
                      } else {
                        e = true;
                        Types.valueoftheme = false;

                        context.read<ThemeProvider>().changeTheme(e);
                      }
                      setState(() {});
                    },
                    title: Text(
                      "Dark theme",
                      style: googleFonts(20, FontWeight.w600),
                    ),
                  );
                }),
                Padding(
                  padding: FromLTRB.getEgdeInsets(0, 124, 0, 0),
                  child: inkwellgredientbutton(
                      "Aplly", 70, SizeConfig.screenWidth),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
