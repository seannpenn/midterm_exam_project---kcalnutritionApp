<<<<<<< HEAD

=======
>>>>>>> main
import 'package:flutter/material.dart';


class firstScreen extends StatelessWidget{
  
 
  @override
  Widget build(BuildContext context){
    return Column(
<<<<<<< HEAD
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
=======
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset('assets/onBoard1.png'),
>>>>>>> main
          ),  
            
        ),
        Container(
<<<<<<< HEAD
          margin: EdgeInsets.only(bottom: 10),
=======
          margin: EdgeInsets.only(bottom: 20),
>>>>>>> main
          child: 
            Text("Eat Healthy",
              style: TextStyle(
                fontFamily: 'rounded(2)',
<<<<<<< HEAD
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.w900
              ),
            )
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0,right: 5.0),
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
=======
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
>>>>>>> main
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
<<<<<<< HEAD
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset('assets/onBoard2.png', 
                width: 250, 
                height: 250,
                fit: BoxFit.fill,
              ),
          ),   
=======
          margin: EdgeInsets.only(bottom: 20),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset('assets/onBoard2.png'),
          ),  
>>>>>>> main
            
        ),

        Container(
<<<<<<< HEAD
          margin: EdgeInsets.only(bottom: 10),
=======
          margin: EdgeInsets.only(bottom: 20),
>>>>>>> main
          child: 
            Text("Healthy Recipes",
              style: TextStyle(
                fontFamily: 'rounded(2)',
<<<<<<< HEAD
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.w900
=======
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold
>>>>>>> main
              ),
            )
        ),

        Container(
<<<<<<< HEAD
          margin: EdgeInsets.only(bottom: 10),
          child: 
            Text("Browse thousands of healthy recipes from all over the world.",
              style: TextStyle(
                fontFamily: 'DuruSans',
                fontSize: 22,
=======
          child: 
            Text("Browse thousands of healthy recipes from all over the world.",
              style: TextStyle(
                fontSize: 25,
>>>>>>> main
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
<<<<<<< HEAD
          // margin: EdgeInsets.only(bottom: 20),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset('assets/onBoard3.png', 
                width: 250, 
                height: 250,
                fit: BoxFit.fill,
              ),
=======
          margin: EdgeInsets.only(bottom: 20),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset('assets/onBoard3.png'),
>>>>>>> main
          ),  
            
        ),
        Container(
<<<<<<< HEAD
          margin: EdgeInsets.only(bottom: 10),
=======
          margin: EdgeInsets.only(bottom: 20),
>>>>>>> main
          child: 
            Text("Track Your Health",
              style: TextStyle(
                fontFamily: 'rounded(2)',
<<<<<<< HEAD
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.w900
              ),
            )
        ),

        Container(
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
=======
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold
              ),
            )
        ),
>>>>>>> main
       ],
    );
  }
}


