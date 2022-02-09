import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/components/string_list.dart';
import 'package:bookinghotelapp/screen/reservation/reservation.dart';
import 'package:bookinghotelapp/widgets/buttons.dart';
import 'package:cached_network_image/cached_network_image.dart';

class RegisterOne extends StatelessWidget {
  const RegisterOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: constColor.kgrey,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: constColor.kBlacText,
          ),
          onPressed: () {
                            Navigator.pop(context);

          },
        ),
        centerTitle: true,
        title: Text(
          "Mountain Resort",
          style: googleFonts(28, FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: getUniqueHeight(1100),
              child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemBuilder: (_, __) => Container(
                  height: getUniqueHeight(500),
                  margin: FromLTRB.getEgdeInsets(0, 20, 0, 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: constColor.kWhite),
                  child: Column(
                    children: [
                      Container(
                        height: getUniqueHeight(185),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(30),
                          ),
                          image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                  "https://source.unsplash.com/random"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Padding(
                        padding: FromLTRB.getEgdeInsets(20, 18, 20, 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Standard King Room",
                              style: googleFonts(22, FontWeight.w700,
                                  color: constColor.kBlacText),
                            ),
                            Image.asset("assets/images/Pricing.png")
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: FromLTRB.getEgdeInsets(0, 0, 200, 0),
                        height: getUniqueHeight(150),
                        width: getUniqueWidth(210),
                        child: ListView.builder(
                          itemBuilder: (_, __) => ListTile(
                            title: Text(
                              strings.stringList[__],
                              style: googleFonts(14, FontWeight.w400,
                                  color: constColor.kGreyDark),
                            ),
                            leading: SvgPicture.asset(Iconspath.pathicon[__]),
                          ),
                          itemCount: strings.stringList.length,
                        ),
                      ),
                      Padding(
                        padding: FromLTRB.getEgdeInsets(20, 0, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: getUniqueHeight(90),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "\$ 1480",
                                    style: googleFonts(22, FontWeight.w600,
                                        color: constColor.kBlacText),
                                  ),
                                  Text(
                                    "2 nights",
                                    style: googleFonts(12, FontWeight.w400,
                                        color: constColor.kBlacText),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                              child: inkwellgredientbutton("Select", 60, 185),
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const ReservationPage())),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                itemCount: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
