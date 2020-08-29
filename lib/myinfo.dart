import 'package:flutter/material.dart';
import 'radialprogress.dart';
import 'roundedimage.dart';
import 'textstyle.dart';

class MyInfo extends StatelessWidget {
  static const String id = 'myinfo';
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RadialProgress(
            child: RoundedImage(
              imagePath: 'images/selfie.jpeg',
              size: Size.fromWidth(130.0),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Garca Soh", style: blueNameTextStyle),
              Text(", 27", style: blueNameTextStyle),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Singapore", style: blueSubHeadingTextStyle),
              Icon(
                Icons.location_on,
                color: Colors.blueAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
