import 'package:bookinghotelapp/components/hotel_formula.dart';
import 'package:bookinghotelapp/models/hote_model.dart';
import 'package:bookinghotelapp/provider/texfield_provider.dart';
import 'package:bookinghotelapp/screen/googlemap/map.page.dart';
import 'package:bookinghotelapp/widgets/inkwell.dart';
import 'package:bookinghotelapp/widgets/listtile_booking.dart';
import 'package:bookinghotelapp/widgets/listview_bookinone.dart';
import 'package:bookinghotelapp/widgets/padding_widget.dart';
import 'package:bookinghotelapp/widgets/progress_indicator.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../../components/import_package.dart';

class BookingOne extends StatelessWidget {
  const BookingOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // backgroundColor: constColor.kgrey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
             listtileformapandbooking(),
              Container(
                height: getUniqueHeight(50),
                child: Row(
                  children: [
                    getinkwell(
                      getpadding(
                        [18, 0, 0, 0],
                        SvgPicture.asset(
                          Iconspath.favorite,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    getinkwell(
                      getpadding(
                        [6, 0, 0, 0],
                        Text(
                          "Filter",
                          style: googleFonts(
                            16,
                            FontWeight.w400,
                            color: constColor.kgreyIcon,
                          ),
                        ),
                      ),
                    ),
                    getpadding(
                      [300, 0, 0, 0],
                      InkWell(
                        child: Text(
                          "Map",
                          style: googleFonts(16, FontWeight.w400,
                              color: constColor.kgreyIcon),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MapPage()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              getpadding(
                [19, 38, 186, 0],
                Text("Near the beaches",
                    style: googleFonts(22, FontWeight.w700)),
              ),
              Container(
                height: getUniqueHeight(159),
                width: getUniqueWidth(413),
                child: listviewbookone1(),
              ),
              Container(
                margin: FromLTRB.getEgdeInsets(0, 39, 0, 0),
                height: getUniqueHeight(647),
                width: double.infinity,
                color: constColor.kBlack19,
                child: listviewbuilder2(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
