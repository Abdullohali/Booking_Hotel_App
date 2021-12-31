import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/widgets/lisormap.dart';
import 'package:bookinghotelapp/widgets/listview_bookinone.dart';
import 'package:bookinghotelapp/widgets/search_text_field.dart';

class SearchMap extends StatelessWidget {
  const SearchMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: FromLTRB.getEgdeInsets(18, 29, 18, 33),
                child: searchtextfield()),
                listorMap(context,"List"),
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
                    child: Container(
                      height: getUniqueHeight(159),
                      width: getUniqueWidth(413),
                      child: listviewbookone1(),
                    ),
                  )
                ],
              )
          ],
        ),
      ),
    ));
  }
}
