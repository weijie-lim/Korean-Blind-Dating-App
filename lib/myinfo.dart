import 'package:flutter/material.dart';
import 'package:heart2heart_app/radialprogress.dart';
import 'package:heart2heart_app/roundedimage.dart';
import 'package:heart2heart_app/textstyle.dart';

class MyInfo extends StatelessWidget {
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
