import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/models/hote_model.dart';
import 'package:bookinghotelapp/screen/selectromm/select_room.dart';
import 'package:bookinghotelapp/service/fetch_model.dart';
import 'package:bookinghotelapp/widgets/inkwell.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

listviewbookone1(context) {
  return FutureBuilder(
      future: HotelService().getHotel(),
      builder: (context, AsyncSnapshot<List<HotelModel>> snap) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, __) {
              return InkWell(
                child: Stack(
                  children: [
                    Container(
                      margin: FromLTRB.getEgdeInsets(5, 21, 19, 0),
                      height: getUniqueHeight(117),
                      width: getUniqueWidth(197),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(getUniqueWidth(30)),
                        image: DecorationImage(
                            image: CachedNetworkImageProvider(
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
                          snap.data![__].name.toString(),
                          style: googleFonts(16, FontWeight.w700,
                              color: constColor.kWhite),
                        ))
                  ],
                ),
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SelectRoom())),
              );
            });
      });
}

listviewbuilder2(context) {
  return FutureBuilder(
      future: HotelService().getHotel(),
      builder: (context, AsyncSnapshot<List<HotelModel>> snap) {
        return ListView.builder(
          itemBuilder: (_, __) {
            return InkWell(
              child: Container(
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
                            image: CachedNetworkImageProvider(
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
                              snap.data![__].name.toString(),
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
                            snap.data![__].address!.city.toString(),
                            style: googleFonts(15, FontWeight.w600,
                                color: constColor.kgrey),
                          ),
                          Text(
                            snap.data![__].address!.street.toString(),
                            style: googleFonts(14, FontWeight.w600,
                                color: constColor.kBlack),
                          ),
                          Text(
                            snap.data![__].address!.suite.toString(),
                            style: googleFonts(14, FontWeight.w600,
                                color: constColor.kBlack),
                          ),
                          Padding(
                            padding: FromLTRB.getEgdeInsets(240, 0, 15, 0),
                            child: Text(
                              "\$" +
                                  snap.data![__].address!.zipcode!.toString(),
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
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SelectRoom())),
            );
          },
          itemCount: snap.data!.length,
        );
      });
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
