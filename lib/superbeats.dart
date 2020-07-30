import 'package:flutter/material.dart';
import 'package:heart2heart_app/colors.dart';
import 'package:heart2heart_app/narrowappbar.dart';
import 'package:heart2heart_app/textstyle.dart';

class SuperBeatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: NarrowAppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back),
        ),
        trailing: Text(
          "Select",
          style: actionMenuStyle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Super Beats",
              style: headingTextStyle.copyWith(color: Colors.blue.shade900),
            ),
          ),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                  hintStyle:
                      blueSubHeadingTextStyle.copyWith(color: hintTextColor),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Text(
                  "Super Beats",
                  style: subTitleStyle.copyWith(color: Colors.black),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  width: 25.0,
                  height: 25.0,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                  child: Center(
                    child: Text(
                      "3",
                      style:
                          blueSubHeadingTextStyle.copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  "1h",
                  style: subTitleStyle.copyWith(color: Colors.black),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: ListTile(
                    title: Text(
                      "James Tan",
                      style: titleStyle,
                    ),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.blueAccent,
                        ),
                        Text(
                          "  3 kilometers",
                          style: blueSubHeadingTextStyle.copyWith(
                              color: Colors.black, fontSize: 14),
                        ),
                      ],
                    ),
                    leading: ClipOval(
                      child: Image.asset(
                        "images/selfie2.jpeg",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    trailing: SizedBox(
                      width: 75,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.tealAccent.shade400,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "ONLINE",
                                  style: blueSubHeadingTextStyle.copyWith(
                                      color: Colors.teal, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.thumb_up,
                              color: Colors.redAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
