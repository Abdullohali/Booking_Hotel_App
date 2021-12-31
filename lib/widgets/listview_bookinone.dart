import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/widgets/inkwell.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

ListView listviewbookone1() {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, __) {
        return Stack(
          children: [
            Container(
              margin: FromLTRB.getEgdeInsets(5, 21, 19, 0),
              height: getUniqueHeight(117),
              width: getUniqueWidth(197),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(getUniqueWidth(30)),
                image: DecorationImage(
                    image: NetworkImage(
                      "https://source.unsplash.com/1600x900/?hotel/$__",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 12,
              left: 130,
              child: starcontainer("4.5"),
            ),
            Positioned(
                top: 100,
                left: 10,
                child: Text(
                  "Mountain Resort",
                  style: googleFonts(16, FontWeight.w700,
                      color: constColor.kWhite),
                ))
          ],
        );
      });
}

ListView listviewbuilder2() {
  return ListView.builder(
    itemBuilder: (_, __) {
      return getinkwell(
        Container(
          height: getUniqueHeight(289),
          width: getUniqueWidth(338),
          margin: FromLTRB.getEgdeInsets(18, 43, 18, 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: constColor.kWhite),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  color: Colors.black,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://source.unsplash.com/1600x900/?hotel/$__"),
                      fit: BoxFit.cover),
                ),
                height: getUniqueHeight(180),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: FromLTRB.getEgdeInsets(16, 120, 0, 0),
                      child: Text(
                        "Mountain Resort",
                        style: googleFonts(22, FontWeight.w700,
                            color: constColor.kWhite),
                      ),
                    ),
                    Padding(
                      padding: FromLTRB.getEgdeInsets(0, 11, 17, 17),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(Iconspath.favorite),
                          starcontainer("4.5"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 200,
                left: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Waikiki,5.5km from center",
                      style: googleFonts(15, FontWeight.w600,
                          color: constColor.kgrey),
                    ),
                    Text(
                      "Ocean View 1 king bed\nNo prepayment",
                      style: googleFonts(14, FontWeight.w600,
                          color: constColor.kBlack),
                    ),
                    Padding(
                      padding: FromLTRB.getEgdeInsets(275, 0, 15, 0),
                      child: Text(
                        "\$ 820",
                        style: googleFonts(24, FontWeight.w800,
                            color: constColor.kgreydollar),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}

Container starcontainer(String number) {
  return Container(
    height: getUniqueHeight(23),
    width: getUniqueWidth(50),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient: constColor.kOrangeGradient),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          number,
          style: googleFonts(12, FontWeight.w800, color: constColor.kWhite),
        ),
        const Icon(
          Icons.star,
          color: constColor.kWhite,
          size: 20,
        ),
      ],
    ),
  );
}
