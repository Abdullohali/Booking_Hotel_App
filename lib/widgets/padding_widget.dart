import 'package:bookinghotelapp/components/import_package.dart';

Widget getpadding(
    List<double>? padd, Widget child) {
  return Padding(
    padding: FromLTRB.getEgdeInsets(padd![0], padd[1], padd[2], padd[3]),
    child: child,
  );
}
