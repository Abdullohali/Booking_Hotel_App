import 'package:bookinghotelapp/models/hote_model.dart';
import 'package:bookinghotelapp/screen/selectromm/select_room.dart';
import 'package:bookinghotelapp/service/fetch_model.dart';

import 'import_package.dart';

class LisviewPage extends StatelessWidget {
  const LisviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: HotelService().getHotel(),
        builder: (context,AsyncSnapshot<List<Hotel>> snap) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                child: Container(
                  margin: FromLTRB.getEgdeInsets(
                    0,
                    0,
                    20,
                    0,
                  ),
                  height: getUniqueHeight(getUniqueHeight(185)),
                  width: getUniqueWidth(getUniqueWidth(350)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage(snap.data![index].img.toString()), fit: BoxFit.cover),
                  ),
                  child: Padding(
                    padding: FromLTRB.getEgdeInsets(15, 122, 0, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lux Hotel with a Pool",
                          style: googleFonts(18, FontWeight.w700,
                              color: constColor.kWhite),
                        ),
                        Row(
                          children: [
                            Text(
                              "Dubai",
                              style: googleFonts(14, FontWeight.w400,
                                  color: constColor.kWhite),
                            ),
                            Padding(
                              padding: FromLTRB.getEgdeInsets(150, 0, 0, 0),
                              child: Row(
                                children: [
                                  Text(
                                    "\$700~",
                                    style: googleFonts(12, FontWeight.w600,
                                        color: constColor.kWhite),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          "4.5",
                                          style: googleFonts(
                                              12, FontWeight.w600,
                                              color: constColor.kWhite),
                                        ),
                                        SvgPicture.asset(Iconspath.star)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SelectRoom(),
                  ),
                ),
              );
            },
            itemCount: 10,
          );
        });
  }
}
