import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/widgets/inkwell.dart';
import 'package:bookinghotelapp/widgets/padding_widget.dart';

Container listorMap(BuildContext context,String soz) {
    return Container(
              height: getUniqueHeight(52),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: constColor.kOffWhite, width: 2.0)),
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
                        soz,
                        style: googleFonts(16, FontWeight.w400,
                            color: constColor.kgreyIcon),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Scaffold()));
                      },
                    ),
                  ),
                ],
              ),
            );
  }