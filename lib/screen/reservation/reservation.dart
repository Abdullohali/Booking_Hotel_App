import 'package:bookinghotelapp/components/controllers.dart';
import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/screen/payment/payment_page.dart';
import 'package:bookinghotelapp/widgets/buttons.dart';
import 'package:bookinghotelapp/widgets/icon_stepper.dart';
import 'package:bookinghotelapp/widgets/steppers.dart';
import 'package:bookinghotelapp/widgets/texformfields.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/route_manager.dart';
import 'package:im_stepper/stepper.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({Key? key}) : super(key: key);

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: constColor.kgrey,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            // color: constColor.kBlacText,
          ),
          onPressed: () {
                            Navigator.pop(context);

          },
        ),
        centerTitle: true,
        title: Text(
          "Reservation",
          style: googleFonts(28, FontWeight.w700,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              steppers.iconstepper(),
              Form(
                  child: Column(
                children: [
                  textformfield("First Name", Controllers.namecontroller),
                  textformfield("Last Name", Controllers.lastNamecontroller),
                  textformfield("Email Addres", Controllers.emailcontroller),
                  textformfield("Addres", Controllers.adresscontroller),
                  textformfield("Post Code", Controllers.postCodecontroller),
                  textformfield("Country", Controllers.countrycontroller),
                  textformfield("Mobile Phone", Controllers.phonecontroller),
                ],
              )),
              InkWell(
                child:
                    inkwellgredientbutton("Go to Payment", 70, SizeConfig.screenWidth),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const PaymentPage())),
              )
            ],
          ),
        ),
      ),
    );
  }
}
