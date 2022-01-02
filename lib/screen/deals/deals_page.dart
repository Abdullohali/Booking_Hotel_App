import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/widgets/buttons.dart';
import 'package:bookinghotelapp/widgets/divider.dart';
import 'package:bookinghotelapp/widgets/listtile_on_filter.dart';

class DealsPage extends StatelessWidget {
  const DealsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: FromLTRB.getEgdeInsets(0, 0, 0, 30),
                height: getUniqueHeight(236),
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("https://source.unsplash.com/random"),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: FromLTRB.getEgdeInsets(40, 37, 40, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Special Deals",
                        style: googleFonts(32, FontWeight.w700,
                            color: constColor.kWhite),
                      ),
                      Text(
                        "Nov 12 - 24",
                        style: googleFonts(18, FontWeight.w700,
                            color: constColor.kWhite),
                      ),
                      inkwellgredientbutton("Search a room", 60, SizeConfig.screenWidth),
                    ],
                  ),
                ),
              ),
              listtileforDeals(
                  "Please  rate your stay at Venice\nRoyal,Venice ,Italy"),
              divider(1.5, constColor.kOffWhite),
              listtileforDeals(
                  "Please  rate your stay at Venice\nRoyal,Venice ,Italy"),
              divider(1.5, constColor.kOffWhite),
              listtileforDeals(
                  "Please  rate your stay at Venice\nRoyal,Venice ,Italy"),
            ],
          ),
        ),
      ),
    );
  }
}
