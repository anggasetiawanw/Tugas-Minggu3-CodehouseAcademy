import 'package:flutter/material.dart';
import 'package:photoapps/shared/theme.dart';
import 'package:photoapps/widget/card_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 54,
                  width: 54,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/photo1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "Hi, Angga",
                    style: textStyle3.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Icon(Icons.notifications),
              ],
            ),
            SizedBox(height: 12),
            Text(
              "Welcome To",
              style: textStyle3.copyWith(fontWeight: medium),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Our PhotogrApps",
                style: textStyle3.copyWith(fontWeight: medium),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Newest Photo",
              style: textStyle3.copyWith(fontSize: 12),
            )
          ],
        ),
      );
    }

    Widget body() {
      return Container(
        margin: EdgeInsets.only(top: 4),
        child: Column(
          children: [
            CardTile(
              imagePhotoUrl: "assets/photo2.png",
              imageUrl: "assets/gambar1.png",
              name: "Derek Drymon",
              subtitle: "Nature Photographer",
              countLike: "106",
            ),
            CardTile(
              imagePhotoUrl: "assets/photo3.png",
              imageUrl: "assets/gambar2.png",
              name: "Dave Simmon",
              subtitle: "Freelancer",
              countLike: "88",
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 18),
        child: ListView(
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}
