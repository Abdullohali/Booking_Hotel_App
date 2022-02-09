import 'package:bookinghotelapp/components/import_package.dart';
import 'package:bookinghotelapp/widgets/divider.dart';
import 'package:bookinghotelapp/widgets/listtile_on_user.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Userpage extends StatelessWidget {
  const Userpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            divider(1, constColor.kOffWhite),
            Padding(
              padding: FromLTRB.getEgdeInsets(18, 11, 0, 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   CircleAvatar(
                      radius: getUniqueHeight(30),
                      backgroundImage:
                          CachedNetworkImageProvider("https://source.unsplash.com/random")),
                  Padding(
                    padding: FromLTRB.getEgdeInsets(28, 0, 0, 0),
                    child: Text(
                      "Jane Doe",
                      style: googleFonts(22, FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            divider(1, constColor.kGreyLight),
            userListtile(
              "Your favourites",
              SvgPicture.asset(Iconspath.fvorits, color: constColor.kpink),
            ),
            userListtile(
              "Payment",
              SvgPicture.asset(Iconspath.payment, color: constColor.kpink),
            ),
            userListtile(
              "Help",
              SvgPicture.asset(Iconspath.help, color: constColor.kpink),
            ),
            userListtile(
              "Promotions",
              SvgPicture.asset(Iconspath.promotions, color: constColor.kpink),
            ),
            userListtile(
              "Settings",
              SvgPicture.asset(Iconspath.setting, color: constColor.kpink),
            ),
          ],
        ),
      ),
    );
  }

  
}
