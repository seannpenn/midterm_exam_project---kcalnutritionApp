

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_application_kcalnutritionapp/screens/onBoardingScreens/AllScreen.dart';

class onBoardingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context)=> SafeArea(

    
    child: IntroductionScreen(
      
      pages: [
        
        PageViewModel(
          titleWidget: customTitleText(),// body: "Here you can write the description of the page, to explain someting...",
          bodyWidget: firstScreen(),
          footer: customButton(),
      
        ),
        PageViewModel(
          titleWidget: customTitleText(),
          bodyWidget: secondScreen(),
          footer: customButton(),
          
        ),
        PageViewModel(
          titleWidget: customTitleText(),
          bodyWidget: thirdScreen(),
          footer: customButton(),
          
        ),
      ],

      showSkipButton: false,
      showNextButton: false,
      next: Icon(Icons.arrow_forward),
      skip: const Text("Skip"),
      // done: Text('Read', style: TextStyle(fontWeight: FontWeight.w600)), 
      done: Text('Read'), 
      onDone: () => (){},

      dotsDecorator: const DotsDecorator(
            size: Size(10.0, 10.0), //size of dots
            color: Colors.grey, //color of dots
            activeSize: Size(22.0, 10.0),
            activeColor: Colors.grey, //color of active dot
            activeShape: RoundedRectangleBorder( //shave of active dot
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
      
      )
      ) 
  );

}
  // Widget introImage(String assetName) {
  // //widget to show intro image
  //   return Align(
  //     child: Image.asset('$assetName', width: 350.0),
  //     alignment: Alignment.center,
  //   );
  // }

class customButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          // elevation: 8,
          borderRadius: BorderRadius.circular(20),
          color: Colors.redAccent[100],
          child: MaterialButton(
            minWidth: 350,
            height: 70,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: (){}, // add this here
            child: Text('Get Started',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.white)
              ),           
          ),    
        ),

        
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Center(
              
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Already have account? ',
                    style: TextStyle(
                      fontFamily: 'DuruSans',
                      color: Colors.grey[400],
                      fontSize: 15
                    ),
                  ),
                  TextSpan(
                      text: 'Login',
                      style: TextStyle(
                        fontFamily: 'DuruSans',
                        color: Colors.green,
                        fontSize: 15,
                        fontWeight: FontWeight.w600
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, '/login');
                          print('Login Text Clicked');
                        }),
                ]),
              )
            ),
          )
          
      ],
    );
  }
}
class customTitleText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(0),
      child: 
        Text("kcal",
          style: 
            TextStyle(
              color: Colors.green,
              fontFamily: 'rounded(2)',
              fontSize: 50,
            ),
        ),
    );
  }
}
