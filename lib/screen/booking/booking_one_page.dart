import 'package:bookinghotelapp/provider/texfield_provider.dart';
import 'package:bookinghotelapp/widgets/inkwell.dart';
import 'package:bookinghotelapp/widgets/padding_widget.dart';

import '../../components/import_package.dart';

class BookingOne extends StatelessWidget {
  const BookingOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // backgroundColor: constColor.kgrey,
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text(
                  "${TexfieldProvider.placeController.text},${TexfieldProvider.dateController.text}"),
              trailing: IconButton(
                icon: const Icon(Icons.arrow_drop_down),
                onPressed: () {},
              ),
            ),
            Container(
              height: getUniqueHeight(50),
              child: Row(
                children: [
                  getinkwell(
                    getpadding(
                      [18, 0, 0, 0],
                      SvgPicture.asset(
                        Iconspath.filter,
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
                            16, constColor.kgreyIcon, FontWeight.w400),
                      ),
                    ),
                  ),
                  getinkwell(
                    getpadding(
                      [300, 0, 0, 0],
                      Text(
                        "Map",
                        style: googleFonts(
                            16, constColor.kgreyIcon, FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
