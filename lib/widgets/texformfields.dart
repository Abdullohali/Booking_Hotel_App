 import 'package:bookinghotelapp/components/import_package.dart';

Padding textformfield(String hint,TextEditingController controller,{var onchanged,TextInputType? types}) {
    return Padding(
      padding: FromLTRB.getEgdeInsets(0, 20, 0, 0),
      child: TextFormField(
        onChanged: (e){
          onchanged;
        },
        controller: controller,
        keyboardType: types,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: constColor.kOffWhite.withOpacity(0.6)),
              borderRadius: BorderRadius.circular(30),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            focusColor: constColor.kgrey,
            hintText: hint,
            hintStyle:
                googleFonts(16, FontWeight.w400, color: constColor.kGreyDark)),
      ),
    );
  }