import 'package:flutter/material.dart';
import 'package:korean_blind_dating/myinfo.dart';
import 'package:korean_blind_dating/profilepage.dart';
import 'WelcomeScreen.dart';
import 'login.dart';
import 'registration_screen.dart';
import 'chatscreen.dart';

void main() => runApp(KoreanBlindDating());

class KoreanBlindDating extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        MyInfo.id: (context) => MyInfo(),
        ProfilePage.id: (context) => ProfilePage(),
      },
    );
  }
}