 import 'package:bookinghotelapp/components/import_package.dart';

ListTile listtileforfilter(String title,{String? trailing}) {
    return ListTile(
              title: Text(
                title,
                style: googleFonts(20, FontWeight.w600),
              ),trailing
              : Wrap(
                spacing: 12,
                children: [
                  Text(
                    trailing ?? "Select",
                    style: googleFonts(20, FontWeight.w400,
                        color: constColor.kGreyDark),
                  ),
                  const Icon(Icons.arrow_forward_ios)
                ],
              ),
            );
  }
   SwitchListTile switchlisttile(String title,bool value) {
    return SwitchListTile(
              value: value,
              onChanged: (e) {
                value = e;
              },
              title: Text(title,style: googleFonts(20, FontWeight.w600),),
            );
  }