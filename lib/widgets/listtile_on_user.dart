import 'package:bookinghotelapp/components/import_package.dart';

ListTile userListtile(String title, var leading) {
    return ListTile(
      leading: leading,
      title: Text(
        title,
        style: googleFonts(20, FontWeight.w600),
      ),
    );
  }