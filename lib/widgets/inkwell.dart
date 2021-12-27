import 'package:bookinghotelapp/components/import_package.dart';

Widget getinkwell(Widget child, {var ontap}) {
  return InkWell(
    child: child,
    onTap: () {
      ontap;
    },
  );
}
