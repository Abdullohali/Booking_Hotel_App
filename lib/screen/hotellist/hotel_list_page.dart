import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/widgets/texformfields.dart';

class HotelList extends StatelessWidget {
  const HotelList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: FromLTRB.getEgdeInsets(18, 29, 18,33),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: constColor.kOffWhite.withOpacity(0.6)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusColor: constColor.kgrey,
                    hintText: "Search for city",
                    hintStyle: googleFonts(16, FontWeight.w400,
                        color: constColor.kGrey),
                    prefixIcon: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: constColor.kGrey,
                      ),
                      onPressed: () {},
                    )),
              ),
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
                )
          ],
        ),
      ),
    );
  }
}
