import 'package:flutter/material.dart';


class firstScreen extends StatelessWidget{
  
 
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset('assets/onBoard1.png'),
          ),  
            
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: 
            Text("Eat Healthy",
              style: TextStyle(
                fontFamily: 'rounded(2)',
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold
              ),
            )
        ),
        Container(
          child: 
            Text("Maintaining good health should be the primary focus of everyone.",
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey[400],
              ),
              textAlign: TextAlign.center,
            ),
        )
       ],
    );
  }
}

class secondScreen extends StatelessWidget{
  
 
  @override
  Widget build(BuildContext context){
    return Column(
       children: [
         Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset('assets/onBoard2.png'),
          ),  
            
        ),

        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: 
            Text("Healthy Recipes",
              style: TextStyle(
                fontFamily: 'rounded(2)',
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold
              ),
            )
        ),

        Container(
          child: 
            Text("Browse thousands of healthy recipes from all over the world.",
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey[400],
              ),
              textAlign: TextAlign.center,
            ),
        )
       ],
    );
  }
}

class thirdScreen extends StatelessWidget{
  
 
  @override
  Widget build(BuildContext context){
    return Column(
       children: [
         Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset('assets/onBoard3.png'),
          ),  
            
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: 
            Text("Track Your Health",
              style: TextStyle(
                fontFamily: 'rounded(2)',
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold
              ),
            )
        ),
       ],
    );
  }
}


