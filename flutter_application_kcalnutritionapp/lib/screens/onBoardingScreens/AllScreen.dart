
import 'package:flutter/material.dart';


class firstScreen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          // margin: EdgeInsets.only(top:0, bottom: 0),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset('assets/onBoard1.png', 
                width: 250, 
                height: 250,
                fit: BoxFit.fill,
              ),
          ),
        ),
        Container(

          margin: EdgeInsets.only(bottom: 10),

          child: 
            Text("Eat Healthy",
              style: TextStyle(
                fontFamily: 'rounded(2)',
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.w900
              ),
            )
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20.0),
          child: Container(
            margin: EdgeInsets.only(bottom: 10),
            child: 
              Text("Maintaining good health should be the primary focus of everyone.",
                style: TextStyle(
                  fontFamily: 'DuruSans',
                  fontSize: 21,
                  color: Colors.grey[400],
                  
                ),
                textAlign: TextAlign.center,
              ),
          ),
        )
        
      ]
    );
  }
}



class secondScreen extends StatelessWidget{
  
 
  @override
  Widget build(BuildContext context){
    return Column(
       children: [
         Container(

          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset('assets/onBoard2.png', 
                width: 250, 
                height: 250,
                fit: BoxFit.fill,
              ),
          ),   
            
        ),

        Container(

          margin: EdgeInsets.only(bottom: 10),

          child: 
            Text("Healthy Recipes",
              style: TextStyle(
                fontFamily: 'rounded(2)',

                fontSize: 30, color: Colors.black, fontWeight: FontWeight.w900

              ),
            )
        ),

        Container(
          padding: const EdgeInsets.only(left: 20.0,right: 20.0),
          margin: EdgeInsets.only(bottom: 10),
          child: 
            Text("Browse thousands of healthy recipes from all over the world.",
              style: TextStyle(
                  fontFamily: 'DuruSans',
                  fontSize: 21,
                  color: Colors.grey[400],
                  
                ),
                textAlign: TextAlign.center,
          )
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

          // margin: EdgeInsets.only(bottom: 20),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset('assets/onBoard3.png', 
                width: 250, 
                height: 250,
                fit: BoxFit.fill,
              ),
          ),

            
        ),
        Container(

          margin: EdgeInsets.only(bottom: 10),

          child: 
            Text("Track Your Health",
              style: TextStyle(
                fontFamily: 'rounded(2)',

                fontSize: 30, color: Colors.black, fontWeight: FontWeight.w900
              ),
            )
        ),

        Container(
          padding: const EdgeInsets.only(left: 20.0,right: 20.0),
          margin: EdgeInsets.only(bottom: 10),
          child: 
            Text("With amazing inbuilt tools you can track your progress.",
              style: TextStyle(
                fontFamily: 'DuruSans',
                fontSize: 22,
                color: Colors.grey[400],
              ),
              textAlign: TextAlign.center,
            ),
        )

       ],
    );
  }
}


