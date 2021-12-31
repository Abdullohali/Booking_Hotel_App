
import 'package:bookinghotelapp/components/controllers.dart';
import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/components/types.dart';
import 'package:bookinghotelapp/provider/stepper_provider.dart';
import 'package:bookinghotelapp/widgets/buttons.dart';
import 'package:bookinghotelapp/widgets/steppers.dart';
import 'package:bookinghotelapp/widgets/texformfields.dart';
import 'package:im_stepper/stepper.dart';
import 'package:provider/provider.dart';
import '../../widgets/icon_stepper.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
          steppers.iconstepper(),
            Container(
              margin: FromLTRB.getEgdeInsets(18, 40, 18, 0),
              height: getUniqueHeight(198),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: constColor.kOrangeGradient),
              child: Padding(
                padding: FromLTRB.getEgdeInsets(25, 20, 18, 27),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(Iconspath.code),
                        SvgPicture.asset(Iconspath.visa),
                      ],
                    ),
                    Padding(
                      padding: FromLTRB.getEgdeInsets(0, 45, 0, 9),
                      child: Text(
                        "1245 3442 5244 5125",
                        style: googleFonts(24, FontWeight.w600,
                            color: constColor.kWhite),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Mark Doe",
                          style: googleFonts(24, FontWeight.w600,
                              color: constColor.kWhite),
                        ),
                        Text(
                          "00/00",
                          style: googleFonts(24, FontWeight.w600,
                              color: constColor.kWhite),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            textformfield("Card Number", Controllers.cardcontroller),
            Row(
              children: [
                Expanded(
                    child:
                        textformfield("Expiry", Controllers.expirycontroller)),
                Expanded(
                    child: textformfield("CVV", Controllers.cvvcontroller)),
              ],
            ),
            textformfield("Name", Controllers.cardcontroller),
            Padding(
              padding: FromLTRB.getEgdeInsets(10, 20, 0, 0),
              child: Row(
                children: [
                  Checkbox(
                    value: Types.value,
                    onChanged: (e) {
                      setState(() {
                        Types.value = e!;
                      });
                    },
                    checkColor: constColor.kpink,
                    activeColor: constColor.kgreyIcon,
                  ),
                  Text(
                    "Save this credit card",
                    style: googleFonts(14, FontWeight.w400,
                        color: constColor.kGrey),
                  )
                ],
              ),
            ),
            inkwellgredientbutton("Go to Confirmation", 70, double.infinity),
          ],
        ),
      ),
    );
  }
}
