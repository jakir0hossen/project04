import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project04/screen/main%20manu/calander.dart';
import 'package:project04/screen/main%20manu/mainScreen.dart';



import 'package:project04/screen/onboarding/pinVerificationScreen.dart';
import 'package:project04/screen/onboarding/setPasswordScreen.dart';
import 'package:project04/screen/profile/ProfilePage.dart';
import 'navbar.dart';
import 'screen/onboarding/emailVerificationScreen.dart';
import 'screen/onboarding/loginScreen.dart';
import 'screen/onboarding/registrationScreen.dart';
import 'screen/onboarding/splashScreen.dart';


void main() {


  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blueAccent),
      title: "Click A Event",
      initialRoute: '/Calendar',
      routes: {
        '/splashScreen':(context)=> splashScreen(),
        '/login':(context)=> loginScreen(),
        '/registration':(context)=> registrationScreen(),
        '/emailVerification':(context)=> emailVerificationScreen(),
        '/setPassword':(context)=> setPasswordScreen(),
        '/pinVerification':(context)=> pinVerificationScreen(),
        '/profilePage':(context)=> ProfilePage(),
        '/mainScreen':(context)=> mainScreen(),
        '/Navbar':(context)=> Navbar(),
        '/Calendar':(context)=> Calendar(),


      },
    );
  }

}