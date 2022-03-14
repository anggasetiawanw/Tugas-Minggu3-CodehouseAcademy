import 'package:flutter/material.dart';
import 'package:photoapps/shared/theme.dart';
import 'package:photoapps/widget/custom_button.dart';
import 'package:photoapps/widget/menu_account_setting.dart';

import '../../widget/menu_other_info.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 38),
        child: Center(
            child: Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/photo1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "hi, Angga!",
              style: textStyle1,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "+6282218078826",
              style: textStyle1.copyWith(
                fontWeight: bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "anggasetiaw@gmail.com",
              style: textStyle5.copyWith(
                fontWeight: bold,
                fontStyle: FontStyle.italic,
              ),
            )
          ],
        )),
      );
    }

    Widget account() {
      return Container(
        margin: EdgeInsets.only(top: 38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Account", style: textStyle6),
            SizedBox(
              height: 6,
            ),
            MenuItemSetting(
                imageUrl: "assets/icon_account_setting.png",
                title: "Account Setting"),
            MenuItemSetting(
                imageUrl: "assets/icon_account_history.png", title: "History"),
            MenuItemSetting(
                imageUrl: "assets/icon_star.png", title: "Rate This App"),
          ],
        ),
      );
    }

    Widget otherInfo() {
      return Container(
        margin: EdgeInsets.only(top: 18),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Other Info", style: textStyle6),
          SizedBox(
            height: 6,
          ),
          MenuOtherInfo(
            title: "About this Apps",
            subtitle: true,
          ),
          MenuOtherInfo(title: "Privacy Policy"),
          MenuOtherInfo(title: "FAQ"),
          MenuOtherInfo(title: "Terms Of Service"),
        ]),
      );
    }

    return Scaffold(
        body: Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: ListView(
        children: [
          header(),
          account(),
          otherInfo(),
          CustomButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, "/sign-in", (route) => false);
            },
            title: "Logout",
            changeColor: true,
          ),
        ],
      ),
    ));
  }
}
