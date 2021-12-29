import 'import_package.dart';

class DropDown {
  static String selectValue = "Guests";
  static String selectValue2 = "Night";
  static List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem(child: Text("Guests"), value: "Guests"),
      DropdownMenuItem(child: Text("One"), value: "One"),
      DropdownMenuItem(child: Text("Family"), value: "Family"),
      DropdownMenuItem(child: Text("Couple"), value: "Couple"),
    ];
    return menuItems;
  }
  static List<DropdownMenuItem<String>> get dropdownItems2 {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem(child: Text("Night"), value: "Night"),
      DropdownMenuItem(child: Text("Day"), value: "Day"),
      DropdownMenuItem(child: Text("Week"), value: "Week"),
      DropdownMenuItem(child: Text("Month"), value: "Month"),
    ];
    return menuItems;
  }

  static DropdownButtonFormField<String> dropdownButton(var items,var Selectvalue) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
      elevation: 10,
      style: GoogleFonts.nunito(
          fontSize: getUniqueHeight(12),
          fontWeight: FontWeight.bold,
          color: constColor.kGrey),
      value: Selectvalue,
      dropdownColor: constColor.kBlack19,
      items: items,
      onChanged: (String? value) {},
    );
  }
}
