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
                  child: searchtextfield()),
              Container(
                color: constColor.kBlacText,
                height: getUniqueHeight(302),
                width: double.infinity,
                child: const LisviewPage(),
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
                child: LisviewPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
