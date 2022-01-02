import 'package:bookinghotelapp/components/controllers.dart';
import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/provider/texfield_provider.dart';

ListTile listtileformapandbooking() {
    return ListTile(
              title: Text(
                  "${Controllers.placeController.text},${Controllers.dateController.text}"),
              trailing: IconButton(
                icon: const Icon(Icons.arrow_drop_down),
                onPressed: () {},
              ),
            );
  }