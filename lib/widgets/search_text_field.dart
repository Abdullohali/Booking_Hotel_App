import 'package:bookinghotelapp/components/controllers.dart';
import 'package:bookinghotelapp/components/import_package.dart';

TextFormField searchtextfield() {
  return TextFormField(
    controller: Controllers.searchcontroller,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: constColor.kOffWhite.withOpacity(0.6)),
        borderRadius: BorderRadius.circular(30),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      focusColor: constColor.kgrey,
      hintText: "Search for city",
      hintStyle: googleFonts(16, FontWeight.w400, color: constColor.kGrey),
      prefixIcon: IconButton(
        icon: const Icon(
          Icons.search,
          color: constColor.kGrey,
        ),
        onPressed: () {},
      ),
      suffixIcon: IconButton(
        icon: const Icon(
          Icons.clear,
          color: constColor.kGrey,
        ),
        onPressed: () {},
      ),
    ),
  );
}
