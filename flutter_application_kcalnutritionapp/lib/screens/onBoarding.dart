
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_application_kcalnutritionapp/screens/onBoardingScreens/AllScreen.dart';


class onBoardingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context)=> SafeArea(

    
    child: IntroductionScreen(
      
      pages: [
        
        PageViewModel(
          titleWidget: customTitleText(),
          // body: "Here you can write the description of the page, to explain someting...",
          bodyWidget: firstScreen(),
          // image: introImage('assets/onBoard1assets/onBoard1.png.png'),
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
      done: Text('Read', style: TextStyle(fontWeight: FontWeight.w600)), 
      onDone: () => (){},
      

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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          // margin: EdgeInsets.only(top: 80.0, bottom: 0),
          child: 
              Material(
              // elevation: 8,
              
              borderRadius: BorderRadius.circular(30),
              color: Colors.redAccent[100],
              child: MaterialButton(
                minWidth: 350,
                height: 70,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                onPressed: (){}, // add this here
                child: Text('Get Started',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30)
                        .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                        
              ),
              
            ),
        ),

        Text('Already have an account? Log In',
        style: TextStyle(
          fontSize: 25
        ),)
      ],
    );
    
  }
}
class customTitleText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
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