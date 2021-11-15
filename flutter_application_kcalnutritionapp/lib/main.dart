

import 'package:flutter/material.dart';
import 'package:flutter_application_kcalnutritionapp/layout/defaultLayoutPages/favorites.dart';
import 'package:flutter_application_kcalnutritionapp/screens/landing_page.dart';
import 'package:flutter_application_kcalnutritionapp/screens/onBoarding.dart';
import 'package:flutter_application_kcalnutritionapp/screens/login.dart';
import 'package:flutter_application_kcalnutritionapp/layout/defaultLayout.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  
  initialRoute: "/defaultLayout",
  routes:{
    '/':(context) =>landingPage(),
    '/onBoarding':(context) => onBoardingPage(),
    '/login':(context) => login(),
    '/favorites':(context) => favorites(),
    '/defaultLayout':(context) => defaultLayout(),
    // '/login':(context) => login(),
  },
    
));

// class MainScreen extends StatelessWidget {
//   const MainScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Main Screen'),
//       ),
//       body: GestureDetector(
//         onTap: () {
//           Navigator.push(context, MaterialPageRoute(builder: (context) {
//             return const DetailScreen();
//           }));
//         },
//         child: Hero(
//           tag: 'imageHero',
//           child: Image.network(
//             'https://picsum.photos/250?image=9',
//           ),
//         ),
//       ),
//     );
//   }
// }

// class DetailScreen extends StatelessWidget {
//   const DetailScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         margin: EdgeInsets.only(top: 100.0),
//         child: Column(
//           children: [
            
//             Text('Hi Sean Gwapo'),
//             GestureDetector(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               child: Center(
//                 child: Hero(
//                   tag: 'imageHero',
//                   child: Image.network(
//                     'https://picsum.photos/250?image=9',
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }