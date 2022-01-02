import 'package:bookinghotelapp/screen/selectromm/select_room.dart';

import 'import_package.dart';

ListView lisviewbuilder(double height, double width, double mLeft, double mTop,
    double mRight, double mBottom, String img) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return InkWell(
        child: Container(
          margin: FromLTRB.getEgdeInsets(mLeft, mTop, mRight, mBottom),
          height: getUniqueHeight(height),
          width: getUniqueWidth(width),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: NetworkImage("$img$index"), fit: BoxFit.cover),
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
                                  style: googleFonts(12, FontWeight.w600,
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
}
