import 'package:bookinghotelapp/components/controllers.dart';
import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/widgets/buttons.dart';
import 'package:bookinghotelapp/widgets/icon_stepper.dart';
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
  int activeStep = 0;
  // Initial step set to 5.
  int upperBound = 3;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: constColor.kgrey,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: constColor.kBlacText,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          "Reservation",
          style: googleFonts(28, FontWeight.w700, color: constColor.kBlacText),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              iconstepper(),
              Form(
                  child: Column(
                children: [
                  textformfield("First Name",Controllers.namecontroller),
                  textformfield("Last Name",Controllers.lastNamecontroller),
                  textformfield("Email Addres",Controllers.emailcontroller),
                  textformfield("Addres",Controllers.adresscontroller),
                  textformfield("Post Code",Controllers.postCodecontroller),
                  textformfield("Country",Controllers.countrycontroller),
                  textformfield("Mobile Phone",Controllers.phonecontroller),
                ],
              )),
              inkwellgredientbutton("Go to Payment", 70, 338)
            ],
          ),
        ),
      ),
    );
  }


  IconStepper iconstepper() {
    return IconStepper(
      enableNextPreviousButtons: false,
      lineLength: 20,
      activeStepColor: constColor.kgrey,
      activeStepBorderColor: constColor.kOffWhite,
      stepColor: constColor.kgrey,
      lineColor: constColor.kGreyDark,
      scrollingDisabled: false,
      // enableStepTapping: false,
      lineDotRadius: 0.6,
      icons: stepper.iconlist(activeStep),
      activeStep: activeStep,
      onStepReached: (index) {
        setState(() {
          activeStep = index;
        });
      },
    );
  }
}
