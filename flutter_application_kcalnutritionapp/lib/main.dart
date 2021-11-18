

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_kcalnutritionapp/layout/defaultLayoutPages/favorites/favorites.dart';
import 'package:flutter_application_kcalnutritionapp/screens/landing_page.dart';
import 'package:flutter_application_kcalnutritionapp/screens/onBoarding.dart';
// import 'package:flutter_application_kcalnutritionapp/screens/login.dart';
import 'package:flutter_application_kcalnutritionapp/layout/defaultLayout.dart';

// void main() => runApp(MaterialApp(
//   
  

//   initialRoute: "/defaultLayout",

//     routes:{
//       '/':(context) =>landingPage(),
//       '/onBoarding':(context) => onBoardingPage(),
//       '/login':(context) => login(),
//       '/favorites':(context) => favorites(),
//       '/defaultLayout':(context) => defaultLayout(),
//       // '/login':(context) => login(),
//     },
    
//   )
// );
void main(){
  runApp(MyApp(
    
  ));
}

class MyApp extends StatelessWidget{
  @override
  
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}



class splashScreen extends StatefulWidget {
  const splashScreen({ Key? key }) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => defaultLayout()));
      }
    );
    
    
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: landingPage(),
    );
  }
}
