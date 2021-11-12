

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class onBoardingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context)=> SafeArea(
    child: IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Title of first page",
          body: "Here you can write the description of the page, to explain someting...",
          
        ),
        PageViewModel(
          title: 'Krystel gwapa kaayo',
          body: 'Iloveyou Krystel',
          
        ),
        PageViewModel(
          title: 'Krystel gwapa kaayo',
          body: 'Iloveyou Krystel',
          
        ),
      ],
      showSkipButton: false,
      showNextButton: false,
      next: Icon(Icons.arrow_forward),
      skip: const Text("Skip"),
      done: Text('Read', style: TextStyle(fontWeight: FontWeight.w600)), 
      onDone: () => (){},
      
  //     showSkipButton: true,
  //     skip: const Icon(Icons.skip_next),
  //     next: const Icon(Icons.next),
  //     done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
  //     dotsDecorator: DotsDecorator(
  //     size: const Size.square(10.0),
  //     activeSize: const Size(20.0, 10.0),
  //     activeColor: theme.accentColor,
  //     color: Colors.black26,
  //     spacing: const EdgeInsets.symmetric(horizontal: 3.0),
  //     activeShape: RoundedRectangleBorder(
  //     borderRadius: BorderRadius.circular(25.0)
  //   )
  // ),
    )
  );
  
}