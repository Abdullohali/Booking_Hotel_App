import 'package:bookinghotelapp/components/controllers.dart';
import 'package:bookinghotelapp/provider/texfield_provider.dart';
import 'package:bookinghotelapp/widgets/buttons.dart';
import 'package:bookinghotelapp/widgets/padding_widget.dart';

import '../../components/import_package.dart';

class HomeOne extends StatelessWidget {
  const HomeOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // backgroundColor: constColor.kWhite,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1.2,
          child: Card(
            color: constColor.kWhite,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: getUniqueHeight(375),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/mainHotel.jpeg",
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    getpadding(
                      [18, 96, 26, 0],
                      Text(
                        "Find place that gives\n you ultimate calm",
                        style: GoogleFonts.nunito(
                            fontSize: getUniqueHeight(36),
                            fontWeight: FontWeight.w400,
                            color: constColor.kWhite),
                      ),
                    ),
                    getpadding(
                      [0, 300, 0, 0],
                      Container(
                        height: getUniqueHeight(304),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(
                              getUniqueWidth(30),
                            ),
                          ),
                          color: constColor.kBlack19,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: getUniqueHeight(55),
                                  width: getUniqueWidth(220),
                                  margin: FromLTRB.getEgdeInsets(16, 42, 18, 0),
                                  child: textFormfield(
                                      "Place", Controllers.placeController),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: -1,
                                        blurRadius: 7,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(50),
                                    color: constColor.kBlack19,
                                  ),
                                  height: getUniqueHeight(55),
                                  width: getUniqueWidth(102),
                                  margin: FromLTRB.getEgdeInsets(18, 42, 10, 0),
                                  child: DropDown.dropdownButton(
                                      DropDown.dropdownItems,
                                      DropDown.selectValue),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: getUniqueHeight(55),
                                  width: getUniqueWidth(220),
                                  margin: FromLTRB.getEgdeInsets(16, 23, 18, 0),
                                  child: textFormfield(
                                      "Date", Controllers.dateController),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: -1,
                                        blurRadius: 7,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(50),
                                    color: constColor.kBlack19,
                                  ),
                                  height: getUniqueHeight(55),
                                  width: getUniqueWidth(102),
                                  margin: FromLTRB.getEgdeInsets(18, 23, 10, 0),
                                  child: DropDown.dropdownButton(
                                      DropDown.dropdownItems2,
                                      DropDown.selectValue2),
                                ),
                              ],
                            ),
                            InkWell(
                              child: inkwellgredientbutton(
                                  "Search a room", 70, 338),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => BookingOne()));
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                getpadding(
                  [21, 35, 207, 0],
                  Text(
                    "Recommended",
                    style: googleFonts(22, FontWeight.w700,
                        color: constColor.kBlacText),
                  ),
                ),
                Container(
                  margin: FromLTRB.getEgdeInsets(20, 20, 0, 0),
                  height: getUniqueHeight(185),
                  width: getUniqueWidth(400),
                  child: lisviewbuilder(
                      getUniqueHeight(185),
                      getUniqueWidth(350),
                      0,
                      0,
                      20,
                      0,
                      "https://source.unsplash.com/1600x900/?hotel/"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
