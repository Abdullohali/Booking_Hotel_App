import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/screen/registerOne/register_one.dart';
import 'package:bookinghotelapp/widgets/buttons.dart';
import 'package:bookinghotelapp/widgets/listview_bookinone.dart';

class SelectRoom extends StatelessWidget {
  const SelectRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: getUniqueHeight(256),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://source.unsplash.com/random"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: FromLTRB.getEgdeInsets(20, 40, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: SvgPicture.asset(Iconspath.left),
                    ),
                    InkWell(
                      child: SvgPicture.asset(Iconspath.favorite),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: getUniqueHeight(90),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, __) => Container(
                  height: getUniqueHeight(90),
                  width: getUniqueWidth(150),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://source.unsplash.com/1600x900/?hotel/$__"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                itemCount: 3,
              ),
            ),
            Padding(
              padding: FromLTRB.getEgdeInsets(20, 25, 20, 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mountain Resort",
                    style: googleFonts(28, FontWeight.w700),
                  ),
                  starcontainer("4.5"),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: getUniqueHeight(163),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/map2.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: getUniqueHeight(60),
                  left: getUniqueWidth(60),
                  child: Container(
                    alignment: Alignment.center,
                    height: getUniqueHeight(41),
                    width: getUniqueWidth(41),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: constColor.kOrangeGradient),
                    child: SvgPicture.asset(Iconspath.square),
                  ),
                ),
              ],
            ),
            Padding(
              padding: FromLTRB.getEgdeInsets(20, 33, 0, 0),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: FromLTRB.getEgdeInsets(0, 0, 13, 13),
                            color: constColor.kGreyLight,
                            alignment: Alignment.center,
                            height: getUniqueHeight(38),
                            width: getUniqueWidth(38),
                            child: SvgPicture.asset(
                              Iconspath.person,
                              color: constColor.kpink,
                            ),
                          ),
                          Text(
                            "Waikiki ,Honoulu,4565433",
                            style: googleFonts(16, FontWeight.w600,
                                color: constColor.kGreyDark),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: FromLTRB.getEgdeInsets(0, 0, 13, 0),
                            color: constColor.kGreyLight,
                            alignment: Alignment.center,
                            height: getUniqueHeight(38),
                            width: getUniqueWidth(38),
                            child: SvgPicture.asset(
                              Iconspath.location,
                              color: constColor.kpink,
                            ),
                          ),
                          Text(
                            "From Center",
                            style: googleFonts(16, FontWeight.w600,
                                color: constColor.kGreyDark),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              child: inkwellgredientbutton("Select Rooms", 70, 338),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const RegisterOne())),
            )
          ],
        ),
      ),
    );
  }
}
