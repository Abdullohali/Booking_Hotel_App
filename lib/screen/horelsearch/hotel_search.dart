import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/widgets/inkwell.dart';
import 'package:bookinghotelapp/widgets/lisormap.dart';
import 'package:bookinghotelapp/widgets/listview_bookinone.dart';
import 'package:bookinghotelapp/widgets/padding_widget.dart';
import 'package:bookinghotelapp/widgets/search_text_field.dart';

class HotelSearcch extends StatelessWidget {
  const HotelSearcch({Key? key}) : super(key: key);

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
                child: searchtextfield(),
              ),
              listorMap(context, "Map"),
               Container(
                margin: FromLTRB.getEgdeInsets(0, 39, 0, 0),
                height: getUniqueHeight(647),
                width: double.infinity,
                child: listviewbuilder2(),
              )
            ],
          ),
        ),
      ),
    );
  }


  
}
