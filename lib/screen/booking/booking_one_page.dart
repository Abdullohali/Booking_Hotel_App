import 'package:bookinghotelapp/provider/texfield_provider.dart';

import '../../components/import_package.dart';

class BookingOne extends StatelessWidget {
  const BookingOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: getUniqueHeight(55),
              width: getUniqueWidth(375),
              child: ListTile(
                title: Text(
                    "${TexfieldProvider.placeController.text},${TexfieldProvider.dateController.text}"),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_drop_down),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
