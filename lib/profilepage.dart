import 'package:flutter/material.dart';
import 'package:heart2heart_app/myinfo.dart';
import 'package:heart2heart_app/opaqueimage.dart';
import 'package:heart2heart_app/profileinfobigcard.dart';
import 'package:heart2heart_app/profileinfocard.dart';
import 'package:heart2heart_app/superbeats.dart';
import 'package:heart2heart_app/textstyle.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Expanded(
                flex: 4,
                child: Stack(
                  children: <Widget>[
                    OpaqueImage(
                      imageUrl: "images/selfie.jpeg",
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "My Profile",
                                textAlign: TextAlign.left,
                                style: headingTextStyle,
                              ),
                            ),
                            MyInfo(),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.only(top: 50),
                color: Colors.amber.shade50,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        ProfileInfoBigCard(
                          firstText: "10",
                          secondText: "New Heartbeats",
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                          ),
                        ),
                        ProfileInfoBigCard(
                          firstText: "15",
                          secondText: "Current Beats",
                          icon: Icon(
                            Icons.show_chart,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => SuperBeatsPage(),
                              ),
                            );
                          },
                          child: ProfileInfoBigCard(
                            firstText: "3",
                            secondText: "Super Beats",
                            icon: Icon(
                              Icons.thumb_up,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                        ProfileInfoBigCard(
                          firstText: "8",
                          secondText: "Missed Beats",
                          icon: Icon(
                            Icons.trending_down,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        ProfileInfoBigCard(
                          firstText: "58",
                          secondText: "Profile Views",
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.redAccent,
                          ),
                        ),
                        ProfileInfoBigCard(
                          firstText: "8",
                          secondText: "Heart Breaks",
                          icon: Icon(
                            Icons.mood_bad,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: screenHeight * (4 / 9) - 80 / 2,
          left: 16.0,
          right: 16.0,
          child: Container(
            height: 80.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                ProfileInfoCard(
                  firstText: "70%",
                  secondText: "Completed",
                ),
                SizedBox(
                  width: 10,
                ),
                //ProfileInfoCard(
                //hasImage: true,
                //imagePath: "images/level.png",
                //),
                SizedBox(
                  width: 10,
                ),
                ProfileInfoCard(
                  firstText: "Tier",
                  secondText: "5",
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
