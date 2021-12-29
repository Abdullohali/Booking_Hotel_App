  import 'package:bookinghotelapp/components/import_package.dart';

InkWell inkwellgredientbutton(String txt,double height,double width) {
    return InkWell(
                            child: Container(
                              alignment: Alignment.center,
                              margin: FromLTRB.getEgdeInsets(0, 38, 0, 0),
                              height: getUniqueHeight(height),
                              width: getUniqueWidth(width),
                              decoration: BoxDecoration(
                                gradient: constColor.kOrangeGradient,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text(
                                txt,
                                style: googleFonts(
                                    24, FontWeight.w800,color:  constColor.kWhite,),
                              ),
                            ),
                          );
  }