import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/screen/filter/filter_page.dart';
import 'package:bookinghotelapp/widgets/inkwell.dart';
import 'package:bookinghotelapp/widgets/listtile_booking.dart';
import 'package:bookinghotelapp/widgets/listview_bookinone.dart';
import 'package:bookinghotelapp/widgets/padding_widget.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              listtileformapandbooking(),
              SizedBox(
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
                    InkWell(
                      child: getpadding(
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
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const FilterPage()),
                      ),
                    ),
                    getpadding(
                      [230, 0, 0, 0],
                      InkWell(
                        child: Text(
                          "List view",
                          style: googleFonts(16, FontWeight.w400,
                              color: constColor.kgreyIcon),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: getUniqueHeight(581),
                    width: getUniqueWidth(1092),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/map.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    top: 420,
                    child: SizedBox(
                      child: listviewbookone1(context),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
