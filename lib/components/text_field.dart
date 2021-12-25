import 'import_package.dart';

TextFormField textFormfield(String hint,var controller) {
  return TextFormField(
    style: googleFonts(16, constColor.kGrey, FontWeight.w400),
    decoration: InputDecoration(
      fillColor: constColor.kblackW,
      hintText: hint,
      hintStyle: googleFonts(16, constColor.kGrey, FontWeight.w400),
      border: OutlineInputBorder(
          borderSide: const BorderSide(color: constColor.kblackW),
          borderRadius: BorderRadius.circular(30)),
    ),
  );
}
