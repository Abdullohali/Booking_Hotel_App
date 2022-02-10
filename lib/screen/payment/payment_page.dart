import 'package:bookinghotelapp/components/controllers.dart';
import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/components/types.dart';
import 'package:bookinghotelapp/core/cubit/textfield_cubit.dart';
import 'package:bookinghotelapp/screen/complete/complete_page.dart';
import 'package:bookinghotelapp/widgets/buttons.dart';
import 'package:bookinghotelapp/widgets/steppers.dart';
import 'package:bookinghotelapp/widgets/texformfields.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return BlocProvider(
      create: (_) => TextfieldCubit(),
      child: BlocBuilder<TextfieldCubit, TextfieldState>(
          builder: (context, state) {
        var _context = context.read<TextfieldCubit>();

        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            // backgroundColor: constColor.kgrey,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: constColor.kBlacText,
              ),
              onPressed: () {
                Navigator.pop(context);
                Types.activeStep = 0;
              },
            ),
            centerTitle: true,
            title: Text(
              "Reservation",
              style: googleFonts(
                28,
                FontWeight.w700,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: FromLTRB.getEgdeInsets(19, 0, 17, 30),
              child: Column(
                children: [
                  steppers.iconstepper(),
                  Container(
                    margin: FromLTRB.getEgdeInsets(0, 40, 0, 0),
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
                            padding: FromLTRB.getEgdeInsets(0, 45, 0, 7),
                            child: Text(
                              Controllers.cardcontroller.text.isEmpty
                                  ? "1245 3442 5244 5125"
                                  : Controllers.cardcontroller.text,
                              style: googleFonts(24, FontWeight.w600,
                                  color: constColor.kWhite),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                Controllers.cardnamecontroller.text.isEmpty
                                    ? "Mark Doe"
                                    : Controllers.cardnamecontroller.text,
                                style: googleFonts(24, FontWeight.w600,
                                    color: constColor.kWhite),
                              ),
                              Text(
                                Controllers.expirycontroller.text.isEmpty
                                    ? "00/00"
                                    : Controllers.expirycontroller.text,
                                style: googleFonts(24, FontWeight.w600,
                                    color: constColor.kWhite),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  textformfield("Card Number", Controllers.cardcontroller,
                      onchanged: _context.emitlash(),types: TextInputType.numberWithOptions()),
                  Row(
                    children: [
                      Expanded(
                          child: textformfield(
                              "Expiry", Controllers.expirycontroller)),
                      Expanded(
                          child:
                              textformfield("CVV", Controllers.cvvcontroller)),
                    ],
                  ),
                  textformfield("Name", Controllers.cardnamecontroller),
                  Padding(
                    padding: FromLTRB.getEgdeInsets(0, 20, 0, 0),
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
                  InkWell(
                    child: inkwellgredientbutton(
                        "Go to Confirmation", 70, double.infinity),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const CompletPage()));
                      Types.activeStep = 2;
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
