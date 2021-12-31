import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/widgets/search_text_field.dart';

class HotelList extends StatelessWidget {
  const HotelList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: FromLTRB.getEgdeInsets(18, 29, 18, 33),
                child: searchtextfield()
              ),
              Container(
                color: constColor.kBlacText,
                height: getUniqueHeight(302),
                width: double.infinity,
                child: lisviewbuilder(
                    getUniqueHeight(185),
                    getUniqueWidth(350),
                    18,
                    78,
                    20,
                    39,
                    "https://source.unsplash.com/1600x900/?hotel/"),
              ),
              Padding(
                padding: FromLTRB.getEgdeInsets(0, 20, 299, 0),
                child: Text(
                  "Deals",
                  style: googleFonts(22, FontWeight.w700),
                ),
              ),
              SizedBox(
                height: getUniqueHeight(240),
                width: double.infinity,
                child: lisviewbuilder(
                  getUniqueHeight(185),
                  getUniqueWidth(350),
                  18,
                  18,
                  20,
                  39,
                  "https://source.unsplash.com/1600x900/?hotel/",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
