import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

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
        builder: (context, AsyncSnapshot<List<HotelModel>> snap) {
          if (snap.hasData) {
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
                    // height: getUniqueHeight(getUniqueHeight(75)),
                    // width: getUniqueWidth(getUniqueWidth(300)),
                    decoration: BoxDecoration(
                      color: constColor.kWhite,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(
                          "https://source.unsplash.com/1600x900/?hotel/$index",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: FromLTRB.getEgdeInsets(15, 122, 0, 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            snap.data![index].name.toString(),
                            style: googleFonts(18, FontWeight.w700,
                                color: constColor.kWhite),
                          ),
                          Row(
                            children: [
                              Text(
                                snap.data![index].address!.city.toString(),
                                style: googleFonts(14, FontWeight.w400,
                                    color: constColor.kWhite),
                              ),
                              Padding(
                                padding: FromLTRB.getEgdeInsets(100, 0, 0, 0),
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
                                            snap.data![index].id.toString(),
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
                      builder: (_) => SelectRoom(
                        index: index,
                      ),
                    ),
                  ),
                );
              },
              itemCount: 10,
            );
          } else if (snap.hasError) {
            return const Center(
              child: Text("Error"),
            );
          } else {
            return Center(
              child: Platform.isAndroid
                  ? const CircularProgressIndicator()
                  : const CupertinoActivityIndicator(),
            );
          }
        });
  }
}
