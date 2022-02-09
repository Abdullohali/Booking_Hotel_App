import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/components/string_list.dart';
import 'package:bookinghotelapp/components/types.dart';
import 'package:bookinghotelapp/screen/deals/deals_page.dart';
import 'package:bookinghotelapp/screen/hotellist/hotel_list_page.dart';
import 'package:bookinghotelapp/widgets/buttons.dart';
import 'package:bookinghotelapp/widgets/listview_bookinone.dart';
import 'package:bookinghotelapp/widgets/simple_text.dart';
import 'package:bookinghotelapp/widgets/steppers.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CompletPage extends StatefulWidget {
  const CompletPage({Key? key}) : super(key: key);

  @override
  State<CompletPage> createState() => _CompletPageState();
}

class _CompletPageState extends State<CompletPage> {
  void initState() {
    Types.activeStep = 2;

    super.initState();
  }

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
            Types.activeStep = 1;

          },
        ),
        centerTitle: true,
        title: Text(
          "Reservation",
          style: googleFonts(28, FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: FromLTRB.getEgdeInsets(20, 0, 20, 0),
          child: Column(
            children: [
              steppers.iconstepper(),
              Container(
                padding: FromLTRB.getEgdeInsets(15, 140, 18, 0),
                margin: FromLTRB.getEgdeInsets(0, 40, 0, 13),
                height: getUniqueHeight(198),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: CachedNetworkImageProvider("https://source.unsplash.com/random"),
                      fit: BoxFit.cover),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mountain Resort",
                      style: googleFonts(22, FontWeight.w700,
                          color: constColor.kWhite),
                    ),
                    starcontainer("5.0"),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: getUniqueHeight(170),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    simpletextforcomplete("2 people"),
                    simpletextforcomplete("Standart King Room"),
                    simpletextforcomplete("2 Nights"),
                    simpletextforcomplete("Jan 18 2022to Jan 20 2022"),
                  ],
                ),
              ),
              Container(
                margin: FromLTRB.getEgdeInsets(0, 36, 0, 0),
                height: getUniqueHeight(47),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$1350 USD",
                      style: googleFonts(36, FontWeight.w700),
                    ),
                    SvgPicture.asset(Iconspath.check),
                  ],
                ),
              ),
              InkWell(
                child: inkwellgredientbutton(
                    "Complete", 70, SizeConfig.screenWidth),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const HotelList())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
